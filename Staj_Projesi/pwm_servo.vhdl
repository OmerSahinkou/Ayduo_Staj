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

    -- SG90 Servo: 50Hz (20ms)
    -- CLK_FREQ=33.33MHz, 20ms period = 666,667 cycle
    -- servo_angle: 0-255 → pulse_width: 1ms-2ms (33,333-66,666 cycle)
    -- Division by 256 is replaced with shift_right by 8 bits for strict VHDL-93 syntax compliance
    pulse_width <= to_unsigned(16_667, 20) + 
                   resize(shift_right(unsigned(servo_angle) * to_unsigned(66_667, 17), 8), 20);

    process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            pwm_out <= '0';
            counter <= (others => '0');
        elsif rising_edge(clk_i) then
            
            -- 20ms period (50Hz) = 666,667 cycles @ 33.33MHz
            if counter >= 666_667 then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;
            
            -- PWM output: high when counter < pulse_width
            if counter < pulse_width then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
            
        end if;
    end process;
    
end architecture Behavioral;