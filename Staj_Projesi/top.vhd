----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/17/2026 12:37:36 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: MPU6500, SPI, UART ve Servo Entegrasyonu
--
-- DÜZELTME: Frame synchronization marker (0xAA) eklendi
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
        sclk_o      : out STD_LOGIC
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
            pwm_out     : out STD_LOGIC
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
        Generic ( DEBOUNCE_LIMIT : integer := 1000000 );
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
            N : integer := 16  -- Giriş veri genişliği (Daima çift sayı olmalıdır, örn: 8, 16, 32)
        );
        Port (
            clk      : in  std_logic;
            data_in  : in  std_logic_vector (N-1 downto 0);
            data_out : out std_logic_vector ((N/2)-1 downto 0)
        );
    end component;
    -- =========================================================
    -- SİNYAL TANIMLAMALARI (Jumper Kablolarımız)
    -- =========================================================
    
    signal data_valid_out    : STD_LOGIC := '0' ;
    -- Servo Sinyalleri
    signal angle_reg_0       : unsigned(7 downto 0) := (others => '0');
    signal angle_reg_1       : unsigned(7 downto 0) := (others => '0');
    signal angle_reg_2       : unsigned(7 downto 0) := (others => '0');
    
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

    -- --cordic
    -- signal i_call_sig   : STD_LOGIC := '0' ;
    -- signal o_done_sig   : STD_LOGIC  ;
    -- signal i_x_sig      : STD_LOGIC_VECTOR(31 downto 0);
    -- signal i_y_sig      : STD_LOGIC_VECTOR(31 downto 0);
    -- signal o_arctan     : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    

    signal switch_out      : STD_LOGIC := '1';

    --root
    signal root_x : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal root_y : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal root_z : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    --SQRT MODULE 

    signal data_in : STD_LOGIC_VECTOR(SQRT_DATA-1 downto 0) := ((others => '0'));
    signal data_out : STD_LOGIC_VECTOR(((SQRT_DATA/2) - 1) downto 0) := ((others => '0'));

    -- =========================================================
    -- UART GÖNDERIM STATE MACHINE (FSM) - FRAME SYNC MARKERİ İLE
    -- =========================================================
    -- YENİ STATE: SEND_MARKER
    type uart_state_t is (IDLE, SEND_MARKER, LOAD_DATA, SEND_PULSE, WAIT_BUSY_HIGH, WAIT_BUSY_LOW);
    signal uart_state : uart_state_t := IDLE;
    signal byte_idx   : integer range 0 to 14 := 0;  -- 0-14 = 15 byte (marker + 14 veri)
    
    --rx counter 
    signal byte_idx_uart   : integer range 0 to 10  := 0 ;

    type t_state is (IDLE, WAIT_CALC, SEND_UART);
    signal state : t_state := IDLE;


    --MPU6500 Data_filters
    signal angle_filtered_x : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_x      : unsigned(7 downto 0);

    signal angle_filtered_y : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_y      : unsigned(7 downto 0);

    signal angle_filtered_z : unsigned(7 downto 0) := to_unsigned(127, 8);
    signal angle_raw_z      : unsigned(7 downto 0);

    signal hesap_temp_x : signed(15 downto 0);
    signal hesap_temp_y : signed(15 downto 0);
    signal hesap_temp_z : signed(15 downto 0);

    signal angle_pool   : signed(31 downto 0);
    signal angle_pool_x : signed(31 downto 0) := (others => '0');
    signal angle_pool_y : signed(31 downto 0) := (others => '0');
    signal uart_timer   : integer range 0 to 3333333 := 0;



    -- --------PID signals------------
    -- signal angle_from_accel_x   : SIGNED(15 downto 0 )  := TO_SIGNED(0,16);
    -- signal angle_from_accel_y   : SIGNED(15 downto 0 )  := TO_SIGNED(0,16);
    -- signal angle_from_accel_z   : SIGNED(15 downto 0 )  := TO_SIGNED(0,16);

    -- signal angle_from_gyro_x    : SIGNED(31 downto 0 )  := TO_SIGNED(0,32);
    -- signal angle_from_gyro_y    : SIGNED(31 downto 0 )  := TO_SIGNED(0,32);
    -- signal angle_from_gyro_z    : SIGNED(31 downto 0 )  := TO_SIGNED(0,32);

    -- signal final_angle_from_x   : SIGNED(15 downto 0 )  := TO_SIGNED(0,16);
    -- signal final_angle_from_y   : SIGNED(15 downto 0 )  := TO_SIGNED(0,16);
    -- signal final_angle_from_z   : SIGNED(15 downto 0 )  := TO_SIGNED(0,16);


    -- signal setpoint_x           : signed(15 downto 0)   := to_signed(0,16);
    -- signal setpoint_y           : signed(15 downto 0)   := to_signed(0,16);
    -- signal setpoint_z           : signed(15 downto 0)   := to_signed(0,16);

    --     -- 2. PID TERIMLERI
    -- signal error_x : signed(15 downto 0);
    -- signal error_y : signed(15 downto 0);
    -- signal error_z : signed(15 downto 0);
    -- signal integral_x : signed(31 downto 0);
    -- signal integral_y : signed(31 downto 0);
    -- signal integral_z : signed(31 downto 0);
    -- signal pid_output_x : signed(15 downto 0);
    -- signal pid_output_y : signed(15 downto 0);
    -- signal pid_output_z : signed(15 downto 0);

    -- signal pid_x, pid_y, pid_z : signed(15 downto 0);

begin

    -- =========================================================
    -- COMPONENT BAĞLANTILARI (Kabloları Takıyoruz)
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
            rx_data_i       => spi_to_mpu_data,
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
    -- Inst_Cordic_x: Cordic
    --     port map(
    --         clk             => clk_i,
    --         reset_n         => rst_n_i,
    --         i_call          => i_call_sig,
    --         i_x             => i_x_sig,
    --         i_y             => i_y_sig,
    --         o_done          => o_done_sig,
    --         o_arctan        => o_arctan,
    --         o_deg           => open,
    --         o_y             => open,
    --         o_x             => open
    --     );

    -- Inst_Cordic_y: Cordic
    --     port map(
    --         clk             => clk_i,
    --         reset_n         => rst_n_i,
    --         i_call          => i_call_sig,
    --         i_x             => i_x_sig,
    --         i_y             => i_y_sig,
    --         o_done          => o_done_sig,
    --         o_arctan        => o_arctan,
    --         o_deg           => open,
    --         o_y             => open,
    --         o_x             => open
    --     );

    -- Inst_SquareRoot: SquareRoot
    --     generic map (
    --         N               =>34
    --     )
    --     port map(
    --         clk             => clk_i,
    --         data_in         => data_in,
    --         data_out        => data_out
    --     );


    --=========================================================
    --ROOT Hesaplama
    --=========================================================

    --root_x <= STD_LOGIC_VECTOR(signed(accel_x) * signed(accel_x)) ;
    --root_y <= STD_LOGIC_VECTOR(signed(accel_y) * signed(accel_y)) ;
    --root_z <= STD_LOGIC_VECTOR(signed(accel_z) * signed(accel_z)) ;

    --=========================================================
    --UART GÖNDERIM STATE MACHINE
    --=========================================================
    --FRAME FORMATÜ:
    --[0xAA] [AX_H] [AX_L] [AY_H] [AY_L] [AZ_H] [AZ_L] 
    --[GX_H] [GX_L] [GY_H] [GY_L] [GZ_H] [GZ_L] [CR] [LF]
    --Toplam: 15 byte
    --=========================================================
    
    -- send_data:process(clk_i, rst_n_i)
    -- begin
    --     if rst_n_i = '0' then
    --         tx_start_sig <= '0';
    --         uart_state   <= IDLE;
    --         byte_idx     <= 0;
    --     elsif rising_edge(clk_i) then
            
    --         tx_start_sig <= '0';  -- One-cycle pulse

    --         case uart_state is
            
    --             -- =====================================================
    --             -- STATE 1: IDLE - UART'ın boş olmasını bekle
    --             -- =====================================================
    --             when IDLE =>
    --                 if tx_busy_sig = '0' then
    --                     uart_state <= LOAD_DATA; -- SEND_MARKER yerine doğrudan LOAD_DATA
    --                     byte_idx   <= 0;
    --                 end if;

    --             -- =====================================================
    --             -- STATE 2: SEND_MARKER - 0xAA (frame sync) gönder
    --             -- =====================================================
    --             when SEND_MARKER =>
    --                 tx_data_sig  <= x"AA";  -- ← FRAME SYNC MARKER
    --                 uart_state   <= SEND_PULSE;

    --             -- =====================================================
    --             -- STATE 3: LOAD_DATA - Byte'ı seç ve hazırla
    --             -- =====================================================
    --             when LOAD_DATA =>
    --                 case byte_idx is
    --                     when 0  => tx_data_sig <= x"AA";                  -- MARKER
    --                     when 1  => tx_data_sig <= accel_x(15 downto 8);   -- AX_H
    --                     when 2  => tx_data_sig <= accel_x(7 downto 0);    -- AX_L
    --                     when 3  => tx_data_sig <= accel_y(15 downto 8);   -- AY_H
    --                     when 4  => tx_data_sig <= accel_y(7 downto 0);    -- AY_L
    --                     when 5  => tx_data_sig <= accel_z(15 downto 8);   -- AZ_H
    --                     when 6  => tx_data_sig <= accel_z(7 downto 0);    -- AZ_L
                        
    --                     when 7  => tx_data_sig <= gyro_x(15 downto 8);    -- GX_H
    --                     when 8  => tx_data_sig <= gyro_x(7 downto 0);     -- GX_L
    --                     when 9  => tx_data_sig <= gyro_y(15 downto 8);    -- GY_H
    --                     when 10 => tx_data_sig <= gyro_y(7 downto 0);     -- GY_L
    --                     when 11 => tx_data_sig <= gyro_z(15 downto 8);    -- GZ_H
    --                     when 12 => tx_data_sig <= gyro_z(7 downto 0);     -- GZ_L
                        
    --                     when 13 => tx_data_sig <= x"0D";  -- CR (Carriage Return)
    --                     when 14 => tx_data_sig <= x"0A";  -- LF (Line Feed)
                        
    --                     when others => tx_data_sig <= x"00";
    --                 end case;
    --                 uart_state <= SEND_PULSE;

    --             -- =====================================================
    --             -- STATE 4: SEND_PULSE - TX'i başlat (1 cycle pulse)
    --             -- =====================================================
    --             when SEND_PULSE =>
    --                 tx_start_sig <= '1';
    --                 uart_state   <= WAIT_BUSY_HIGH;

    --             -- =====================================================
    --             -- STATE 5: WAIT_BUSY_HIGH - TX busy olmasını bekle
    --             -- =====================================================
    --             when WAIT_BUSY_HIGH =>
    --                 if tx_busy_sig = '1' then
    --                     uart_state <= WAIT_BUSY_LOW;
    --                 end if;

    --             -- =====================================================
    --             -- STATE 6: WAIT_BUSY_LOW - TX tamamlanmasını bekle
    --             -- =====================================================
    --             when WAIT_BUSY_LOW =>
    --                 if tx_busy_sig = '0' then
    --                     if byte_idx = 14 then  -- Toplam 15 byte (0'dan 14'e)
    --                         byte_idx   <= 0;
    --                         uart_state <= IDLE;
    --                     else
    --                         byte_idx   <= byte_idx + 1;
    --                         uart_state <= LOAD_DATA;
    --                     end if;
    --                 end if;
    --             when others =>
    --                 uart_state <= IDLE;
    --         end case;
    --     end if;
    -- end process send_data;

    -- -- --=========================================================
    -- -- --Servo  Control STATE MACHINE
    -- -- --=========================================================
    -- Control_Servo : process (clk_i, rst_n_i)
    -- begin
    --     if rst_n_i = '0' then 
    --         angle_reg_0   <= (others => '0'); 
    --         angle_reg_1   <= (others => '0'); 
    --         angle_reg_2   <= (others => '0');
    --         byte_idx_uart <= 0;
    --     elsif rising_edge(clk_i) then
    --         if (rx_valid = '1') then 
    --             if (rx_data_sig = X"BB") then 
    --                 byte_idx_uart <= 1;
    --             elsif (rx_data_sig = X"66") then
    --                 byte_idx_uart <= 0;
    --             else
    --                 case byte_idx_uart is
    --                     when 1 =>
    --                         angle_reg_0   <= unsigned(rx_data_sig);
    --                         byte_idx_uart <= 2;
    --                     when 2 =>
    --                         angle_reg_1   <= unsigned(rx_data_sig);
    --                         byte_idx_uart <= 3;
    --                     when 3 =>
    --                         angle_reg_2   <= unsigned(rx_data_sig);
    --                         byte_idx_uart <= 0; 
    --                     when others =>
    --                         byte_idx_uart <= 0;
    --                 end case;
    --             end if;
                
    --         end if;
    --     end if;
    -- end process Control_Servo;

-- =========================================================
-- SQRT Test STATE MACHINE
-- =========================================================

    -- SQRT_Test : process(clk_i, rst_n_i)
    -- begin
    --     if rst_n_i = '0' then
    --         tx_start_sig <= '0';
    --         uart_state   <= IDLE;
    --         byte_idx     <= 0;
    --     elsif rising_edge(clk_i) then
    --         tx_start_sig <= '0';
    --         data_in <= std_logic_vector(resize(signed(root_y) + signed(root_z), SQRT_DATA));
    --         --if(tx_busy_sig = '0') then 
    --             case uart_state is
                
    --                 -- =====================================================
    --                 -- STATE 1: IDLE - UART'ın boş olmasını bekle
    --                 -- =====================================================
    --                 when IDLE =>
    --                     if tx_busy_sig = '0' then
    --                         uart_state <= LOAD_DATA; -- SEND_MARKER yerine doğrudan LOAD_DATA
    --                         byte_idx   <= 0;
    --                     end if;

    --                 -- =====================================================
    --                 -- STATE 2: SEND_MARKER - 0xAA (frame sync) gönder
    --                 -- =====================================================
    --                 when SEND_MARKER =>
    --                     tx_data_sig  <= x"AA";  -- ← FRAME SYNC MARKER
    --                     uart_state   <= SEND_PULSE;

    --                 -- =====================================================
    --                 -- STATE 3: LOAD_DATA - Byte'ı seç ve hazırla
    --                 -- =====================================================
    --                 when LOAD_DATA =>
    --                     case byte_idx is
    --                         when 0  => tx_data_sig <= x"AA";                  -- MARKER
    --                         when 1  => tx_data_sig <= accel_x(15 downto 8);   -- AX_H
    --                         when 2  => tx_data_sig <= accel_x(7 downto 0);    -- AX_L
    --                         when 3  => tx_data_sig <= accel_y(15 downto 8);   -- AY_H
    --                         when 4  => tx_data_sig <= accel_y(7 downto 0);    -- AY_L
    --                         when 5  => tx_data_sig <= accel_z(15 downto 8);   -- AZ_H
    --                         when 6  => tx_data_sig <= accel_z(7 downto 0);    -- AZ_L
                            
    --                         when 7  => tx_data_sig <= gyro_x(15 downto 8);    -- GX_H
    --                         when 8  => tx_data_sig <= gyro_x(7 downto 0);     -- GX_L
    --                         when 9  => tx_data_sig <= gyro_y(15 downto 8);    -- GY_H
    --                         when 10 => tx_data_sig <= gyro_y(7 downto 0);     -- GY_L
    --                         when 11 => tx_data_sig <= gyro_z(15 downto 8);    -- GZ_H
    --                         when 12 => tx_data_sig <= gyro_z(7 downto 0);     -- GZ_L
    --                         when 13 => tx_data_sig <= "00000000"; -- Veri yok, boş geç
    --                         when 14 => tx_data_sig <= "00000000"; -- Veri yok, boş geç
    --                         when 15 => tx_data_sig <= "0000000" & data_out(16); -- 17. bit (En yüksek bit) ve yanına 7 adet sıfır dolgusu
    --                         when 16 => tx_data_sig <= data_out(15 downto 8);    -- Orta 8 bit
    --                         when 17 => tx_data_sig <= data_out(7 downto 0);     -- En düşük 8 bit

    --                         when 18 => tx_data_sig <= x"0D";  -- CR (Carriage Return)
    --                         when 19 => tx_data_sig <= x"0A";  -- LF (Line Feed)
                            
    --                         when others => tx_data_sig <= x"00";
    --                     end case;
    --                     uart_state <= SEND_PULSE;

    --                 -- =====================================================
    --                 -- STATE 4: SEND_PULSE - TX'i başlat (1 cycle pulse)
    --                 -- =====================================================
    --                 when SEND_PULSE =>
    --                     tx_start_sig <= '1';
    --                     uart_state   <= WAIT_BUSY_HIGH;

    --                 -- =====================================================
    --                 -- STATE 5: WAIT_BUSY_HIGH - TX busy olmasını bekle
    --                 -- =====================================================
    --                 when WAIT_BUSY_HIGH =>
    --                     if tx_busy_sig = '1' then
    --                         uart_state <= WAIT_BUSY_LOW;
    --                     end if;

    --                 -- =====================================================
    --                 -- STATE 6: WAIT_BUSY_LOW - TX tamamlanmasını bekle
    --                 -- =====================================================
    --                 when WAIT_BUSY_LOW =>
    --                     if tx_busy_sig = '0' then
    --                         if byte_idx = 19 then  -- Toplam 15 byte (0'dan 14'e)
    --                             byte_idx   <= 0;
    --                             uart_state <= IDLE;
    --                         else
    --                             byte_idx   <= byte_idx + 1;
    --                             uart_state <= LOAD_DATA;
    --                         end if;
    --                     end if;
    --                 when others =>
    --                     uart_state <= IDLE;
    --             end case;
    --         --end if;
    --     end if;
    -- end process SQRT_Test;


    -- =========================================================
    -- PD Test STATE MACHINE
    -- =========================================================
    hesap_temp_x <= to_signed(127, 16) + resize(shift_right(angle_pool_x, 14), 16);
    hesap_temp_y <= to_signed(127, 16) + resize(shift_right(angle_pool_y, 12), 16);
    hesap_temp_z <= to_signed(127, 16) - resize(shift_right(angle_pool,   12), 16);
-- -- 2. ADIM: Güvenli Process Bloğu
PD_Test : process (clk_i, rst_n_i)
    variable v_angle_x : SIGNED(31 downto 0) := (others => '0');
    variable v_angle_y : SIGNED(31 downto 0) := (others => '0');
begin
    if rst_n_i = '0' then 
        angle_filtered_x <= to_unsigned(127, 8);
        angle_filtered_y <= to_unsigned(127, 8);
        angle_filtered_z <= to_unsigned(127, 8);
        angle_raw_x      <= to_unsigned(127, 8);
        angle_raw_y      <= to_unsigned(127, 8);
        angle_raw_z      <= to_unsigned(127, 8);
        tx_start_sig     <= '0';
        uart_timer       <= 0;
    elsif rising_edge(clk_i) then
        tx_start_sig <= '0';
        v_angle_x := angle_pool_x ;
        v_angle_y := angle_pool_y ;
        if data_valid_out = '1' then 
            if to_integer(abs(signed(gyro_z))) > 15 then 
                angle_pool <= angle_pool + signed(gyro_z);
            end if;

            if to_integer(abs(signed(gyro_x))) > 15 then 
                v_angle_x := v_angle_x + signed(gyro_x); 
            end if;

            angle_pool_x <= v_angle_x - shift_right(v_angle_x, 6) + shift_right(signed(accel_x), 6);

            if to_integer(abs(signed(gyro_y))) > 15 then 
                v_angle_y := v_angle_y + signed(gyro_y);
            end if;
            angle_pool_y <= v_angle_y - shift_right(v_angle_y, 6) + shift_right(signed(accel_y), 6);
        end if;

        -- X Ekseni Koruması
        if hesap_temp_x > 255 then
            angle_raw_x <= to_unsigned(255, 8);
        elsif hesap_temp_x < 0 then
            angle_raw_x <= to_unsigned(0, 8);
        else
            angle_raw_x <= unsigned(hesap_temp_x(7 downto 0));
        end if;

        -- Y Ekseni Koruması
        if hesap_temp_y > 255 then
            angle_raw_y <= to_unsigned(255, 8);
        elsif hesap_temp_y < 0 then
            angle_raw_y <= to_unsigned(0, 8);
        else
            angle_raw_y <= unsigned(hesap_temp_y(7 downto 0));
        end if;
        -- Z Ekseni Koruması
        if hesap_temp_z > 255 then
            angle_raw_z <= to_unsigned(255, 8);
        elsif hesap_temp_z < 0 then 
            angle_raw_z <= to_unsigned(0, 8);  
        else 
            angle_raw_z <= unsigned(hesap_temp_z(7 downto 0));
        end if;

        -- -- X ekseni Filter
        -- if abs(to_integer(angle_raw_x) - to_integer(angle_filtered_x)) > 2 then
        --     angle_filtered_x <= resize(shift_right(resize(angle_filtered_x, 10) * 3 + resize(angle_raw_x, 10), 2), 8);
        -- end if;
        -- -- Y ekseni Filter

        -- if abs(to_integer(angle_raw_y) - to_integer(angle_filtered_y)) > 2 then
        --     angle_filtered_y <= resize(shift_right(resize(angle_filtered_y, 10) * 3 + resize(angle_raw_y, 10), 2), 8);
        -- end if;
        ---- Z ekseni Filter
        --if abs(to_integer(angle_raw_z) - to_integer(angle_filtered_z)) > 2 then
        --    angle_filtered_z <= resize(shift_right(resize(angle_filtered_z, 10) * 3 + resize(angle_raw_z, 10), 2), 8);
        --end if;

        if uart_timer < 3333333 then
            uart_timer <= uart_timer + 1;
        else
            uart_timer <= 0;
            if tx_busy_sig = '0' then
                tx_start_sig <= '1';
                tx_data_sig  <= std_logic_vector(angle_reg_2); 
            end if;
        end if;
    end if;
end process;

angle_reg_0 <= angle_raw_x;
angle_reg_1 <= angle_raw_y;
angle_reg_2 <= angle_raw_z;


-- =========================================================
-- filter  Test STATE MACHINE
-- =========================================================

-- hesap_temp_x <= signed(resize(angle_filtered_x, 16));
-- hesap_temp_y <= signed(resize(angle_filtered_y, 16));

-- process (clk_i,rst_n_i)
-- begin
--     if rst_n_i = '0' then 
--         tx_data_sig <= (others => '0');
--         tx_start_sig <= '0';
--     elsif rising_edge(clk_i) then
--                     angle_filtered_x <= unsigned(
--                         resize((resize(signed(angle_filtered_x), 17) * 3 + resize(signed(accel_x), 17)) / 4, 16)
--                     );
--                     angle_filtered_y <= unsigned(
--                         resize((resize(signed(angle_filtered_y), 17) * 3 + resize(signed(accel_y), 17)) / 4, 16)
--                     );
--             tx_start_sig <= '0';
--             data_in <= std_logic_vector(resize(signed(root_y) + signed(root_z), SQRT_DATA));
--             --if(tx_busy_sig = '0') then 
--                 case uart_state is
                
--                     -- =====================================================
--                     -- STATE 1: IDLE - UART'ın boş olmasını bekle
--                     -- =====================================================
--                     when IDLE =>
--                         if tx_busy_sig = '0' then
--                             uart_state <= LOAD_DATA; -- SEND_MARKER yerine doğrudan LOAD_DATA
--                             byte_idx   <= 0;
--                         end if;

--                     -- =====================================================
--                     -- STATE 2: SEND_MARKER - 0xAA (frame sync) gönder
--                     -- =====================================================
--                     when SEND_MARKER =>
--                         tx_data_sig  <= x"AA";  -- ← FRAME SYNC MARKER
--                         uart_state   <= SEND_PULSE;

--                     -- =====================================================
--                     -- STATE 3: LOAD_DATA - Byte'ı seç ve hazırla
--                     -- =====================================================
--                     when LOAD_DATA =>
--                         case byte_idx is
--                             when 0  => tx_data_sig <= x"AA";                  -- MARKER
--                             when 1 => tx_data_sig <= STD_LOGIC_VECTOR(hesap_temp_x(15 downto 8)); -- AX_H
--                             when 2 => tx_data_sig <= STD_LOGIC_VECTOR(hesap_temp_x(7 downto 0));  -- AX_L
--                             when 3 => tx_data_sig <= STD_LOGIC_VECTOR(hesap_temp_y(15 downto 8)); -- AY_H
--                             when 4 => tx_data_sig <= STD_LOGIC_VECTOR(hesap_temp_y(7 downto 0));  -- AY_L
--                             when 5  => tx_data_sig <= accel_z(15 downto 8);    -- AZ_H
--                             when 6  => tx_data_sig <= accel_z(7 downto 0);    -- AZ_L
                            
--                             when 7  => tx_data_sig <= gyro_x(15 downto 8);    -- GX_H
--                             when 8  => tx_data_sig <= gyro_x(7 downto 0);     -- GX_L
--                             when 9  => tx_data_sig <= gyro_y(15 downto 8);    -- GY_H
--                             when 10 => tx_data_sig <= gyro_y(7 downto 0);     -- GY_L
--                             when 11 => tx_data_sig <= gyro_z(15 downto 8);    -- GZ_H
--                             when 12 => tx_data_sig <= gyro_z(7 downto 0);     -- GZ_L
--                             when 13 => tx_data_sig <= x"0D";  -- CR (Carriage Return)
--                             when 14 => tx_data_sig <= x"0A";  -- LF (Line Feed)
                            
--                             when others => tx_data_sig <= x"00";
--                         end case;
--                         uart_state <= SEND_PULSE;

--                     -- =====================================================
--                     -- STATE 4: SEND_PULSE - TX'i başlat (1 cycle pulse)
--                     -- =====================================================
--                     when SEND_PULSE =>
--                         tx_start_sig <= '1';
--                         uart_state   <= WAIT_BUSY_HIGH;

--                     -- =====================================================
--                     -- STATE 5: WAIT_BUSY_HIGH - TX busy olmasını bekle
--                     -- =====================================================
--                     when WAIT_BUSY_HIGH =>
--                         if tx_busy_sig = '1' then
--                             uart_state <= WAIT_BUSY_LOW;
--                         end if;

--                     -- =====================================================
--                     -- STATE 6: WAIT_BUSY_LOW - TX tamamlanmasını bekle
--                     -- =====================================================
--                     when WAIT_BUSY_LOW =>
--                         if tx_busy_sig = '0' then
--                             if byte_idx = 14 then  -- Toplam 15 byte (0'dan 14'e)
--                                 byte_idx   <= 0;
--                                 uart_state <= IDLE;
--                             else
--                                 byte_idx   <= byte_idx + 1;
--                                 uart_state <= LOAD_DATA;
--                             end if;
--                         end if;
--                     when others =>
--                         uart_state <= IDLE;
--                 end case;
--     end if;
-- end process;




    -- =========================================================
    -- PID  Test STATE MACHINE
    -- =========================================================

    -- angle_from_accel_x  <= signed(accel_x) ;
    -- angle_from_accel_y  <= signed(accel_y) ;
    -- angle_from_accel_z  <= signed(accel_z) ;



    -- final_angle_from_x <= resize(shift_right(
    --         (angle_from_gyro_x(25 downto 10) * 95) + (angle_from_accel_x * 5),
    --         7
    --     ),16
    -- );
    -- final_angle_from_y <= resize(shift_right(
    --         (angle_from_gyro_y(25 downto 10) * 95) + (angle_from_accel_y * 5),
    --         7
    --     ),16
    -- );
    -- final_angle_from_z <= resize(shift_right(
    --         (angle_from_gyro_z(25 downto 10) * 95) + (angle_from_accel_z * 5),
    --         7
    --     ),16
    -- );


    -- PID:process (clk_i,rst_n_i)
    -- begin
    --     if(rst_n_i = '0') then 
    --         tx_data_sig <= (others => '0');
    --         tx_start_sig <= '0';

    --         angle_from_gyro_x   <= (others => '0');
    --         angle_from_gyro_y   <= (others => '0');
    --         angle_from_gyro_z   <= (others => '0');

    --         error_x             <= (others => '0');
    --         error_y             <= (others => '0');
    --         error_z             <= (others => '0');

    --         integral_x          <= (others => '0');
    --         integral_y          <= (others => '0');
    --         integral_z          <= (others => '0');

    --         pid_x               <= (others => '0');
    --         pid_y               <= (others => '0');
    --         pid_z               <= (others => '0');

    --     elsif rising_edge(clk_i) then
    --         if spi_data_valid = '1' then 
    --             if to_integer(abs(signed(gyro_z))) > 15 then 
    --             angle_from_gyro_z <= angle_from_gyro_z + shift_right(signed(gyro_z), 8);
    --             end if;
    --             if to_integer(abs(signed(gyro_x))) > 15 then 
    --             angle_from_gyro_x <= angle_from_gyro_x + shift_right(signed(gyro_x), 8);
    --             end if;
    --             if to_integer(abs(signed(gyro_y))) > 15 then 
    --             angle_from_gyro_y <= angle_from_gyro_y + shift_right(signed(gyro_y), 8);
    --             end if;

    --             --error
    --             error_x <= setpoint_x - final_angle_from_x;
    --             error_y <= setpoint_y - final_angle_from_y;
    --             error_z <= setpoint_z - final_angle_from_z;

    --             --Integral
    --             if abs(to_integer(error_x)) < 100 then
    --                 integral_x <= integral_x + resize(error_x, 32);
    --             end if;
    --             if abs(to_integer(error_y)) < 100 then
    --                 integral_y <= integral_y + resize(error_y, 32);
    --             end if;
    --             if abs(to_integer(error_z)) < 100 then
    --                 integral_z <= integral_z + resize(error_z, 32);
    --             end if;

    --             --Pid OutPut
    --             pid_x <= resize(shift_left(error_x, 4) + shift_right(integral_x, 10) - shift_right(signed(gyro_x), 6),16);
    --             pid_y <= resize(shift_left(error_y, 4) + shift_right(integral_y, 10) - shift_right(signed(gyro_y), 6),16);
    --             pid_z <= resize(shift_left(error_z, 4) + shift_right(integral_z, 10) - shift_right(signed(gyro_z), 6),16);
    --                         -- SERVO PWM (0-255)
    --             if pid_x > 127 then
    --                 angle_reg_0 <= resize(to_unsigned(255, 9),8);
    --             elsif pid_x < -128 then
    --                 angle_reg_0 <= resize(to_unsigned(0, 9),8);
    --             else
    --                 angle_reg_0 <= resize(unsigned(resize(pid_x + 128, 9)),8);
    --             end if;
                
    --             if pid_y > 127 then
    --                 angle_reg_1 <= resize(to_unsigned(255, 9),8);
    --             elsif pid_y < -128 then
    --                 angle_reg_1 <= resize(to_unsigned(0, 9),8);
    --             else
    --                 angle_reg_1 <= resize(unsigned(resize(pid_y + 128, 9)),8);
    --             end if;
                
    --             if pid_z > 127 then
    --                 angle_reg_2 <= resize(to_unsigned(255, 9),8);
    --             elsif pid_z < -128 then
    --                 angle_reg_2 <= resize(to_unsigned(0, 9),8);
    --             else
    --                 angle_reg_2 <= resize(unsigned(resize(pid_z + 128, 9)),8);
    --             end if;
    --         end if;
    --     end if;
    -- end process PID;
end Behavioral;