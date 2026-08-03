----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 08/03/2026 10:37:36 AM
-- Module Name: IIR_filtre - rtl
-- First Version
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.FIXED_PKG.ALL;


entity IIR_filtre is
    port (
        clk_i           : in std_logic                      ;
        rst_n_i         : in std_logic                      ;


        --accel girişler
        accel_x         : in STD_LOGIC_VECTOR(15 downto 0)  ;
        accel_y         : in STD_LOGIC_VECTOR(15 downto 0)  ;
        accel_z         : in STD_LOGIC_VECTOR(15 downto 0)  ;

        --gyrpo çıkışlar
        gyro_x          : in STD_LOGIC_VECTOR(15 downto 0)  ;
        gyro_y          : in STD_LOGIC_VECTOR(15 downto 0)  ;
        gyro_z          : in STD_LOGIC_VECTOR(15 downto 0)  ;

        --data valid  ok
        data_valid_out  : in STD_LOGIC                      ;

        --filtre çıkış accel
        f_accel_x       : out STD_LOGIC_VECTOR(15 downto 0) ;
        f_accel_y       : out STD_LOGIC_VECTOR(15 downto 0) ;
        f_accel_z       : out STD_LOGIC_VECTOR(15 downto 0) ;

        --filtre çıkış gyro
        f_gyro_x        : out STD_LOGIC_VECTOR(15 downto 0) ;
        f_gyro_y        : out STD_LOGIC_VECTOR(15 downto 0) ;
        f_gyro_z        : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;


architecture rtl of IIR_filtre is
    signal reg_accel_x  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_accel_y  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_accel_z  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_gyro_x   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_gyro_y   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_gyro_z   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;

    signal reg_f_accel_x  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_f_accel_y  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_f_accel_z  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_f_gyro_x   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_f_gyro_y   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;
    signal reg_f_gyro_z   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0') ;

        type IIR_filtre_t is (IDLE,filtre,done);
    signal IIR_filtre_state : IIR_filtre_t := IDLE;
begin

    
IIR_Filter: process (clk_i,rst_n_i)
begin
    if rst_n_i = '0' then 
        IIR_filtre_state    <= IDLE ;
        reg_f_accel_x       <= (others => '0') ; 
        reg_f_accel_y       <= (others => '0') ; 
        reg_f_accel_z       <= (others => '0') ; 
        reg_f_gyro_x        <= (others => '0') ; 
        reg_f_gyro_y        <= (others => '0') ; 
        reg_f_gyro_z        <= (others => '0') ; 
    elsif rising_edge(clk_i) then
        case IIR_filtre_state is
            when IDLE           =>
                if(data_valid_out = '1') then 
                    reg_accel_x       <= accel_x  ;
                    reg_accel_y       <= accel_y  ;
                    reg_accel_z       <= accel_z  ;
                    reg_gyro_x        <= gyro_x   ;
                    reg_gyro_y        <= gyro_y   ;
                    reg_gyro_z        <= gyro_z   ;
                    IIR_filtre_state  <= filtre ;
                end if;
            when filtre         =>
                reg_f_accel_x       <= STD_LOGIC_VECTOR(resize(shift_right(resize(signed(reg_f_accel_x) * TO_SIGNED(3,3), 18) + resize(signed(reg_accel_x), 18), 2), 16));
                reg_f_accel_y       <= STD_LOGIC_VECTOR(resize(shift_right(resize(signed(reg_f_accel_y) * TO_SIGNED(3,3), 18) + resize(signed(reg_accel_y), 18), 2), 16));
                reg_f_accel_z       <= STD_LOGIC_VECTOR(resize(shift_right(resize(signed(reg_f_accel_z) * TO_SIGNED(3,3), 18) + resize(signed(reg_accel_z), 18), 2), 16));

                reg_f_gyro_x        <= STD_LOGIC_VECTOR(resize(shift_right(resize(signed(reg_f_gyro_x)  * TO_SIGNED(3,3), 18) + resize(signed(reg_gyro_x), 18), 2), 16));
                reg_f_gyro_y        <= STD_LOGIC_VECTOR(resize(shift_right(resize(signed(reg_f_gyro_y)  * TO_SIGNED(3,3), 18) + resize(signed(reg_gyro_y), 18), 2), 16));
                reg_f_gyro_z        <= STD_LOGIC_VECTOR(resize(shift_right(resize(signed(reg_f_gyro_z)  * TO_SIGNED(3,3), 18) + resize(signed(reg_gyro_z), 18), 2), 16));
                IIR_filtre_state    <= done;
            when done           =>
                IIR_filtre_state    <= IDLE;
            when others =>
                IIR_filtre_state <= IDLE;
        end case;
    end if;
end process;


    f_accel_x   <=  reg_f_accel_x   ;
    f_accel_y   <=  reg_f_accel_y   ;
    f_accel_z   <=  reg_f_accel_z   ;
    f_gyro_x    <=  reg_f_gyro_x    ;
    f_gyro_y    <=  reg_f_gyro_y    ;
    f_gyro_z    <=  reg_f_gyro_z    ;
end architecture;