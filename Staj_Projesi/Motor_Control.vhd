----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 08/04/2026 13:58:36 AM
-- Module Name: uart_tx - rtl
-- First Version
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

        --Kontorl Sonrası Çıkışlar
        angle_x : out STD_LOGIC_VECTOR(7 downto 0)               ;
        angle_y : out STD_LOGIC_VECTOR(7 downto 0)               ;
        angle_z : out STD_LOGIC_VECTOR(7 downto 0)               ;

        pwm_valid: in STD_LOGIC                                  
    );
end entity;

architecture rtl of Motor_Control is

    signal accel_target_x : signed(31 downto 0) := (others => '0') ;
    signal accel_target_y : signed(31 downto 0) := (others => '0') ;

    signal hesap_temp_x : signed(15 downto 0)   := (others => '0') ;
    signal hesap_temp_y : signed(15 downto 0)   := (others => '0') ;
    signal hesap_temp_z : signed(15 downto 0)   := (others => '0') ;

    signal angle_raw_x  : unsigned(7 downto 0) := (others => '0') ;
    signal angle_raw_y  : unsigned(7 downto 0) := (others => '0') ;
    signal angle_raw_z  : unsigned(7 downto 0) := (others => '0') ;

    signal angle_pool_z : signed(31 downto 0);
    signal angle_pool_y : signed(31 downto 0);
    signal angle_pool_x : signed(31 downto 0);

    signal integral_x : signed(31 downto 0);
    signal integral_y : signed(31 downto 0);

begin


    Controller : process (clk_i,rst_n_i)
        variable err_x, err_y : signed(31 downto 0);
    begin
        if rst_n_i = '0' then 
            angle_raw_x <= to_unsigned(127, 8); 
            angle_raw_y <= to_unsigned(127, 8); 
            angle_raw_z <= to_unsigned(127, 8); 

            hesap_temp_x <= (others => '0'); 
            hesap_temp_y <= (others => '0'); 
            hesap_temp_z <= (others => '0'); 

            accel_target_x <= (others => '0'); 
            accel_target_y <= (others => '0'); 
        elsif rising_edge(clk_i) then

            if mpu_data_valid_in = '1' then

                -- Hata (Error) Hesaplamaları (İstenen Hedef - Mevcut Havuz)
                err_x := accel_target_x - angle_pool_x;
                err_y := accel_target_y - angle_pool_y;

                -- ================= YAW (Z EKSENİ) =================
                if to_integer(abs(signed(f_gzi_i))) > 15 then 
                    angle_pool_z <= angle_pool_z + signed(f_gzi_i); 
                end if;
                
                -- Z Clamp (Alt ve Üst Sınır)
                if angle_pool_z < to_signed(-524288, 32) then
                    angle_pool_z <= to_signed(-524288, 32);
                elsif angle_pool_z > to_signed(520192, 32) then
                    angle_pool_z <= to_signed(520192, 32);
                end if;

                -- ================= ROLL (X EKSENİ) PID =================
                -- I (İntegral) Birikimi: Sadece hata çok büyük değilse topla (Anti-Windup)
                if abs(to_integer(err_x)) < 4000 then
                    integral_x <= integral_x + shift_right(err_x, 6);
                end if;

                -- PID Havuz Güncellemesi (Gyro = D, Hata = P, İntegral = I)
                if to_integer(abs(signed(f_gxi_i))) > 5 then 
                    angle_pool_x <= angle_pool_x + shift_right(signed(f_gxi_i), 2) + shift_right(err_x, 3) + shift_right(integral_x, 4);
                else
                    angle_pool_x <= angle_pool_x + shift_right(err_x, 3) + shift_right(integral_x, 4);
                end if;
                
                -- X Eksen Havuz Sınırları
                if angle_pool_x < 0 then
                    angle_pool_x <= (others => '0');
                elsif angle_pool_x > 65280 then 
                    angle_pool_x <= to_signed(65280, 32);
                end if;

                -- ================= PITCH (Y EKSENİ) PID =================
                -- I (İntegral) Birikimi
                if abs(to_integer(err_y)) < 4000 then
                    integral_y <= integral_y + shift_right(err_y, 6);
                end if;

                if to_integer(abs(signed(f_gyi_i))) > 15 then 
                    angle_pool_y <= angle_pool_y + shift_right(signed(f_gyi_i), 4) + shift_right(err_y, 5) + shift_right(integral_y, 4);
                else
                    angle_pool_y <= angle_pool_y + shift_right(err_y, 5) + shift_right(integral_y, 4);
                end if;
                
                -- Y Eksen Havuz Sınırları
                if angle_pool_y < 0 then
                    angle_pool_y <= (others => '0');
                elsif angle_pool_y > 65280 then
                    angle_pool_y <= to_signed(65280, 32);
                end if;

                if hesap_temp_x > 255 then
                    angle_raw_x <= to_unsigned(0, 8);     
                elsif hesap_temp_x < 0 then
                    angle_raw_x <= to_unsigned(255, 8);  
                else
                    angle_raw_x <= to_unsigned(255, 8) - unsigned(hesap_temp_x(7 downto 0));
                end if;

                if hesap_temp_y > 255 then
                    angle_raw_y <= to_unsigned(0, 8);
                elsif hesap_temp_y < 0 then
                    angle_raw_y <= to_unsigned(255, 8);
                else
                    angle_raw_y <= to_unsigned(255, 8) - unsigned(hesap_temp_y(7 downto 0));
                end if;

                if hesap_temp_z > 255 then
                    angle_raw_z <= to_unsigned(0, 8);
                elsif hesap_temp_z < 0 then 
                    angle_raw_z <= to_unsigned(255, 8);  
                else 
                    angle_raw_z <= to_unsigned(255, 8) - unsigned(hesap_temp_z(7 downto 0));
                end if;
            end if;
        end if;

        if pwm_valid = '1' then 
            angle_x <= STD_LOGIC_VECTOR(angle_raw_x);
            angle_y <= STD_LOGIC_VECTOR(angle_raw_y);
            angle_z <= STD_LOGIC_VECTOR(angle_raw_z);
        end if;
    end process;

    
end architecture;