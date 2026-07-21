library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AccelToServo is
    Port (
        accel_x : in  STD_LOGIC_VECTOR(15 downto 0); 
        lut_addr: out STD_LOGIC_VECTOR(6 downto 0)   
    );
end AccelToServo;

architecture Behavioral of AccelToServo is
    signal signed_raw : signed(15 downto 0);
    signal clamped    : signed(15 downto 0);
    signal offsetted  : unsigned(15 downto 0);
begin

    signed_raw <= signed(accel_x);

    process(signed_raw)
    begin
        if signed_raw > 8192 then
            clamped <= to_signed(8192, 16);
        elsif signed_raw < -8192 then
            clamped <= to_signed(-8192, 16);
        else
            clamped <= signed_raw;
        end if;
    end process;

    offsetted <= unsigned(clamped + 8192);

    lut_addr <= std_logic_vector(offsetted(13 downto 7));

end Behavioral;
