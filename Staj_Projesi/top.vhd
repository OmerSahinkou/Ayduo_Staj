----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/17/2026 12:37:36 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: MPU6500, SPI, UART ve Servo Entegrasyonu
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.FIXED_PKG.ALL;

entity top is
    Generic (
        SQRT_DATA : integer := 34;
        CLK_FREQ  : integer := 33_333_333; 
        BAUD_RATE : integer := 1_000_000
    );
    Port (
        clk_i       : in  STD_LOGIC;
        rst_n_i     : in  STD_LOGIC;
        switch_in   : in  STD_LOGIC;
        -- Servo
        pwm_out_0   : out STD_LOGIC;
        pwm_out_1   : out STD_LOGIC;
        pwm_out_2   : out STD_LOGIC;
        -- UART 
        rx          : in  STD_LOGIC;
        tx          : out STD_LOGIC;
        -- SPI
        spi_cs_n_o  : out STD_LOGIC;
        mosi_o      : out STD_LOGIC;
        miso_i      : in  STD_LOGIC;
        sclk_o      : out STD_LOGIC;

        --FSM Leds
        LED         : out STD_LOGIC_VECTOR(3 downto 0)
    );
end top;

architecture Behavioral of top is

    -- =========================================================
    -- COMPONENT TANIMLAMALARI (Çiplerimiz)
    -- =========================================================
    component pwm_servo is
        Generic ( CLK_FREQ : integer := 33_333_333 );
        Port ( 
            clk_i       : in STD_LOGIC;
            rst_n_i     : in STD_LOGIC;
            servo_angle : in STD_LOGIC_VECTOR (7 downto 0);
            pwm_out     : out STD_LOGIC;
            pwm_valid   : out STD_LOGIC
        );
    end component;

    component uart_tx is 
        generic(
            CLK_FREQ    : integer := 33_333_333;
            BAUD_RATE   : integer := 1_000_000;
            DATA_WIDTH  : integer := 8
        );
        port(
            clk_i       : in std_logic;
            rst_n_i     : in std_logic;
            tx_start    : in std_logic;
            tx_data     : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            tx          : out std_logic;
            tx_busy     : out std_logic
        );
    end component;
    
    component uart_rx is
        generic (
            CLK_FREQ   : integer := 33_333_333;
            BAUD_RATE  : integer := 1_000_000;
            DATA_WIDTH : integer := 8
        );
        port (
            clk_c    : in  std_logic;
            rst_n    : in  std_logic;
            rx       : in  std_logic;
            rx_data  : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            rx_valid : out std_logic
        );
    end component;
    
    component debounce is
        Generic ( DEBOUNCE_LIMIT : integer := 333_000 );
        Port ( 
            clk_i       : in STD_LOGIC;
            rst_n_i     : in STD_LOGIC;
            switch_in   : in STD_LOGIC;
            switch_out  : out STD_LOGIC
        );
    end component;

    component Spi_Mode_3 is
        generic(
            CLK_FREQ   : integer := 33_333_333;
            SPI_FREQ   : integer := 1_000_000;
            DATA_WIDTH : integer := 8         
        );
        Port ( 
            clk_i           : in STD_LOGIC;
            rst_i           : in STD_LOGIC;
            start_trasfer_i : in STD_LOGIC;
            mosi_o          : out STD_LOGIC;
            miso_i          : in STD_LOGIC;
            sclk_o          : out STD_LOGIC;
            data_valid      : out STD_LOGIC;
            rx_data         : out STD_LOGIC_VECTOR (7 downto 0);
            data_buffer_i   : in STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    component MPU6500_Controller is
        Port ( 
            clk_i            : in STD_LOGIC;
            rst_i            : in STD_LOGIC;
            switch_out       : in STD_LOGIC;
            data_valid_i     : in STD_LOGIC;
            rx_data_i        : in STD_LOGIC_VECTOR(7 downto 0);
            g_value          : in STD_LOGIC_VECTOR(7 downto 0);
            dps_value        : in STD_LOGIC_VECTOR(7 downto 0);
            Conf_sig         : in STD_LOGIC;
            start_transfer_o : out STD_LOGIC;
            mosi_data_o      : out STD_LOGIC_VECTOR(7 downto 0);
            spi_cs_n_o       : out STD_LOGIC;
            data_valid_out   : out STD_LOGIC;
            ax_o             : out STD_LOGIC_VECTOR(15 downto 0);
            ay_o             : out STD_LOGIC_VECTOR(15 downto 0);
            az_o             : out STD_LOGIC_VECTOR(15 downto 0);
            gx_o             : out STD_LOGIC_VECTOR(15 downto 0);
            gy_o             : out STD_LOGIC_VECTOR(15 downto 0);
            gz_o             : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    -- component Cordic is
    --     port (
    --         clk     : in std_logic                      ;
    --         reset_n : in std_logic                      ;
    --         i_call  : in STD_LOGIC                      ;
    --         i_x     : in STD_LOGIC_VECTOR(31 downto 0)  ;
    --         i_y     : in STD_LOGIC_VECTOR(31 downto 0)  ;
    --         o_done  : out STD_LOGIC                     ;
    --         o_arctan: out STD_LOGIC_VECTOR(31 downto 0) ;
    --         o_deg   : out STD_LOGIC_VECTOR(31 downto 0) ;
    --         o_y     : out STD_LOGIC_VECTOR(31 downto 0) ;
    --         o_x     : out STD_LOGIC_VECTOR(31 downto 0)
    --     );
    -- end component;

    component SquareRoot is
        Generic (
            N : integer := 16 
        );
        Port (
            clk      : in  std_logic;
            data_in  : in  std_logic_vector (N-1 downto 0);
            data_out : out std_logic_vector ((N/2)-1 downto 0)
        );
    end component;

    component FIFO is
        port (
            prog_full_o : out std_logic;
            full_o : out std_logic;
            empty_o : out std_logic;
            clk_i : in std_logic;
            wr_en_i : in std_logic;
            rd_en_i : in std_logic;
            wdata : in std_logic_vector(7 downto 0);
            rst_busy : out std_logic;
            rdata : out std_logic_vector(7 downto 0);
            a_rst_i : in std_logic;
            datacount_o : out std_logic_vector(9 downto 0);
            underflow_o : out std_logic;
            overflow_o : out std_logic
        );
    end component FIFO;


    component FIFO_CONTROLLER is
        port (
            clk_i           : in std_logic;
            rst_n_i         : in std_logic;
            data_valid_i    : in STD_LOGIC;
            ax_i            : in STD_LOGIC_VECTOR(15 downto 0);
            ay_i            : in STD_LOGIC_VECTOR(15 downto 0);
            az_i            : in STD_LOGIC_VECTOR(15 downto 0);
            gx_i            : in STD_LOGIC_VECTOR(15 downto 0);
            gy_i            : in STD_LOGIC_VECTOR(15 downto 0);
            gz_i            : in STD_LOGIC_VECTOR(15 downto 0);
            f_ax_i          : in STD_LOGIC_VECTOR(15 downto 0);
            f_ay_i          : in STD_LOGIC_VECTOR(15 downto 0);
            f_az_i          : in STD_LOGIC_VECTOR(15 downto 0);
            f_gx_i          : in STD_LOGIC_VECTOR(15 downto 0);
            f_gy_i          : in STD_LOGIC_VECTOR(15 downto 0);
            f_gz_i          : in STD_LOGIC_VECTOR(15 downto 0);
            angle_x         : in STD_LOGIC_VECTOR(7 downto 0);
            angle_y         : in STD_LOGIC_VECTOR(7 downto 0);
            angle_z         : in STD_LOGIC_VECTOR(7 downto 0);
            fifo_full_i     : in  STD_LOGIC;
            fifo_rst_busys  : in  STD_LOGIC;
            fifo_wr_en_o    : out std_logic;
            fifo_wr_data_o  : out std_logic_vector(7 downto 0)
        );
    end component FIFO_CONTROLLER;

    component IIR_filtre is
    generic (
        DATA_WIDTH : INTEGER := 16
    );
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
    end component IIR_filtre;

    component uart_Send is
    port (
        clk_i   : in std_logic;
        rst_n_i : in std_logic;

        --UART
        tx_busy_sig  : in STD_LOGIC;
        tx_start_sig : out STD_LOGIC                    ;
        tx_data_sig  : out STD_LOGIC_VECTOR(7 downto 0) ;
        --FIFO 
        rd_en_i      : out STD_LOGIC                    ;
        rdata        : in STD_LOGIC_VECTOR(7 downto 0)  ;
        empty_o      : in STD_LOGIC                     
    );
    end component uart_Send;


    component Motor_Control is
        generic (
            DATA_WIDTH : INTEGER := 16
        );
        port (
            clk_i   : in std_logic                                      ;
            rst_n_i : in std_logic                                      ;

            --veri hazır
            mpu_data_valid_in : in STD_LOGIC                            ;

            g_value : in std_logic_vector(7 downto 0)                   ;
            dps_value : in std_logic_vector(7 downto 0)                 ;
            --filtreli giriş verileri
            f_axi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)      ;
            f_ayi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)      ;
            f_azi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)      ;
            f_gxi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)      ;
            f_gyi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)      ;
            f_gzi_i : in STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)      ;

            --Kontorl Sonrası Çıkışlar
            angle_x : out STD_LOGIC_VECTOR(7 downto 0)                  ;
            angle_y : out STD_LOGIC_VECTOR(7 downto 0)                  ;
            angle_z : out STD_LOGIC_VECTOR(7 downto 0)                  ;

            pwm_valid_x: in STD_LOGIC                                   ;            
            pwm_valid_y: in STD_LOGIC                                   ;            
            pwm_valid_z: in STD_LOGIC                                    
        );
    end component;

    component uart_rx_controller is
        port (
            clk_i       : in  std_logic;
            rst_n_i     : in  std_logic;
            rx_data     : in  STD_LOGIC_VECTOR(7 downto 0);
            rx_valid    : in  STD_LOGIC;
            g_value     : out STD_LOGIC_VECTOR(7 downto 0); 
            dps_value   : out STD_LOGIC_VECTOR(7 downto 0);
            rst_conf    : out std_logic                   
        );
    end component;

    -- =========================================================
    -- SİNYAL TANIMLAMALARI 
    -- =========================================================
    
    signal data_valid_out   : STD_LOGIC := '0' ;
    -- Servo Sinyalleri
    signal angle_reg_0      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal angle_reg_1      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal angle_reg_2      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    signal pwm_valid_x      :  STD_LOGIC := '0' ;
    signal pwm_valid_y      :  STD_LOGIC := '0' ;
    signal pwm_valid_z      :  STD_LOGIC := '0' ;
    -- UART Sinyalleri
    signal tx_start_sig     : std_logic := '0';
    signal tx_data_sig      : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_busy_sig      : std_logic;
    signal rx_data_sig      : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_valid         : std_logic;
    
    -- SPI İç Haberleşme Sinyalleri
    signal spi_start        : std_logic := '0';
    signal spi_data_valid   : std_logic := '0';
    signal mpu_to_spi_data  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal spi_to_mpu_data  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    -- Sensör Çıkış Sinyalleri (16-bit)
    signal accel_x          : std_logic_vector(15 downto 0);
    signal accel_y          : std_logic_vector(15 downto 0);
    signal accel_z          : std_logic_vector(15 downto 0);
    signal gyro_x           : std_logic_vector(15 downto 0);
    signal gyro_y           : std_logic_vector(15 downto 0);
    signal gyro_z           : std_logic_vector(15 downto 0);

    signal f_axi_i          : STD_LOGIC_VECTOR(15 downto 0);
    signal f_ayi_i          : STD_LOGIC_VECTOR(15 downto 0);
    signal f_azi_i          : STD_LOGIC_VECTOR(15 downto 0);
    signal f_gxi_i          : STD_LOGIC_VECTOR(15 downto 0);
    signal f_gyi_i          : STD_LOGIC_VECTOR(15 downto 0);
    signal f_gzi_i          : STD_LOGIC_VECTOR(15 downto 0);

    signal switch_out       : STD_LOGIC := '0';


    --FIFO controller
    signal fifo_full_i      : STD_LOGIC := '0';
    signal fifo_rst_busys   : STD_LOGIC := '0';
    signal fifo_wr_en_o     : STD_LOGIC := '0';
    signal fifo_wr_data_o   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0') ;

    signal empty_o          : STD_LOGIC := '0';
    signal rd_en_i          : STD_LOGIC := '0';
    signal rdata            : STD_LOGIC_VECTOR(7 downto 0) := (others => '0') ;

    signal g_value_sig      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0') ;
    signal dps_value_sig    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0') ;

    signal rst_conf_sig     : STD_LOGIC := '0';


    signal led_counter      : STD_LOGIC_VECTOR(24 downto 0) := (others => '0') ;
    signal valid_sayici     : unsigned(5 downto 0) := (others => '0');

    type state_t is (IDLE, LIGTH, OFF);
    signal start_signal_conf : state_t := IDLE;
begin

    -- =========================================================
    -- COMPONENT BAĞLANTILARI 
    -- =========================================================

    Inst_pwm_servo_0: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => angle_reg_0,
            pwm_out     => pwm_out_0,
            pwm_valid   => pwm_valid_x
        );

    Inst_pwm_servo_1: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => angle_reg_1,
            pwm_out     => pwm_out_1,
            pwm_valid   => pwm_valid_y
        );

    Inst_pwm_servo_2: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => angle_reg_2,
            pwm_out     => pwm_out_2,
            pwm_valid   => pwm_valid_z

        );

    Inst_uart_tx: uart_tx
        generic map (
            CLK_FREQ   => CLK_FREQ,
            BAUD_RATE  => BAUD_RATE,
            DATA_WIDTH => 8
        )
        port map (
            clk_i      => clk_i,
            rst_n_i    => rst_n_i,
            tx_start   => tx_start_sig,
            tx_data    => tx_data_sig,
            tx         => tx,      
            tx_busy    => tx_busy_sig   
        );
    
    
    Inst_debounce: debounce
        generic map ( DEBOUNCE_LIMIT => 1000000 )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            switch_in   => switch_in,
            switch_out  => switch_out
        );

    Inst_uart_rx: uart_rx
        generic map (
            CLK_FREQ   => CLK_FREQ,
            BAUD_RATE  => BAUD_RATE,
            DATA_WIDTH => 8
        )
        port map (
            clk_c      => clk_i,
            rst_n      => rst_n_i,
            rx         => rx,
            rx_data    => rx_data_sig,
            rx_valid   => rx_valid
        ); 

    Inst_Spi_Mode_3: Spi_Mode_3
        generic map (
            CLK_FREQ    => CLK_FREQ,
            SPI_FREQ    => 1_000_000,
            DATA_WIDTH  => 8
        )
        port map (
            clk_i           => clk_i,
            rst_i           => rst_n_i,
            start_trasfer_i => spi_start,
            mosi_o          => mosi_o,
            miso_i          => miso_i,
            sclk_o          => sclk_o,
            data_valid      => spi_data_valid,
            rx_data         => spi_to_mpu_data,
            data_buffer_i   => mpu_to_spi_data
        );

    Inst_MPU6500_Controller: MPU6500_Controller
        port map (
            clk_i           => clk_i,
            rst_i           => rst_n_i,
            switch_out      => switch_out,
            data_valid_i    => spi_data_valid,
            g_value         => g_value_sig,
            dps_value       => dps_value_sig,
            rx_data_i       => spi_to_mpu_data,
            Conf_sig        => rst_conf_sig,
            start_transfer_o=> spi_start,
            mosi_data_o     => mpu_to_spi_data, 
            spi_cs_n_o      => spi_cs_n_o,
            data_valid_out  => data_valid_out,
            ax_o            => accel_x,
            ay_o            => accel_y,
            az_o            => accel_z,
            gx_o            => gyro_x,
            gy_o            => gyro_y,
            gz_o            => gyro_z
        );
        
    Inst_FIFO_CONTROLLER: FIFO_CONTROLLER
            port map (
                clk_i           => clk_i,
                rst_n_i         => rst_n_i,
                data_valid_i    => data_valid_out,
                ax_i            => accel_x,
                ay_i            => accel_y,
                az_i            => accel_z,
                gx_i            => gyro_x ,
                gy_i            => gyro_y , 
                gz_i            => gyro_z ,
                f_ax_i          => f_axi_i,
                f_ay_i          => f_ayi_i,
                f_az_i          => f_azi_i,
                f_gx_i          => f_gxi_i,
                f_gy_i          => f_gyi_i,
                f_gz_i          => f_gzi_i,
                angle_x         => STD_LOGIC_VECTOR(angle_reg_0),
                angle_y         => STD_LOGIC_VECTOR(angle_reg_1),
                angle_z         => STD_LOGIC_VECTOR(angle_reg_2),
                fifo_full_i     => fifo_full_i,
                fifo_rst_busys  => fifo_rst_busys,
                fifo_wr_en_o    => fifo_wr_en_o,
                fifo_wr_data_o  => fifo_wr_data_o
            );
    u_FIFO : FIFO
            port map (
                prog_full_o => OPEN,
                full_o      => fifo_full_i,
                empty_o     => empty_o,
                clk_i       => clk_i,
                wr_en_i     => fifo_wr_en_o,
                rd_en_i     => rd_en_i,
                wdata       => fifo_wr_data_o,
                rst_busy    => fifo_rst_busys,
                rdata       => rdata,
                a_rst_i     => not(rst_n_i),
                datacount_o => OPEN,
                underflow_o => OPEN,
                overflow_o  => OPEN
            );

    u_IIR_filtre : IIR_filtre
            generic map(
                DATA_WIDTH      => 16               
            )
            port map (
                clk_i           => clk_i            ,
                rst_n_i         => rst_n_i          ,

                data_valid_out  => data_valid_out   ,
                --saf veriler giriş
                accel_x         => accel_x          ,
                accel_y         => accel_y          ,
                accel_z         => accel_z          ,
                gyro_x          => gyro_x           ,
                gyro_y          => gyro_y           ,
                gyro_z          => gyro_z           ,

                --filtreli veriler çıkış
                f_accel_x       => f_axi_i          ,
                f_accel_y       => f_ayi_i          ,
                f_accel_z       => f_azi_i          ,
                f_gyro_x        => f_gxi_i          ,
                f_gyro_y        => f_gyi_i          ,
                f_gyro_z        => f_gzi_i  
            );

    u_uart_Send : uart_Send
            port map (
                clk_i       => clk_i        ,
                rst_n_i     => rst_n_i      ,
                tx_busy_sig => tx_busy_sig  ,
                tx_start_sig=> tx_start_sig ,
                tx_data_sig => tx_data_sig  ,
                rd_en_i     => rd_en_i      ,
                rdata       => rdata        ,
                empty_o     => empty_o      
            );

    
    u_Motor_Control : Motor_Control 
                generic map (
                    DATA_WIDTH =>   16
                )
                port map (
                    clk_i               => clk_i            ,
                    rst_n_i             => rst_n_i          ,

                    mpu_data_valid_in   => data_valid_out   ,
                    g_value             => g_value_sig      ,
                    dps_value           => dps_value_sig    ,
                    f_axi_i             => f_axi_i          ,
                    f_ayi_i             => f_ayi_i          ,
                    f_azi_i             => f_azi_i          ,
                    f_gxi_i             => f_gxi_i          ,
                    f_gyi_i             => f_gyi_i          ,
                    f_gzi_i             => f_gzi_i          ,

                    angle_x             => angle_reg_0      ,
                    angle_y             => angle_reg_1      ,
                    angle_z             => angle_reg_2      ,
                    pwm_valid_x         => pwm_valid_x      ,
                    pwm_valid_y         => pwm_valid_y      ,
                    pwm_valid_z         => pwm_valid_z      

                );

    u_uart_rx_controller : uart_rx_controller 
                port map (
                    clk_i               => clk_i            ,
                    rst_n_i             => rst_n_i          ,
                    rx_data             => rx_data_sig      ,
                    rx_valid            => rx_valid         ,
                    g_value             => g_value_sig      ,
                    dps_value           => dps_value_sig    ,
                    rst_conf            => rst_conf_sig  
                );

    led_fsm : process (clk_i)
    begin
        if rst_n_i = '0' then 
            LED(2)              <= '0';
            led_counter         <= (others => '0');
            start_signal_conf   <= IDLE;
        elsif rising_edge(clk_i) then

            --CONFİG Led
            case start_signal_conf is
                when IDLE   =>
                    if rst_conf_sig = '1' then 
                        start_signal_conf <= LIGTH;
                    end if;
                when LIGTH  =>
                    if (led_counter >= STD_LOGIC_VECTOR(shift_right(to_unsigned(CLK_FREQ, 25), 1))) then 
                        start_signal_conf <= OFF;
                    else  
                        LED(2) <= '1';
                        led_counter <= STD_LOGIC_VECTOR(signed(led_counter) + 1) ;
                    end if;
                WHEN OFF    =>
                    led_counter <= (others => '0'); 
                    LED(2) <= '0';
                    if rst_conf_sig = '0' then 
                        start_signal_conf <= IDLE;
                    end if;
                when others =>
                    start_signal_conf <= IDLE;
            end case;
            LED(0) <= fifo_full_i;
        end if;
    end process led_fsm;


    Heartbeat_LED: process(clk_i)
    begin
        if rising_edge(clk_i) then
            if data_valid_out = '1' then
                valid_sayici <= valid_sayici + 1;
            end if;
        end if;
    end process;

    LED(1) <= valid_sayici(5);
    LED(3) <= not rst_n_i;
end Behavioral;