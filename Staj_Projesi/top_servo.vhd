----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2026 11:37:36 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_servo is
    Generic (
        CLK_FREQ  : integer := 33_333_333; 
        BAUD_RATE : integer := 115200
    );
    Port (
        clk_i   : in  STD_LOGIC;
        rst_n_i : in  STD_LOGIC;
        pwm_out : out STD_LOGIC;
        rx      : in  STD_LOGIC;
        tx      : out STD_LOGIC
    );
end top_servo;

architecture Behavioral of top_servo is

    -- PWM Modülü
    component pwm_servo is
        Generic ( CLK_FREQ : integer := 33_333_333 );
        Port ( 
            clk_i       : in STD_LOGIC;
            rst_n_i     : in STD_LOGIC;
            servo_angle : in STD_LOGIC_VECTOR (7 downto 0);
            pwm_out     : out STD_LOGIC
        );
    end component;

    -- UART TX Modülü
    component uart_tx is 
        generic(
            CLK_FREQ    : integer := 33_333_333;
            BAUD_RATE   : integer := 115_200;
            DATA_WIDTH  : integer := 8
        );
        port(
            clk_i       : in std_logic;
            rst_n_i     : in std_logic;
            tx_start    : in std_logic;
            tx_data     : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            tx          : out std_logic;
            tx_busy     : out std_logic
        );
    end component;
    
    -- UART RX Modülü
    component uart_rx is
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
    end component;
    
    -- Sinyaller
    signal angle_reg    : unsigned(7 downto 0) := (others => '0');
    signal tx_start_sig : std_logic := '0';
    signal tx_data_sig  : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_busy_sig  : std_logic;
    signal rx_data_sig  : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_valid     : std_logic;

begin

    -- PWM Servo Bağlantısı
    Inst_pwm_servo: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => std_logic_vector(angle_reg),
            pwm_out     => pwm_out
        );

    -- UART TX Bağlantısı
    Inst_uart_tx: uart_tx
        generic map (
            CLK_FREQ   => CLK_FREQ,
            BAUD_RATE  => BAUD_RATE,
            DATA_WIDTH => 8
        )
        port map (
            clk_i      => clk_i,
            rst_n_i    => rst_n_i,
            tx_start   => tx_start_sig,
            tx_data    => tx_data_sig,
            tx         => tx,      
            tx_busy    => tx_busy_sig   
        );
        
    -- UART RX Bağlantısı
    Inst_uart_rx: uart_rx
        generic map (
            CLK_FREQ   => CLK_FREQ,
            BAUD_RATE  => BAUD_RATE,
            DATA_WIDTH => 8
        )
        port map (
            clk_c      => clk_i,
            rst_n      => rst_n_i,
            rx         => rx,
            rx_data    => rx_data_sig,
            rx_valid   => rx_valid
        ); 

    process(clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            angle_reg    <= (others => '0');
            tx_start_sig <= '0';
        elsif rising_edge(clk_i) then
            tx_start_sig <= '0';  
            if rx_valid = '1' then
                angle_reg <= unsigned(rx_data_sig); 
                
                if tx_busy_sig = '0' then
                    tx_start_sig <= '1';
                end if;
            end if;
        end if;
    end process;
    
    tx_data_sig <= std_logic_vector(angle_reg);

end Behavioral;