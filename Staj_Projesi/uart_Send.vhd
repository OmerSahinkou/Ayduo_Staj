----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ömer Şahin
-- 
-- Create Date: 08/03/2026 10:37:36 AM
-- Module Name: uart_Send - rtl
-- First Version
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity uart_Send is
    port (
        clk_i   : in std_logic;
        rst_n_i : in std_logic;

        -- UART
        tx_busy_sig  : in STD_LOGIC;
        tx_start_sig : out STD_LOGIC;
        tx_data_sig  : out STD_LOGIC_VECTOR(7 downto 0);
        
        -- FIFO 
        rd_en_i      : out STD_LOGIC;
        rdata        : in STD_LOGIC_VECTOR(7 downto 0);
        empty_o      : in STD_LOGIC                    
    );
end entity;

architecture rtl of uart_Send is

    type t_uart_read_state is (ST_CHECK_FIFO, ST_WAIT_FIFO, ST_START_UART, ST_WAIT_UART);
    signal uart_read_state : t_uart_read_state := ST_CHECK_FIFO;

begin

    uart_send_fifo: process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then 
            tx_start_sig    <= '0';
            tx_data_sig     <= (others => '0');
            rd_en_i         <= '0';
            uart_read_state <= ST_CHECK_FIFO;
        elsif rising_edge(clk_i) then

            tx_start_sig <= '0';
            rd_en_i      <= '0';

            case uart_read_state is
                when ST_CHECK_FIFO => 
                    if(tx_busy_sig = '0' and empty_o = '0') then 
                        rd_en_i         <= '1'; 
                        uart_read_state <= ST_WAIT_FIFO;
                    end if;

                when ST_WAIT_FIFO =>
                    uart_read_state <= ST_START_UART;

                when ST_START_UART =>
                    tx_start_sig    <= '1';
                    tx_data_sig     <= rdata; 
                    uart_read_state <= ST_WAIT_UART;

                when ST_WAIT_UART =>
                    if(tx_busy_sig = '1') then 
                        uart_read_state <= ST_CHECK_FIFO;
                    end if;

                when others => 
                    uart_read_state <= ST_CHECK_FIFO;
            end case;
        end if;
    end process uart_send_fifo;

end architecture;