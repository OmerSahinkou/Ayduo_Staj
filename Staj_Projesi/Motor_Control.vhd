----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ömer Şahin
-- 
-- Description: Saf Gimbal (Breadboard Fiziksel İkizi)
-- X (Uzun Kenar)  : Doğrudan f_axi_i (İvmeölçer)
-- Y (Kısa Kenar)  : Doğrudan f_ayi_i (İvmeölçer)
-- Z (Yere Paralel): Doğrudan f_gzi_i İntegrali (Jiroskop)
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Motor_Control is
    generic (
        DATA_WIDTH : INTEGER := 16
    );
    port (
        clk_i               : in std_logic;
        rst_n_i             : in std_logic;

        mpu_data_valid_in   : in STD_LOGIC;

        g_value             : in STD_LOGIC_VECTOR(7 downto 0);
        dps_value           : in STD_LOGIC_VECTOR(7 downto 0);

        f_axi_i             : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        f_ayi_i             : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        f_azi_i             : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        f_gxi_i             : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        f_gyi_i             : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        f_gzi_i             : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);

        angle_x             : out STD_LOGIC_VECTOR(7 downto 0);
        angle_y             : out STD_LOGIC_VECTOR(7 downto 0);
        angle_z             : out STD_LOGIC_VECTOR(7 downto 0);

        pwm_valid_x         : in STD_LOGIC;            
        pwm_valid_y         : in STD_LOGIC;            
        pwm_valid_z         : in STD_LOGIC                                        
    );
end entity;

architecture rtl of Motor_Control is
    
    signal hesap_temp_x : signed(15 downto 0);
    signal hesap_temp_y : signed(15 downto 0);
    signal hesap_temp_z : signed(15 downto 0);

    signal angle_raw_x  : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_y  : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_z  : unsigned(7 downto 0) := to_unsigned(127, 8);

    signal angle_pool   : signed(31 downto 0) := (others => '0');

    signal shift_accel  : natural range 0 to 15 := 6;
    signal shift_gyro   : natural range 0 to 15 := 8;

    -- Z ekseninin sapıtıp uçlara kilitlenmesini engelleyen sınır
    constant ANGLE_POOL_CLAMP : signed(31 downto 0) := to_signed(1_200_000, 32);

begin

    -- =====================================================================
    -- MPU6500 Shift (Hassasiyet) Ayarları
    -- =====================================================================
    process(g_value, dps_value)
    begin
        case g_value is
            when x"00" => shift_accel <= 7; 
            when x"08" => shift_accel <= 6; 
            when x"10" => shift_accel <= 5; 
            when x"18" => shift_accel <= 4; 
            when others => shift_accel <= 6; 
        end case;

        case dps_value is
            when x"00" => shift_gyro <= 10; 
            when x"08" => shift_gyro <= 9;  
            when x"10" => shift_gyro <= 8;  
            when x"18" => shift_gyro <= 7;  
            when others => shift_gyro <= 8;  
        end case;
    end process;

    -- =====================================================================
    -- SAF VE BİREBİR HESAPLAMA
    -- =====================================================================
    
    -- Uzun ve Kısa Kenar: IIR filtreden gelen ivmeölçer verisini direkt servoya veriyoruz.
    hesap_temp_x <= to_signed(127, 16) + shift_right(signed(f_axi_i), shift_accel);
    hesap_temp_y <= to_signed(127, 16) + shift_right(signed(f_ayi_i), shift_accel);
    
    -- Yere Paralel (Z): Loglarından hesapladığımız o ideal oran (shift_gyro + 5)
    hesap_temp_z <= to_signed(127, 16) + resize(shift_right(angle_pool, shift_gyro + 5), 16);

    -- =====================================================================
    -- DURUM MAKİNESİ (Sınırlandırma ve Z İntegrali)
    -- =====================================================================
    PD_Test : process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then 
            angle_raw_x <= to_unsigned(127, 8);
            angle_raw_y <= to_unsigned(127, 8);
            angle_raw_z <= to_unsigned(127, 8);
            angle_pool  <= (others => '0');
            
            angle_x <= (others => '0');
            angle_y <= (others => '0');
            angle_z <= (others => '0');
            
        elsif rising_edge(clk_i) then

            if pwm_valid_x = '1' then angle_x <= std_logic_vector(angle_raw_x); end if;
            if pwm_valid_y = '1' then angle_y <= std_logic_vector(angle_raw_y); end if;
            if pwm_valid_z = '1' then angle_z <= std_logic_vector(angle_raw_z); end if;

            if mpu_data_valid_in = '1' then 
                
                if to_integer(abs(signed(f_gzi_i))) > 15 then 
                    -- Jiroskop Z integre et (Motor sınırındaysa boşa şişmesin diye koruma eklendi)
                    if (signed(f_gzi_i) > 0 and hesap_temp_z < to_signed(255, 16)) then
                        angle_pool <= angle_pool + resize(signed(f_gzi_i), 32);
                    elsif (signed(f_gzi_i) < 0 and hesap_temp_z > to_signed(0, 16)) then
                        angle_pool <= angle_pool + resize(signed(f_gzi_i), 32);
                    end if;
                else
                    -- Hareketsizken Z eksenindeki ufak kaçakları sıfıra doğru erit
                    angle_pool <= angle_pool - shift_right(angle_pool, 16);
                end if;

                -- Z ekseni havuz kilitlenmesini engelleyen son güvenlik
                if angle_pool > ANGLE_POOL_CLAMP then
                    angle_pool <= ANGLE_POOL_CLAMP;
                elsif angle_pool < -ANGLE_POOL_CLAMP then
                    angle_pool <= -ANGLE_POOL_CLAMP;
                end if;
                
            end if;

            -- X Ekseni (0 - 255 Sınırlandırma)
            if hesap_temp_x > 255 then
                angle_raw_x <= to_unsigned(255, 8);
            elsif hesap_temp_x < 0 then
                angle_raw_x <= to_unsigned(0, 8);
            else
                angle_raw_x <= unsigned(hesap_temp_x(7 downto 0));
            end if;

            -- Y Ekseni (0 - 255 Sınırlandırma)
            if hesap_temp_y > 255 then
                angle_raw_y <= to_unsigned(255, 8);
            elsif hesap_temp_y < 0 then
                angle_raw_y <= to_unsigned(0, 8);
            else
                angle_raw_y <= unsigned(hesap_temp_y(7 downto 0));
            end if;

            -- Z Ekseni (0 - 255 Sınırlandırma)
            if hesap_temp_z > 255 then
                angle_raw_z <= to_unsigned(255, 8);
            elsif hesap_temp_z < 0 then 
                angle_raw_z <= to_unsigned(0, 8);  
            else 
                angle_raw_z <= unsigned(hesap_temp_z(7 downto 0));
            end if;

        end if;
    end process;

end architecture;