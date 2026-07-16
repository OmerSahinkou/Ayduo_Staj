library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity top is 
    generic(
        CLK_FREQ    : integer := 33_333_333;
        BAUD_RATE   : integer := 115_200;
        DATA_WIDTH  : integer := 8
    );
    Port(
        clk_c       : in std_logic;
        rst_n       : in std_logic;
        tx          : out std_logic;
        button      : in std_logic
    );
end entity top; 

architecture rtl of top is
    signal tx_start : std_logic := '0';
    signal tx_data  : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal tx_busy  : std_logic := '0';
    
    signal clk_out  : std_logic := '0';
    signal clk_out_prev : std_logic := '0';
    
    signal button_sync : std_logic_vector(2 downto 0) := "111";
    signal button_clean : std_logic := '1';
    
    type state_t is (IDLE, Transfer, Stop);
    signal state : state_t := IDLE;

begin

    uart_tx_i: entity work.uart_tx
    GENERIC MAP(
        CLK_FREQ     => CLK_FREQ,
        BAUD_RATE    => BAUD_RATE,
        DATA_WIDTH   => DATA_WIDTH
    )
    PORT MAP(
        clk_c       => clk_c,
        rst_n       => rst_n,
        tx_start    => tx_start,
        tx_data     => tx_data,
        tx          => tx,
        tx_busy     => tx_busy
    );

    -- Clock Divider Modülü (Verilog)
    clk_divider_i: entity work.clk_divider
    GENERIC MAP(
        CLK_IN_FREQ     => CLK_FREQ,
        CLK_OUT_FREQ    => 5
    )
    PORT MAP(
        clk_in          => clk_c,
        rst_n           => rst_n,
        clk_out         => clk_out
    );
    
    process (clk_c) 
    begin
        if rst_n = '0' then
            tx_data <= (others => '0');
            tx_start <= '0';
            state <= IDLE;
            clk_out_prev <= '0';
            button_sync <= "111";
            button_clean <= '1';
        elsif rising_edge(clk_c) then
            button_sync <= button_sync(1 downto 0) & button;
            
            if button_sync = "000" then
                button_clean <= '0';
            elsif button_sync = "111" then
                button_clean <= '1';
            end if;
            
            clk_out_prev <= clk_out;
            tx_start <= '0';
            
            case state is
                when IDLE =>
                    tx_data <= x"40";
                    if button_clean = '0' then
                        state <= Transfer;
                    end if;
                    
                when Transfer =>
                    if clk_out = '1' and clk_out_prev = '0' then
                        if tx_busy = '0' then
                            tx_data <= std_logic_vector(unsigned(tx_data) + 1);
                            tx_start <= '1';
                            if unsigned(tx_data) = 240 then 
                                state <= Stop;
                            end if;
                        end if;
                    end if;
                    
                when Stop =>
                    if clk_out = '1' and clk_out_prev = '0' then
                        state <= IDLE;
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end architecture rtl;