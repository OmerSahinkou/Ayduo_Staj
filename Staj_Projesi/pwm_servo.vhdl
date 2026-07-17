library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_servo is
    Generic (
        CLK_FREQ : integer := 33_333_333  
    );
    Port ( 
        clk_i       : in  STD_LOGIC;
        rst_n_i     : in  STD_LOGIC;
        servo_angle : in  STD_LOGIC_VECTOR (7 downto 0);
        pwm_out     : out STD_LOGIC
    );
end entity pwm_servo;

architecture Behavioral of pwm_servo is

    -- 20 ms periyot için maksimum sayaç sınırı
    constant PERIOD_MAX : unsigned(19 downto 0) := to_unsigned(666_666, 20);
    
    signal counter     : unsigned(19 downto 0) := (others => '0');
    signal pulse_width : unsigned(19 downto 0) := to_unsigned(16_666, 20);
    
begin

    process (clk_i, rst_n_i)
        variable current_val : integer range 0 to 255;
        variable pw_calc     : integer range 0 to 100_000;
    begin
        if rst_n_i = '0' then
            counter <= (others => '0');
            pwm_out <= '0';
            pulse_width <= to_unsigned(16_666, 20);
        elsif rising_edge(clk_i) then
            
            current_val := to_integer(unsigned(servo_angle));
            
            pw_calc := 16666 + (current_val * 244);
            pulse_width <= to_unsigned(pw_calc, 20);
            
            if counter >= PERIOD_MAX then
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