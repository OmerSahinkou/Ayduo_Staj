library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AccelRom is
    Port (
        clk_i      : in  STD_LOGIC;
        lut_addr : in  STD_LOGIC_VECTOR(6 downto 0); 
        pwm_val  : out STD_LOGIC_VECTOR(7 downto 0)  
    );
end AccelRom;

architecture Behavioral of AccelRom is
    type rom_type is array (0 to 127) of integer range 0 to 255;
    
    constant ACCEL_TO_PWM_LUT : rom_type := (
        0,   3,   7,  10,  13,  16,  20,  23,  26,  29,  32,  36,  39,  42,  45,  48,
        51,  54,  57,  60,  64,  67,  70,  73,  76,  79,  82,  85,  88,  91,  94,  97,
        100, 103, 106, 109, 112, 115, 118, 121, 124, 127, 131, 134, 137, 140, 143, 146,
        149, 152, 155, 158, 161, 164, 167, 170, 173, 176, 179, 182, 185, 188, 191, 195,
        198, 201, 204, 207, 210, 213, 216, 219, 223, 226, 229, 232, 235, 239, 242, 245,
        248, 251, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
        255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
        255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255
    );
begin

    process(clk_i)
    begin
        if rising_edge(clk_i) then
            pwm_val <= std_logic_vector(to_unsigned(ACCEL_TO_PWM_LUT(to_integer(unsigned(lut_addr))), 8));
        end if;
    end process;

end Behavioral;
