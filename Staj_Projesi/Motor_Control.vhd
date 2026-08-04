----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ömer Şahin
-- 
-- Create Date: 08/04/2026 13:58:36 AM
-- Module Name: Motor_Control - rtl
-- Revised Version: Gimbal / Aktif Stabilizasyon (Servo Kapalı Çevrim PID)
-- Fix Log:
--   [BUG-1] pwm_valid output atamaları rising_edge dışındaydı → latch oluşuyordu.
--           rising_edge bloğunun içine alındı.
--   [BUG-2] pid_out_x/y/z signal olduğu için pwm_calc'ta eski cycle değeri
--           kullanılıyordu. Variable'a çevrildi → same-cycle PID→PWM mapping.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use IEEE.numeric_std.all;

entity Motor_Control is
    generic (
        DATA_WIDTH : INTEGER := 16
    );
    port (
        clk_i   : in std_logic                                  ;
        rst_n_i : in std_logic                                  ;

        --veri hazır
        mpu_data_valid_in : in STD_LOGIC                        ;

        --filtreli giriş verileri
        f_axi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)  ;
        f_ayi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)  ;
        f_azi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)  ;
        f_gxi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)  ;
        f_gyi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)  ;
        f_gzi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)  ;

        --Kontrol Sonrası Çıkışlar
        angle_x : out STD_LOGIC_VECTOR(7 downto 0)              ;
        angle_y : out STD_LOGIC_VECTOR(7 downto 0)              ;
        angle_z : out STD_LOGIC_VECTOR(7 downto 0)              ;

        pwm_valid_x: in STD_LOGIC                               ;            
        pwm_valid_y: in STD_LOGIC                               ;            
        pwm_valid_z: in STD_LOGIC                                        
    );
end entity;

architecture rtl of Motor_Control is
    
    -- Açı Tahmin (Complementary Filter) Değişkenleri
    signal est_angle_x : signed(31 downto 0) := (others => '0');
    signal est_angle_y : signed(31 downto 0) := (others => '0');
    signal est_angle_z : signed(31 downto 0) := (others => '0');

    -- İntegral Havuzları
    signal integral_x : signed(31 downto 0) := (others => '0');
    signal integral_y : signed(31 downto 0) := (others => '0');
    signal integral_z : signed(31 downto 0) := (others => '0');

    -- Sensör Verilerinin İşlenmiş Hali
    signal accel_scaled_x : signed(31 downto 0) := (others => '0');
    signal accel_scaled_y : signed(31 downto 0) := (others => '0');

    -- PWM Çıkış Kayıtları (Merkez nokta 127)
    signal angle_raw_x  : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_y  : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_z  : unsigned(7 downto 0) := to_unsigned(127, 8);

begin

    -- İvme verilerini açı referansı için ölçeklendiriyoruz (concurrent)
    accel_scaled_x <= shift_left(resize(signed(f_axi_i), 32), 2);
    accel_scaled_y <= shift_left(resize(signed(f_ayi_i), 32), 2);

    Controller : process (clk_i, rst_n_i)
        variable err_x, err_y, err_z         : signed(31 downto 0);
        variable p_x, i_x, d_x              : signed(31 downto 0);
        variable p_y, i_y, d_y              : signed(31 downto 0);
        variable p_z, d_z                   : signed(31 downto 0);
        -- [FIX-BUG-2] pid_out artık variable — aynı cycle'da pwm_calc'a aktarılır
        variable pid_var_x, pid_var_y, pid_var_z : signed(31 downto 0);
        variable pwm_calc_x, pwm_calc_y, pwm_calc_z : integer;
    begin
        if rst_n_i = '0' then 
            angle_raw_x <= to_unsigned(127, 8); 
            angle_raw_y <= to_unsigned(127, 8); 
            angle_raw_z <= to_unsigned(127, 8); 

            -- [FIX-BUG-1] output register'ları da reset'leniyor
            angle_x <= (others => '0');
            angle_y <= (others => '0');
            angle_z <= (others => '0');
            
            est_angle_x <= (others => '0');
            est_angle_y <= (others => '0');
            est_angle_z <= (others => '0');
            
            integral_x  <= (others => '0');
            integral_y  <= (others => '0');
            integral_z  <= (others => '0');
            
        elsif rising_edge(clk_i) then

            -- =========================================================
            -- [FIX-BUG-1] pwm_valid output atamaları artık clock edge içinde
            --              Latch oluşmuyor, deterministik davranış sağlanıyor.
            -- =========================================================
            if pwm_valid_x = '1' then angle_x <= STD_LOGIC_VECTOR(angle_raw_x); end if;
            if pwm_valid_y = '1' then angle_y <= STD_LOGIC_VECTOR(angle_raw_y); end if;
            if pwm_valid_z = '1' then angle_z <= STD_LOGIC_VECTOR(angle_raw_z); end if;

            if mpu_data_valid_in = '1' then

                -- =========================================================
                -- 1. AÇI KESTİRİMİ (COMPLEMENTARY FILTER)
                -- =========================================================
                est_angle_x <= est_angle_x + shift_right(resize(signed(f_gxi_i), 32), 2)
                                           + shift_right(accel_scaled_x - est_angle_x, 5);
                est_angle_y <= est_angle_y + shift_right(resize(signed(f_gyi_i), 32), 2)
                                           + shift_right(accel_scaled_y - est_angle_y, 5);
                
                if to_integer(abs(signed(f_gzi_i))) > 15 then 
                    est_angle_z <= est_angle_z + resize(signed(f_gzi_i), 32); 
                end if;

                -- =========================================================
                -- 2. HATA HESAPLAMA (Hedef daima ufuk çizgisi = 0)
                -- =========================================================
                err_x := 0 - est_angle_x;
                err_y := 0 - est_angle_y;
                err_z := 0 - est_angle_z;

                -- =========================================================
                -- 3. İNTEGRAL BIRIKIMI
                -- =========================================================
                integral_x <= integral_x + shift_right(err_x, 5);
                integral_y <= integral_y + shift_right(err_y, 5);
                
                -- Anti-Windup: Hard Clamp
                if integral_x > 800000 then integral_x <= to_signed(800000, 32); 
                elsif integral_x < -800000 then integral_x <= to_signed(-800000, 32); end if;

                if integral_y > 800000 then integral_y <= to_signed(800000, 32); 
                elsif integral_y < -800000 then integral_y <= to_signed(-800000, 32); end if;

                -- =========================================================
                -- 4. PID KATSAYILARI
                -- =========================================================
                p_x := shift_right(err_x, 9);               
                i_x := shift_right(integral_x, 14);         
                d_x := -shift_right(resize(signed(f_gxi_i), 32), 6); 

                p_y := shift_right(err_y, 9);               
                i_y := shift_right(integral_y, 14);         
                d_y := -shift_right(resize(signed(f_gyi_i), 32), 6); 

                p_z := shift_right(err_z, 10);              
                d_z := -shift_right(resize(signed(f_gzi_i), 32), 8);

                -- [FIX-BUG-2] Variable kullanıyoruz — aynı cycle'da PWM'e yansır
                pid_var_x := p_x + i_x + d_x;
                pid_var_y := p_y + i_y + d_y;
                pid_var_z := p_z + d_z; 

                -- =========================================================
                -- 5. MOTOR PWM ÇIKIŞINA MAPLAMA (MERKEZ = 127)
                -- =========================================================
                pwm_calc_x := 127 + to_integer(pid_var_x);
                pwm_calc_y := 127 + to_integer(pid_var_y);
                pwm_calc_z := 127 + to_integer(pid_var_z);

                -- X Eksen Sınırlandırma
                if pwm_calc_x > 255 then angle_raw_x <= to_unsigned(255, 8);
                elsif pwm_calc_x < 0 then angle_raw_x <= to_unsigned(0, 8);
                else angle_raw_x <= to_unsigned(pwm_calc_x, 8);
                end if;

                -- Y Eksen Sınırlandırma
                if pwm_calc_y > 255 then angle_raw_y <= to_unsigned(255, 8);
                elsif pwm_calc_y < 0 then angle_raw_y <= to_unsigned(0, 8);
                else angle_raw_y <= to_unsigned(pwm_calc_y, 8);
                end if;

                -- Z Eksen Sınırlandırma
                if pwm_calc_z > 255 then angle_raw_z <= to_unsigned(255, 8);
                elsif pwm_calc_z < 0 then angle_raw_z <= to_unsigned(0, 8);
                else angle_raw_z <= to_unsigned(pwm_calc_z, 8);
                end if;

            end if;
        end if;
        
    end process;
end architecture;

