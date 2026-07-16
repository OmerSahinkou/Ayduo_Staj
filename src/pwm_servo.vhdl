library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity pwm_servo is
    Generic (
        CLK_FREQ : integer := 50_000_000  
    );
    Port ( 
        clk_i : in STD_LOGIC;
        rst_n_i : in STD_LOGIC;
        servo_angle : in STD_LOGIC_VECTOR (7 downto 0);
        pwm_out : out STD_LOGIC
    );
end pwm_servo;

architecture Behavioral of pwm_servo is

    signal counter : unsigned(19 downto 0) := (others => '0');
    signal pulse_width : unsigned(19 downto 0);
    
begin

    pulse_width <= 50_000 + (unsigned(servo_angle) * 196) / 256;
    
    process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            pwm_out <= '0';
            counter <= (others => '0');
        elsif rising_edge(clk_i) then
            
            if counter >= 1_000_000 then
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
    
end Behavioral;
