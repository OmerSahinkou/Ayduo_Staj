----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/17/2026 12:37:36 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: MPU6500, SPI, UART ve Servo Entegrasyonu
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Generic (
        CLK_FREQ  : integer := 33_333_333; 
        BAUD_RATE : integer := 115200
    );
    Port (
        clk_i       : in  STD_LOGIC;
        rst_n_i     : in  STD_LOGIC;
        -- Servo
        pwm_out     : out STD_LOGIC;
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
            CLK_FREQ   : integer := 50_000_000;
            SPI_FREQ   : integer := 5_000_000;
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
    signal angle_reg       : unsigned(7 downto 0) := (others => '0');
    
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

    -- UART Gönderim State Machine (FSM) Sinyalleri
    type uart_state_t is (IDLE, LOAD_DATA, SEND_PULSE, WAIT_BUSY_HIGH, WAIT_BUSY_LOW);
    signal uart_state : uart_state_t := IDLE;
    signal byte_idx   : integer range 0 to 13 := 0;
begin

    -- =========================================================
    -- COMPONENT BAĞLANTILARI (Kabloları Takıyoruz)
    -- =========================================================

    Inst_pwm_servo: pwm_servo
        generic map ( CLK_FREQ => CLK_FREQ )
        port map (
            clk_i       => clk_i,
            rst_n_i     => rst_n_i,
            servo_angle => std_logic_vector(angle_reg),
            pwm_out     => pwm_out
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
            SPI_FREQ    => 5_000_000,
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

process(clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            tx_start_sig <= '0';
            uart_state   <= IDLE;
            byte_idx     <= 0;
            
        elsif rising_edge(clk_i) then
            
            tx_start_sig <= '0';

            case uart_state is
                when IDLE =>
                    if tx_busy_sig = '0' then
                        uart_state <= LOAD_DATA;
                    end if;

                when LOAD_DATA =>
                    case byte_idx is
                        when 0  => tx_data_sig <= accel_x(15 downto 8); 
                        when 1  => tx_data_sig <= accel_x(7 downto 0);  
                        when 2  => tx_data_sig <= accel_y(15 downto 8); 
                        when 3  => tx_data_sig <= accel_y(7 downto 0);  
                        when 4  => tx_data_sig <= accel_z(15 downto 8); 
                        when 5  => tx_data_sig <= accel_z(7 downto 0);  
                        
                        when 6  => tx_data_sig <= gyro_x(15 downto 8);  
                        when 7  => tx_data_sig <= gyro_x(7 downto 0);   
                        when 8  => tx_data_sig <= gyro_y(15 downto 8);  
                        when 9  => tx_data_sig <= gyro_y(7 downto 0);   
                        when 10 => tx_data_sig <= gyro_z(15 downto 8);  
                        when 11 => tx_data_sig <= gyro_z(7 downto 0);   
                        
                        when 12 => tx_data_sig <= x"0D";
                        when 13 => tx_data_sig <= x"0A";
                        
                        when others => tx_data_sig <= x"00";
                    end case;
                    
                    uart_state <= SEND_PULSE;

                when SEND_PULSE =>
                    tx_start_sig <= '1';
                    uart_state   <= WAIT_BUSY_HIGH;

                when WAIT_BUSY_HIGH =>
                    if tx_busy_sig = '1' then
                        uart_state <= WAIT_BUSY_LOW;
                    end if;

                when WAIT_BUSY_LOW =>
                    if tx_busy_sig = '0' then
                        if byte_idx = 13 then
                            byte_idx <= 0;
                        else
                            byte_idx <= byte_idx + 1;
                        end if;
                        uart_state <= IDLE;
                    end if;

                when others =>
                    uart_state <= IDLE;
            end case;
        end if;
    end process;

end Behavioral;