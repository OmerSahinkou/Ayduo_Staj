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

entity top is
    Generic (
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
            ax_o             : out STD_LOGIC_VECTOR(15 downto 0);
            ay_o             : out STD_LOGIC_VECTOR(15 downto 0);
            az_o             : out STD_LOGIC_VECTOR(15 downto 0);
            gx_o             : out STD_LOGIC_VECTOR(15 downto 0);
            gy_o             : out STD_LOGIC_VECTOR(15 downto 0);
            gz_o             : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    -- =========================================================
    -- SİNYAL TANIMLAMALARI (Jumper Kablolarımız)
    -- =========================================================
    
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

    signal switch_out      : STD_LOGIC := '1';
    -- =========================================================
    -- UART GÖNDERIM STATE MACHINE (FSM) - FRAME SYNC MARKERİ İLE
    -- =========================================================
    -- YENİ STATE: SEND_MARKER
    type uart_state_t is (IDLE, SEND_MARKER, LOAD_DATA, SEND_PULSE, WAIT_BUSY_HIGH, WAIT_BUSY_LOW);
    signal uart_state : uart_state_t := IDLE;
    signal byte_idx   : integer range 0 to 15 := 0;  -- 0-14 = 15 byte (marker + 14 veri)
    
    --rx counter 
    signal byte_idx_uart   : integer range 0 to 4  := 0 ;
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
            clk_i            => clk_i,
            rst_i            => rst_n_i,
            switch_out       => switch_out,
            data_valid_i     => spi_data_valid,
            rx_data_i        => spi_to_mpu_data,
            start_transfer_o => spi_start,
            mosi_data_o      => mpu_to_spi_data, 
            spi_cs_n_o       => spi_cs_n_o,
            ax_o             => accel_x,
            ay_o             => accel_y,
            az_o             => accel_z,
            gx_o             => gyro_x,
            gy_o             => gyro_y,
            gz_o             => gyro_z
        );

    -- =========================================================
    -- UART GÖNDERIM STATE MACHINE
    -- =========================================================
    -- FRAME FORMATÜ:
    -- [0xAA] [AX_H] [AX_L] [AY_H] [AY_L] [AZ_H] [AZ_L] 
    -- [GX_H] [GX_L] [GY_H] [GY_L] [GZ_H] [GZ_L] [CR] [LF]
    -- Toplam: 15 byte
    -- =========================================================
    
    send_data:process(clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            tx_start_sig <= '0';
            uart_state   <= IDLE;
            byte_idx     <= 0;
        elsif rising_edge(clk_i) then
            
            tx_start_sig <= '0';  -- One-cycle pulse

            case uart_state is
            
                -- =====================================================
                -- STATE 1: IDLE - UART'ın boş olmasını bekle
                -- =====================================================
                when IDLE =>
                    if tx_busy_sig = '0' then
                        uart_state <= LOAD_DATA; -- SEND_MARKER yerine doğrudan LOAD_DATA
                        byte_idx   <= 0;
                    end if;

                -- =====================================================
                -- STATE 2: SEND_MARKER - 0xAA (frame sync) gönder
                -- =====================================================
                when SEND_MARKER =>
                    tx_data_sig  <= x"AA";  -- ← FRAME SYNC MARKER
                    uart_state   <= SEND_PULSE;

                -- =====================================================
                -- STATE 3: LOAD_DATA - Byte'ı seç ve hazırla
                -- =====================================================
                when LOAD_DATA =>
                    case byte_idx is
                        when 0  => tx_data_sig <= x"AA";                  -- MARKER
                        when 1  => tx_data_sig <= accel_x(15 downto 8);   -- AX_H
                        when 2  => tx_data_sig <= accel_x(7 downto 0);    -- AX_L
                        when 3  => tx_data_sig <= accel_y(15 downto 8);   -- AY_H
                        when 4  => tx_data_sig <= accel_y(7 downto 0);    -- AY_L
                        when 5  => tx_data_sig <= accel_z(15 downto 8);   -- AZ_H
                        when 6  => tx_data_sig <= accel_z(7 downto 0);    -- AZ_L
                        
                        when 7  => tx_data_sig <= gyro_x(15 downto 8);    -- GX_H
                        when 8  => tx_data_sig <= gyro_x(7 downto 0);     -- GX_L
                        when 9  => tx_data_sig <= gyro_y(15 downto 8);    -- GY_H
                        when 10 => tx_data_sig <= gyro_y(7 downto 0);     -- GY_L
                        when 11 => tx_data_sig <= gyro_z(15 downto 8);    -- GZ_H
                        when 12 => tx_data_sig <= gyro_z(7 downto 0);     -- GZ_L
                        
                        when 13 => tx_data_sig <= x"0D";  -- CR (Carriage Return)
                        when 14 => tx_data_sig <= x"0A";  -- LF (Line Feed)
                        
                        when others => tx_data_sig <= x"00";
                    end case;
                    uart_state <= SEND_PULSE;

                -- =====================================================
                -- STATE 4: SEND_PULSE - TX'i başlat (1 cycle pulse)
                -- =====================================================
                when SEND_PULSE =>
                    tx_start_sig <= '1';
                    uart_state   <= WAIT_BUSY_HIGH;

                -- =====================================================
                -- STATE 5: WAIT_BUSY_HIGH - TX busy olmasını bekle
                -- =====================================================
                when WAIT_BUSY_HIGH =>
                    if tx_busy_sig = '1' then
                        uart_state <= WAIT_BUSY_LOW;
                    end if;

                -- =====================================================
                -- STATE 6: WAIT_BUSY_LOW - TX tamamlanmasını bekle
                -- =====================================================
                when WAIT_BUSY_LOW =>
                    if tx_busy_sig = '0' then
                        if byte_idx = 14 then  -- Toplam 15 byte (0'dan 14'e)
                            byte_idx   <= 0;
                            uart_state <= IDLE;
                        else
                            byte_idx   <= byte_idx + 1;
                            uart_state <= LOAD_DATA;
                        end if;
                    end if;
                when others =>
                    uart_state <= IDLE;
            end case;
        end if;
    end process send_data;

Control_Servo : process (clk_i, rst_n_i)
begin
    if rst_n_i = '0' then 
        angle_reg_0   <= (others => '0'); 
        angle_reg_1   <= (others => '0'); 
        angle_reg_2   <= (others => '0');
        byte_idx_uart <= 0;
    elsif rising_edge(clk_i) then
        if (rx_valid = '1') then 
            if (rx_data_sig = X"BB") then 
                byte_idx_uart <= 1;
            elsif (rx_data_sig = X"66") then
                byte_idx_uart <= 0;
            else
                case byte_idx_uart is
                    when 1 =>
                        angle_reg_0   <= unsigned(rx_data_sig);
                        byte_idx_uart <= 2;
                    when 2 =>
                        angle_reg_1   <= unsigned(rx_data_sig);
                        byte_idx_uart <= 3;
                    when 3 =>
                        angle_reg_2   <= unsigned(rx_data_sig);
                        byte_idx_uart <= 0; 
                    when others =>
                        byte_idx_uart <= 0;
                end case;
            end if;
            
        end if;
    end if;
end process Control_Servo;
end Behavioral;