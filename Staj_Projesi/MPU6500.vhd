----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/17/2026 11:37:36 AM
-- Module Name: MPU6500 - Behavioral
-- FIXED VERSION FOR MODE 3 SPI
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity MPU6500_Controller is
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
end entity MPU6500_Controller;

architecture Behavioral of MPU6500_Controller is

    -- =========================================================
    -- REGISTER ADDRESLERI (MPU-6500 Datasheet)
    -- =========================================================
    constant ADDR_PWR_MGMT_1    : std_logic_vector(7 downto 0) := x"6B";
    constant ADDR_USER_CTRL     : std_logic_vector(7 downto 0) := x"6A";
    constant ADDR_GYRO_CONFIG   : std_logic_vector(7 downto 0) := x"1B";
    constant ADDR_ACCEL_CONFIG  : std_logic_vector(7 downto 0) := x"1C";
    constant ADDR_CONFIG        : std_logic_vector(7 downto 0) := x"1A";
    constant ADDR_ACCEL_XOUT_H  : std_logic_vector(7 downto 0) := x"3B";
    
    -- =========================================================
    -- KONFIGÜRASYON DEĞERLERİ
    -- =========================================================
    type config_array_t is array (0 to 4) of std_logic_vector(7 downto 0);
    constant MPU_CONFIG_ADDR : config_array_t := (
        ADDR_PWR_MGMT_1,
        ADDR_USER_CTRL,
        ADDR_GYRO_CONFIG,
        ADDR_ACCEL_CONFIG,
        ADDR_CONFIG
    );
    
    constant MPU_CONFIG_DATA : config_array_t := (
        x"00",  -- PWR_MGMT_1: Clk seç (PLL with X axis gyroscope)
        x"10",  -- USER_CTRL: I2C_MST_EN = 0, SPI_EN = 1
        x"10",  -- GYRO_CONFIG: ±1000 dps
        x"08",  -- ACCEL_CONFIG: ±4g
        x"04"   -- CONFIG: DLPF_CFG = 3 (Bandwidth = 44 Hz)
    );
    
    signal config_idx : integer range 0 to 4 := 0;
    
    -- =========================================================
    -- RAW DATA BUFFER (14 BYTE: 0x3B ile başlayan burst read)
    -- =========================================================
    type raw_data_array_t is array (0 to 13) of std_logic_vector(7 downto 0);
    signal raw_data : raw_data_array_t := (others => (others => '0'));
    signal byte_cntr : integer range 0 to 14 := 0;

    -- =========================================================
    -- STATE MACHINE
    -- =========================================================
    type state_t is (
        IDLE, POWER_ON_WAIT,
        CONF_SEND_ADDR, CONF_WAIT_ADDR, 
        CONF_SEND_DATA, CONF_WAIT_DATA, 
        CS_HIGH_WAIT, CONF_NEXT,
        MEASURE_START, MEASURE_START_WAIT,
        MEASURE_READ, MEASURE_READ_WAIT, 
        MEASURE_DONE, MEASURE_DELAY
    );
    signal state : state_t := IDLE;
    
    -- Bekleme sayacı
    signal delay_cntr : integer range 0 to 4_000_000 := 0;
    
    -- =========================================================
    -- SPI WRITE KOMUTU (Mode 3 için: 0x80 | register_addr)
    -- =========================================================
    signal spi_write_addr : std_logic_vector(7 downto 0);
    signal spi_read_addr  : std_logic_vector(7 downto 0);

begin

    -- SPI Mode 3'te WRITE komutu bit 7 = 1
    spi_write_addr <= "0" & MPU_CONFIG_ADDR(config_idx)(6 downto 0);
    
    -- SPI Mode 3'te READ komutu bit 7 = 0
    spi_read_addr <= "1" & ADDR_ACCEL_XOUT_H(6 downto 0);

    process (clk_i, rst_i)
        variable temp : std_logic_vector(15 downto 0);
    begin
        if (rst_i = '0') then
            state            <= IDLE;
            spi_cs_n_o       <= '1';
            start_transfer_o <= '0';
            config_idx       <= 0;
            byte_cntr        <= 0;
            delay_cntr       <= 0;
            raw_data         <= (others => (others => '0'));
            
        elsif rising_edge(clk_i) then
            data_valid_out   <= '0';
            start_transfer_o <= '0';  -- Pulse komutu
            
            case state is 
            
                -- =============================================
                -- IDLE STATE - Başlangıç durumu
                -- =============================================
                when IDLE =>
                    if(switch_out = '0') then 
                        spi_cs_n_o <= '1';
                        config_idx <= 0;
                        byte_cntr  <= 0;
                        delay_cntr <= 0;
                        state      <= POWER_ON_WAIT;
                    end if;
                    
                -- =============================================
                -- POWER_ON_WAIT - Sensör güç stabilizasyonu (100ms)
                -- =============================================
                when POWER_ON_WAIT =>
                    if (delay_cntr = 3_333_333) then  -- ~100ms @ 33.33MHz
                        state      <= CONF_SEND_ADDR;
                        delay_cntr <= 0;
                    else
                        delay_cntr <= delay_cntr + 1;
                    end if;

                -- =============================================
                -- KONFIGÜRASYON YAZMA - ADRES GÖNDER
                -- =============================================
                when CONF_SEND_ADDR =>
                    spi_cs_n_o       <= '0';
                    mosi_data_o      <= spi_write_addr;  -- 0x80 | register_addr
                    start_transfer_o <= '1';
                    state            <= CONF_WAIT_ADDR;

                when CONF_WAIT_ADDR =>
                    if (data_valid_i = '1') then 
                        state <= CONF_SEND_DATA;
                    end if;

                -- =============================================
                -- KONFIGÜRASYON YAZMA - DATA GÖNDER
                -- =============================================
                when CONF_SEND_DATA =>
                    mosi_data_o      <= MPU_CONFIG_DATA(config_idx);
                    start_transfer_o <= '1';
                    state            <= CONF_WAIT_DATA;

                when CONF_WAIT_DATA =>
                    if (data_valid_i = '1') then 
                        spi_cs_n_o <= '1';  -- CS yükselt
                        delay_cntr <= 0;
                        state      <= CS_HIGH_WAIT;
                    end if;
                    
                -- =============================================
                -- CS yükseldikten sonra bekleme (Tsu setup time)
                -- =============================================
                when CS_HIGH_WAIT =>
                    if (delay_cntr = 100) then  -- ~3us
                        state <= CONF_NEXT;
                        delay_cntr <= 0;
                    else
                        delay_cntr <= delay_cntr + 1;
                    end if;

                -- =============================================
                -- CONF_NEXT - Sonraki konfigürasyona geç veya MEASURE'a başla
                -- =============================================
                when CONF_NEXT =>
                    if (config_idx = 4) then  -- 5 config tamamlandı (0-4)
                        state <= MEASURE_START;
                    else
                        config_idx <= config_idx + 1;
                        state      <= CONF_SEND_ADDR;
                    end if;

                -- =============================================
                -- ÖLÇÜM - BURST READ BAŞLAT (0x3B adresinden)
                -- =============================================
                when MEASURE_START =>
                    spi_cs_n_o       <= '0';
                    byte_cntr        <= 0;
                    mosi_data_o      <= spi_read_addr;  -- 0x3B (read mode)
                    start_transfer_o <= '1';
                    state            <= MEASURE_START_WAIT;

                when MEASURE_START_WAIT =>
                    if (data_valid_i = '1') then
                        state <= MEASURE_READ;
                    end if;

                -- =============================================
                -- ÖLÇÜM - DATA OKU (14 BYTE)
                -- =============================================
                when MEASURE_READ =>
                    mosi_data_o      <= x"00";  -- Dummy byte
                    start_transfer_o <= '1';
                    state            <= MEASURE_READ_WAIT;

                when MEASURE_READ_WAIT =>
                    if (data_valid_i = '1') then
                        raw_data(byte_cntr) <= rx_data_i;
                        
                        if (byte_cntr = 13) then  -- 14 byte (0-13)
                            spi_cs_n_o <= '1';
                            delay_cntr <= 0;
                            state      <= MEASURE_DONE;
                        else
                            byte_cntr <= byte_cntr + 1;
                            state     <= MEASURE_READ;
                        end if;
                    end if;

                -- =============================================
                -- MEASURE_DONE - Verileri OUTPUT'a MAPLE
                -- =============================================
                when MEASURE_DONE =>
                    -- BURST READ FORMATÜ (0x3B adresinden başlayan):
                    -- Byte 0-1:   ACCEL_XOUT_H, ACCEL_XOUT_L
                    -- Byte 2-3:   ACCEL_YOUT_H, ACCEL_YOUT_L
                    -- Byte 4-5:   ACCEL_ZOUT_H, ACCEL_ZOUT_L
                    -- Byte 6-7:   TEMP_OUT_H, TEMP_OUT_L (TEMP - YOKSAY)
                    -- Byte 8-9:   GYRO_XOUT_H, GYRO_XOUT_L
                    -- Byte 10-11: GYRO_YOUT_H, GYRO_YOUT_L
                    -- Byte 12-13: GYRO_ZOUT_H, GYRO_ZOUT_L
                    
                    temp := raw_data(0) & raw_data(1);
                    ax_o <= std_logic_vector((signed(temp) + to_signed(690,16)));

                    temp := raw_data(2) & raw_data(3);
                    ay_o <= std_logic_vector((signed(temp) - to_signed(21,16)));

                    temp := raw_data(4) & raw_data(5);
                    az_o <= std_logic_vector((signed(temp) - to_signed(484,16)));

                    temp := raw_data(8) & raw_data(9);
                    gx_o <= std_logic_vector((signed(temp) - to_signed(70,16)));

                    temp := raw_data(10) & raw_data(11);
                    gy_o <= std_logic_vector((signed(temp) - to_signed(22,16)));

                    temp := raw_data(12) & raw_data(13);
                    gz_o <= std_logic_vector((signed(temp) + to_signed(7,16)));

                    data_valid_out   <= '1';
                    
                    state <= MEASURE_DELAY;

                -- =============================================
                -- ÖLÇÜMLER ARASINDA BEKLEME
                -- =============================================
                when MEASURE_DELAY =>
                    if (delay_cntr = 333_333) then  -- ~10ms (ölçüm hızı ~100Hz)
                        state <= MEASURE_START;
                        delay_cntr <= 0;
                    else
                        delay_cntr <= delay_cntr + 1;
                    end if;

                when others =>
                    state <= IDLE;
                    
            end case;
        end if;
    end process;
    
end architecture Behavioral;