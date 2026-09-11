library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_MPU_Servo is
    Generic (
        CLK_FREQ  : integer := 33_333_333; 
        BAUD_RATE : integer := 115_200
    );
    Port (
        clk_i       : in  STD_LOGIC;
        rst_n_i     : in  STD_LOGIC;
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
        --button
        switch_in   : in STD_LOGIC
    );
end top_MPU_Servo;

architecture Behavioral of top_MPU_Servo is

    -- =========================================================
    -- COMPONENT TANIMLAMALARI (Çiplerimiz)
    -- =========================================================
    component pwm_servo is
        Generic ( CLK_FREQ : integer := 33_333_333 );
        Port ( 
            clk_i       : in STD_LOGIC;
            rst_n_i     : in STD_LOGIC;
            servo_angle : in STD_LOGIC_VECTOR (7 downto 0);
            pwm_out     : out STD_LOGIC
        );
    end component;

    component debounce is
        Generic ( DEBOUNCE_LIMIT : integer := 1000000 );
        Port ( 
            clk_i       : in STD_LOGIC;
            rst_n_i     : in STD_LOGIC;
            switch_in   : in STD_LOGIC;
            switch_out  : out STD_LOGIC
        );
    end component;   

    component uart_tx is 
        generic(
            CLK_FREQ    : integer := 33_333_333;
            BAUD_RATE   : integer := 115_200;
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
            BAUD_RATE  : integer := 115_200;
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

    component AccelRom is
    Port (
        clk_i      : in  STD_LOGIC;
        lut_addr : in  STD_LOGIC_VECTOR(6 downto 0); 
        pwm_val  : out STD_LOGIC_VECTOR(7 downto 0)  
    );
    end component;

    component AccelToServo is
    Port (
        accel_x : in  STD_LOGIC_VECTOR(15 downto 0); 
        lut_addr: out STD_LOGIC_VECTOR(6 downto 0)   
    );
    end component;

    component GyroComplementaryFilter is
    Port (
        clk_i       : in  STD_LOGIC;
        data_valid_out : in STD_LOGIC;
        gz_i        : in  STD_LOGIC_VECTOR(15 downto 0);  -- gyro Z (derecelik/sn)
        accel_x_i   : in  STD_LOGIC_VECTOR(15 downto 0);  -- X accel (stabilizasyon için)
        accel_y_i   : in  STD_LOGIC_VECTOR(15 downto 0);  -- Y accel (stabilizasyon için)
        yaw_o       : out STD_LOGIC_VECTOR(15 downto 0)   -- filtrelenmiş yaw
    );
    end component;
    -- =========================================================
    -- SİNYAL TANIMLAMALARI 
    -- =========================================================
    
    -- Servo Sinyalleri
    signal angle_reg_0       : unsigned(7 downto 0) := (others => '0');
    signal angle_reg_1       : unsigned(7 downto 0) := (others => '0');
    signal angle_reg_2       : unsigned(7 downto 0) := (others => '0');

    signal rom_out_0         : std_logic_vector(7 downto 0);
    signal rom_out_1         : std_logic_vector(7 downto 0);
    signal rom_out_2         : std_logic_vector(7 downto 0);

    -- UART Sinyalleri
    signal tx_start_sig    : std_logic := '0';
    signal tx_data_sig     : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_busy_sig     : std_logic;
    signal rx_data_sig     : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_valid        : std_logic;
    
    -- SPI İç Haberleşme Sinyalleri
    signal spi_start       : std_logic := '0';
    signal spi_data_valid  : std_logic := '0';
    signal mpu_to_spi_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal spi_to_mpu_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    -- Sensör Çıkış Sinyalleri (16-bit)
    signal accel_x, accel_y, accel_z : std_logic_vector(15 downto 0);
    signal gyro_x, gyro_y, gyro_z    : std_logic_vector(15 downto 0);

    --button çıkış sinyali
    signal switch_out       : std_logic := '0';

    signal lut_addr_0: STD_LOGIC_VECTOR(6 downto 0)  ;
    signal lut_addr_1: STD_LOGIC_VECTOR(6 downto 0)  ;
    signal lut_addr_2: STD_LOGIC_VECTOR(6 downto 0)  ;

    signal yaw_wire : STD_LOGIC_VECTOR(15 downto 0);

    signal data_valid_out: std_logic;
    --State Machine Table
    type state_t is (IDLE, Start_Measure, Control_Servo);
    signal state : state_t := IDLE;
begin

    -- =========================================================
    -- COMPONENT BAĞLANTILARI 
    -- =========================================================

    Inst_pwm_servo_0: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => std_logic_vector(angle_reg_0),
            pwm_out     => pwm_out_0
        );

    Inst_pwm_servo_1: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => std_logic_vector(angle_reg_1),
            pwm_out     => pwm_out_1
        );

    Inst_pwm_servo_2: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => std_logic_vector(angle_reg_2),
            pwm_out     => pwm_out_2
        );

    Inst_debounce: debounce
        generic map ( DEBOUNCE_LIMIT => 1000000 )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            switch_in   => switch_in,
            switch_out  => switch_out
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
            clk_i            => clk_i,
            rst_i            => rst_n_i,
            switch_out       => switch_out,
            data_valid_i     => spi_data_valid,
            rx_data_i        => spi_to_mpu_data,
            start_transfer_o => spi_start,
            mosi_data_o      => mpu_to_spi_data, 
            spi_cs_n_o       => spi_cs_n_o,
            data_valid_out   => data_valid_out,
            ax_o             => accel_x,
            ay_o             => accel_y,
            az_o             => accel_z,
            gx_o             => gyro_x,
            gy_o             => gyro_y,
            gz_o             => gyro_z
        );
    Inst_AccelRom_0:AccelRom
        port map(
        clk_i                => clk_i,
        lut_addr             => lut_addr_0,
        pwm_val              => rom_out_0
    );
    Inst_AccelRom_1:AccelRom
        port map(
        clk_i                => clk_i,
        lut_addr             => lut_addr_1,
        pwm_val              => rom_out_1
    );

    Inst_AccelToServo_0:AccelToServo
        port map (
        accel_x     => accel_x,
        lut_addr    => lut_addr_0
    );

    Inst_AccelToServo_1:AccelToServo
        port map (
        accel_x     => accel_y,
        lut_addr    => lut_addr_1
    );
    Inst_GyroComplementaryFilter:GyroComplementaryFilter
        port map (
        clk_i           => clk_i,
        data_valid_out  => data_valid_out,
        gz_i            => gyro_z,
        accel_x_i       => accel_x,
        accel_y_i       => accel_y,
        yaw_o           => yaw_wire
    );
    process (clk_i, rst_n_i) begin 
        if (rst_n_i = '0') then 
            tx_start_sig  <= '0'; 
            tx_data_sig   <= (others => '0');
            state         <= IDLE; 
            angle_reg_0   <= (others => '0'); 
            angle_reg_1   <= (others => '0'); 
            angle_reg_2   <= (others => '0'); 
        elsif rising_edge(clk_i) then 
            tx_start_sig <= '0';
            
            angle_reg_0 <= unsigned(rom_out_0); 
            angle_reg_1 <= unsigned(rom_out_1);
            angle_reg_2 <= unsigned(yaw_wire(15 downto 8));
            if (tx_busy_sig = '0') then 
                tx_start_sig <= '1'; 
                tx_data_sig  <= yaw_wire(15 downto 8); 
            end if; 
        end if; 
    end process;
end Behavioral;