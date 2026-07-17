----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/14/2026 11:37:36 AM
-- Design Name: 
-- Module Name: pwm_servo - Behavioral
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
use IEEE.numeric_std.all;

entity pwm_servo is
    Generic (
        CLK_FREQ : integer := 33_333_333  
    );
    Port ( 
        clk_i : in STD_LOGIC;
        rst_n_i : in STD_LOGIC;
        servo_angle : in STD_LOGIC_VECTOR (7 downto 0);
        pwm_out : out STD_LOGIC
    );
end entity pwm_servo;

architecture Behavioral of pwm_servo is

    signal counter : unsigned(19 downto 0) := (others => '0');
    signal pulse_width : unsigned(19 downto 0);
    
begin


    pulse_width <= to_unsigned(33_333, 20) + resize(unsigned(servo_angle) * to_unsigned(274, 10), 20);

    process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            pwm_out <= '0';
            counter <= (others => '0');
        elsif rising_edge(clk_i) then
            
            if counter >= 666_667 then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;
            
            if counter < pulse_width then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
            
        end if;
    end process;
    
end architecture Behavioral;