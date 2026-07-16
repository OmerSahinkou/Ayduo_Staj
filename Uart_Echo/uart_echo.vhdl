library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity uart_echo is
    generic (
        CLK_FREQ   : integer := 33_333_333;
        BAUD_RATE  : integer := 115_200;
        DATA_WIDTH : integer := 8
    );
    port (
        clk_c    : in  std_logic;
        rst_n    : in  std_logic;
        rx       : in  std_logic;
        tx       : out std_logic
    );
end entity uart_echo;


architecture rtl of uart_echo is
    SIGNAL data_bus     : std_logic_vector(DATA_WIDTH - 1 downto 0);
    SIGNAL data_ready   : std_logic;
    SIGNAL tx_busy      : std_logic;
    SIGNAL tx_start_sig : std_logic;
    
    type state_t is (IDLE, WAIT_TX);
    signal state : state_t;
    
begin
    uart_rx_i: entity work.uart_rx
    GENERIC MAP(
        CLK_FREQ     => CLK_FREQ,
        BAUD_RATE    => BAUD_RATE,
        DATA_WIDTH   => DATA_WIDTH
    )
    PORT MAP(
        clk_c       => clk_c,
        rst_n       => rst_n,
        rx          => rx,
        rx_data     => data_bus,
        rx_valid    => data_ready
    );
    
    uart_tx_i: entity work.uart_tx
    GENERIC MAP(
        CLK_FREQ    => CLK_FREQ,
        BAUD_RATE   => BAUD_RATE,
        DATA_WIDTH  => DATA_WIDTH
    )
    PORT MAP(
        clk_c       => clk_c,
        rst_n       => rst_n,
        tx_start    => tx_start_sig,
        tx_data     => data_bus,
        tx          => tx,
        tx_busy     => tx_busy
    );
    
    -- Handshake FSM
    process(clk_c, rst_n)
    begin
        if rst_n = '0' then
            state <= IDLE;
            tx_start_sig <= '0';
        elsif rising_edge(clk_c) then
            case state is
                when IDLE =>
                    if data_ready = '1' then
                        tx_start_sig <= '1';
                        state <= WAIT_TX;
                    end if;
                    
                when WAIT_TX =>
                    tx_start_sig <= '0';
                    if tx_busy = '0' then
                        state <= IDLE;
                    end if;
            end case;
        end if;
    end process;
    
end rtl;
 