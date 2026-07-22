library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GyroComplementaryFilter is
    Port (
        clk_i        : in  STD_LOGIC;
        data_valid_out : in  STD_LOGIC;
        gz_i         : in  STD_LOGIC_VECTOR(15 downto 0);
        accel_x_i    : in  STD_LOGIC_VECTOR(15 downto 0);
        accel_y_i    : in  STD_LOGIC_VECTOR(15 downto 0);
        yaw_o        : out STD_LOGIC_VECTOR(15 downto 0)
    );
end GyroComplementaryFilter;

architecture Behavioral of GyroComplementaryFilter is
    signal yaw_accumulator : signed(31 downto 0) := (others => '0');
    signal yaw_filtered    : signed(15 downto 0) := (others => '0');
begin
    process(clk_i)
        variable gz_signed : signed(15 downto 0);
    begin
        if rising_edge(clk_i) then
            gz_signed := signed(gz_i);

            if data_valid_out = '1' then
                if gz_signed > 5 or gz_signed < -5 then
                    yaw_accumulator <= yaw_accumulator + gz_signed;
                end if;
            end if;

            yaw_filtered <= yaw_accumulator(23 downto 8);
        end if;
    end process;

    yaw_o <= std_logic_vector(yaw_filtered);

end Behavioral;