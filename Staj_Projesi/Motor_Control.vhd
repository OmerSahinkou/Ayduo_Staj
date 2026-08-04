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
        data_valid_out : in STD_LOGIC                           ;
        
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
        angle_z : out STD_LOGIC_VECTOR(7 downto 0)               
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

            if data_valid_out = '1' then



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
    end process;
end architecture;