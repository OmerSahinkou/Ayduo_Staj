----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/14/2026 11:37:36 AM
-- Module Name: uart_rx - rtl
-- First Version
----------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity uart_rx is
    generic (
        CLK_FREQ   : integer := 33_333_333;  
        BAUD_RATE  : integer := 115_200;
        DATA_WIDTH : integer := 8
    );
    port (
        clk_c    : in  std_logic;
        rst_n    : in  std_logic;
        rx       : in  std_logic;
        rx_data  : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        rx_valid : out std_logic
    );
end entity uart_rx;

architecture rtl of uart_rx is
    constant BIT_PERIOD : integer := CLK_FREQ / BAUD_RATE;  -- 289
    constant BIT_COUNTER_WIDTH : integer := integer(ceil(log2(real(BIT_PERIOD))));
    
    type state_t is (IDLE, START_BIT, DATA_BITS, STOP_BIT);
    signal state : state_t := IDLE;
    
    signal bitcounter  : unsigned(BIT_COUNTER_WIDTH - 1 downto 0) := (others => '0');
    signal bit_idx     : unsigned(3 downto 0) := (others => '0');
    signal data_buffer : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal rx_sync1, rx_sync2 : std_logic := '1';  
    
begin
    process(clk_c)
    begin
        if rising_edge(clk_c) then
            if rst_n = '0' then
                state       <= IDLE;
                bit_idx     <= (others => '0');
                bitcounter  <= (others => '0');
                rx_valid    <= '0';
                rx_data     <= (others => '0');
                data_buffer <= (others => '0');
                rx_sync1    <= '1';
                rx_sync2    <= '1';
            else
                rx_sync1 <= rx;
                rx_sync2 <= rx_sync1;
                
                case state is
                    when IDLE =>
                        rx_valid <= '0';
                        bitcounter <= (others => '0');
                        if rx_sync2 = '0' then  
                            state <= START_BIT;
                        end if;
                        
                    when START_BIT =>
                        if bitcounter = (BIT_PERIOD / 2) - 1 then 
                            bitcounter <= (others => '0');
                            if rx_sync2 = '0' then  
                                state <= DATA_BITS;
                                bit_idx <= (others => '0');
                            else
                                state <= IDLE;
                            end if;
                        else
                            bitcounter <= bitcounter + 1;
                        end if;
                        
                    when DATA_BITS =>
                        if bitcounter = BIT_PERIOD - 1 then
                            bitcounter <= (others => '0');
                            data_buffer(to_integer(bit_idx)) <= rx_sync2;  
                            
                            if bit_idx = DATA_WIDTH - 1 then
                                state <= STOP_BIT;
                            else
                                bit_idx <= bit_idx + 1;
                            end if;
                        else
                            bitcounter <= bitcounter + 1;
                        end if;
                        
                    when STOP_BIT =>
                        if bitcounter = BIT_PERIOD - 1 then
                            bitcounter <= (others => '0');
                            state <= IDLE;
                            rx_valid <= '1';
                            rx_data <= data_buffer;
                        else
                            bitcounter <= bitcounter + 1;
                        end if;
                        
                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

end architecture rtl;