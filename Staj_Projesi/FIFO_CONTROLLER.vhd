library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.FIXED_PKG.ALL;

entity FIFO_CONTROLLER is
    port (

        -- Clk  and RST ok signal 
        clk_i           : in std_logic;
        rst_n_i         : in std_logic;
        
        --SPI DATA VALID ok signal

        data_valid_i    : in STD_LOGIC;

        --MPU 6500 signals
        ax_i            : in STD_LOGIC_VECTOR(15 downto 0);
        ay_i            : in STD_LOGIC_VECTOR(15 downto 0);
        az_i            : in STD_LOGIC_VECTOR(15 downto 0);
        gx_i            : in STD_LOGIC_VECTOR(15 downto 0);
        gy_i            : in STD_LOGIC_VECTOR(15 downto 0);
        gz_i            : in STD_LOGIC_VECTOR(15 downto 0);

        --filtered mpu6500 signals
        f_ax_i            : in STD_LOGIC_VECTOR(15 downto 0);
        f_ay_i            : in STD_LOGIC_VECTOR(15 downto 0);
        f_az_i            : in STD_LOGIC_VECTOR(15 downto 0);
        f_gx_i            : in STD_LOGIC_VECTOR(15 downto 0);
        f_gy_i            : in STD_LOGIC_VECTOR(15 downto 0);
        f_gz_i            : in STD_LOGIC_VECTOR(15 downto 0);

        --Calculation signals

        angle_x         : in STD_LOGIC_VECTOR(7 downto 0);
        angle_y         : in STD_LOGIC_VECTOR(7 downto 0);
        angle_z         : in STD_LOGIC_VECTOR(7 downto 0);

        -- FIFO full signal

        fifo_full_i     : in  STD_LOGIC;

        fifo_rst_busys  : in  STD_LOGIC;

        fifo_wr_en_o    : out std_logic;
        fifo_wr_data_o  : out std_logic_vector(7 downto 0)
        
        
    );
end entity FIFO_CONTROLLER;

architecture rtl of FIFO_CONTROLLER is



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

    signal reg_angle_x  : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0') ;
    signal reg_angle_y  : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0') ;
    signal reg_angle_z  : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0') ;

    type FIFO_state_t is (
        IDLE,
        S_HEADER_1, S_HEADER_2, 
        ACC_X_H,    ACC_X_L, 
        ACC_Y_H,    ACC_Y_L, 
        ACC_Z_H,    ACC_Z_L, 
        GYRO_X_H,   GYRO_X_L, 
        GYRO_Y_H,   GYRO_Y_L,  
        GYRO_Z_H,   GYRO_Z_L, 
        T_ANGLE_X,  T_ANGLE_Y, T_ANGLE_Z,
        f_ACC_X_H,  f_ACC_X_L,
        f_ACC_Y_H,  f_ACC_Y_L ,
        f_ACC_Z_H,  f_ACC_Z_L,
        f_GYRO_X_H, f_GYRO_X_L,
        f_GYRO_Y_H, f_GYRO_Y_L,
        f_GYRO_Z_H, f_GYRO_Z_L,
        DONE_1,DONE_2
    );
    signal FIFO_state : FIFO_state_t := IDLE;
    
begin

    fifo_p:process (clk_i,rst_n_i)
    begin
        if rst_n_i = '0' then 
            FIFO_state      <= IDLE;
            fifo_wr_en_o    <= '0';
            fifo_wr_data_o  <= (others => '0'); 

            --accel tampon
            reg_accel_x <= (others => '0');
            reg_accel_y <= (others => '0');
            reg_accel_z <= (others => '0');
            --gyro tampon
            reg_gyro_x  <= (others => '0');
            reg_gyro_y  <= (others => '0');
            reg_gyro_z  <= (others => '0');
            
            reg_f_accel_x <= (others => '0');
            reg_f_accel_y <= (others => '0');
            reg_f_accel_z <= (others => '0');
            --gyro tampon
            reg_f_gyro_x  <= (others => '0');
            reg_f_gyro_y  <= (others => '0');
            reg_f_gyro_z  <= (others => '0');
            -- angle tampon
            reg_angle_x <= angle_x ;
            reg_angle_y <= angle_y ;
            reg_angle_z <= angle_z ;

        elsif rising_edge(clk_i)then 
            fifo_wr_en_o   <= '0'   ;

            if fifo_rst_busys = '1'then
                FIFO_state <= IDLE;
            else
                
                case FIFO_state is 
                    --BAŞLANGIÇ DURUMU
                    when IDLE => 
                        if (data_valid_i = '1' and fifo_full_i = '0') then

                            --accel tampon
                            reg_accel_x <= ax_i;
                            reg_accel_y <= ay_i;
                            reg_accel_z <= az_i;
                            --gyro tampon
                            reg_gyro_x <= gx_i;
                            reg_gyro_y <= gy_i;
                            reg_gyro_z <= gz_i;

                            reg_f_accel_x <= f_ax_i;
                            reg_f_accel_y <= f_ay_i;
                            reg_f_accel_z <= f_az_i;

                            reg_f_gyro_x <= f_gx_i;
                            reg_f_gyro_y <= f_gy_i;
                            reg_f_gyro_z <= f_gz_i;

                            FIFO_state <= S_HEADER_1;
                        end if;

                    --VERİ BAŞLANGIC HEADER
                    when S_HEADER_1 =>
                        if fifo_full_i ='0' then 
                            fifo_wr_data_o  <= X"AB"    ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= S_HEADER_2;
                        end if ;
                    when S_HEADER_2 =>
                        if fifo_full_i ='0' then 
                            fifo_wr_data_o  <= X"CD"    ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= ACC_X_H  ;
                        end if;
                    -- ACC X verisi
                    WHEN ACC_X_H    =>
                        if fifo_full_i ='0' then 
                            fifo_wr_data_o  <= reg_accel_x(15 downto 8);
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= ACC_X_L  ;
                        end if;
                    WHEN ACC_X_L    =>
                        if fifo_full_i ='0' then 
                            fifo_wr_data_o  <= reg_accel_x(7 downto 0);
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= ACC_Y_H  ;
                        end if;
                    -- ACC Y verisi
                    WHEN ACC_Y_H    =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_accel_y(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= ACC_Y_L  ;
                        end if;
                    WHEN ACC_Y_L    =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_accel_y(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= ACC_Z_H  ;
                        end if;
                    -- ACC Z verisi
                    WHEN ACC_Z_H    =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_accel_z(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= ACC_Z_L  ;
                        end if;
                    WHEN ACC_Z_L    =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_accel_z(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= GYRO_X_H ;
                        end if;
                    -- GYRO X verisi
                    WHEN GYRO_X_H   =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_gyro_x(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= GYRO_X_L ;
                        end if;
                    WHEN GYRO_X_L   =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_gyro_x(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= GYRO_Y_H ;
                        end if;
                    -- GYRO Y verisi
                    WHEN GYRO_Y_H   =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_gyro_y(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= GYRO_Y_L ;
                        end if;
                    WHEN GYRO_Y_L   =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_gyro_y(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= GYRO_Z_H ;
                        end if;
                    -- GYRO Z verisi
                    WHEN GYRO_Z_H   =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_gyro_z(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= GYRO_Z_L ;
                        end if;
                    WHEN GYRO_Z_L   =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_gyro_z(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= T_ANGLE_X;
                        end if;
                    -- X ANGLE verisi
                    WHEN T_ANGLE_X  =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= angle_x  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= T_ANGLE_Y;
                        end if;
                    -- Y ANGLE verisi
                    WHEN T_ANGLE_Y  =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= angle_y  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= T_ANGLE_Z;
                        end if;
                    -- Z ANGLE verisi
                    WHEN T_ANGLE_Z  =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= angle_z  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_ACC_X_H   ;
                        end if;
                    -- Filtrelenmiş Veriler
                    when f_ACC_X_H =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_accel_x(15 downto 8) ;  
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_ACC_X_L   ;
                        end if;
                    when f_ACC_X_L =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_accel_x(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_ACC_Y_H   ;
                        end if;
                    when f_ACC_Y_H =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_accel_y(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_ACC_Y_L   ;
                        end if;
                    when f_ACC_Y_L =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_accel_y(7 downto 0) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_ACC_Z_H   ;
                        end if;
                    when f_ACC_Z_H =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_accel_z(15 downto 8) ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_ACC_Z_L   ;
                        end if;
                    when f_ACC_Z_L =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_accel_z(7 downto 0)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_GYRO_X_H   ;
                        end if;
                    when f_GYRO_X_H =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_gyro_x(15 downto 8)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_GYRO_X_L   ;
                        end if;
                    when f_GYRO_X_L =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_gyro_x(7 downto 0)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_GYRO_Y_H   ;
                        end if;
                    when f_GYRO_Y_H =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_gyro_y(15 downto 8)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_GYRO_Y_L   ;
                        end if;
                    when f_GYRO_Y_L =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_gyro_y(7 downto 0)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_GYRO_Z_H   ;
                        end if;
                    when f_GYRO_Z_H =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_gyro_z(15 downto 8)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= f_GYRO_Z_L   ;
                        end if;
                    when f_GYRO_Z_L =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= reg_f_gyro_z(7 downto 0)  ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= DONE_1   ;
                        end if;
                    -- VERİ BİTİŞ HEADER
                    WHEN DONE_1     =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= X"CD"    ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= DONE_2   ;
                        end if;
                    WHEN DONE_2     =>
                        if fifo_full_i ='0' then
                            fifo_wr_data_o  <= X"EF"    ;
                            fifo_wr_en_o    <= '1'      ;
                            FIFO_state      <= IDLE     ;
                        end if;
                    when others =>  FIFO_state      <= IDLE;
                end case;
            end if;
        end if;
    end process fifo_p;

end architecture;