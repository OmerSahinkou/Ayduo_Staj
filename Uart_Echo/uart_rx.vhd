library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use IEEE.numeric_std.all;

entity uart_tx is 
generic(
    CLK_FREQ    : integer := 50_000_000;
    BAUD_RATE   : integer := 115_200;
    DATA_WIDTH  : integer := 8
);
Port(
    clk_c       : in std_logic;
    rst_n       : in std_logic;
    tx_start    : in std_logic;
    tx_data     : in std_logic_vector(DATA_WIDTH - 1 downto 0);
    tx          : out std_logic;
    tx_busy     : out std_logic
);
end entity uart_tx; 

architecture rtl of uart_tx is
    constant BIT_LIMIT         : integer := CLK_FREQ / BAUD_RATE;
    constant BIT_COUNTER_WIDTH : integer := integer(ceil(log2(real(BIT_LIMIT))));
    constant BIT_IDX_WIDTH     : integer := integer(ceil(log2(real(DATA_WIDTH))));
    
    signal bitcounter  : unsigned(BIT_COUNTER_WIDTH - 1 downto 0) := (others => '0');
    signal bit_idx     : unsigned(BIT_IDX_WIDTH - 1 downto 0)     := (others => '0');
    signal data_buffer : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    
    type state_t is (IDLE, START_BIT, DATA_BITS, STOP_BIT);
    signal state : state_t := IDLE;
begin

    process(clk_c, rst_n)
    begin
        if rst_n = '0' then
            state       <= IDLE;
            bit_idx     <= (others => '0');
            bitcounter  <= (others => '0');
            tx          <= '1';
            tx_busy     <= '0';
            data_buffer <= (others => '0');
        elsif rising_edge(clk_c) then
            case state is 
                when IDLE =>
                    if tx_start = '1' then
                        state       <= START_BIT;
                        tx_busy     <= '1';
                        tx          <= '0';
                        data_buffer <= tx_data;
                        bitcounter  <= (others => '0');
                        bit_idx     <= (others => '0');
                    else
                        tx          <= '1';
                        tx_busy     <= '0';
                    end if;
                    
                when START_BIT =>
                    if bitcounter < BIT_LIMIT - 1 then
                        bitcounter <= bitcounter + 1;
                    else
                        bitcounter <= (others => '0');
                        state      <= DATA_BITS;
                        tx         <= data_buffer(0); -- 0. biti göndererek başla
                    end if;     
                    
                when DATA_BITS =>
                    if bitcounter < BIT_LIMIT - 1 then
                        bitcounter <= bitcounter + 1;
                    else
                        bitcounter <= (others => '0');
                        
                        if bit_idx = DATA_WIDTH - 1 then
                            state <= STOP_BIT;
                            tx    <= '1';
                        else
                            bit_idx <= bit_idx + 1;
                            -- VHDL'de sinyaller process sonunda güncellendiği için 
                            -- sıradaki biti göndermek adına güncel indeksi hedefliyoruz
                            tx <= data_buffer(to_integer(bit_idx + 1)); 
                        end if;
                    end if;                    
                    
                when STOP_BIT =>
                    if bitcounter < BIT_LIMIT - 1 then
                        bitcounter <= bitcounter + 1;
                    else
                        bitcounter <= (others => '0');
                        state      <= IDLE;
                        tx_busy    <= '0';
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end architecture rtl;