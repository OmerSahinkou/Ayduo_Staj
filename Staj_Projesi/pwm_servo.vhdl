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
        servo_angle : in  STD_LOGIC_VECTOR (7 downto 0); -- Güvenli aralık: 0 - 180
        pwm_out     : out STD_LOGIC
    );
end entity pwm_servo;

architecture Behavioral of pwm_servo is

    -- 20 ms periyot için maksimum sayaç sınırı (666_667 - 1)
    constant PERIOD_MAX : unsigned(19 downto 0) := to_unsigned(666_666, 20);
    
    signal counter     : unsigned(19 downto 0) := (others => '0');
    signal pulse_width : unsigned(19 downto 0) := to_unsigned(16_666, 20);
    signal safe_angle  : unsigned(7 downto 0);
    
begin

    -- Giriş koruması: Açı 180'den büyükse 180'e sabitle (Motor güvenliği için)
    safe_angle <= unsigned(servo_angle) when (unsigned(servo_angle) <= 180) else to_unsigned(180, 8);

    -- Yeni çarpan (185): 0° = 1.0 ms (33333 çevrim), 180° = 2.0 ms (66633 çevrim)
    pulse_width <= to_unsigned(16_666, 20) + resize(safe_angle * to_unsigned(370, 9), 20);

    process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            counter <= (others => '0');
            pwm_out <= '0';
        elsif rising_edge(clk_i) then
            
            -- Zamanlayıcı Sayacı
            if counter >= PERIOD_MAX then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;
            
            -- PWM Çıkış Üretimi
            if counter < pulse_width then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
            
        end if;
    end process;
    
end architecture Behavioral;
