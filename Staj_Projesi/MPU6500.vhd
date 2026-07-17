----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/17/2026 11:37:36 AM
-- Module Name: MPU6500 - Behavioral
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity MPU6500_Controller is
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
end entity MPU6500_Controller;

architecture Behavioral of MPU6500_Controller is

    type config_array_t is array (0 to 3) of std_logic_vector(15 downto 0);
    constant MPU_CONFIG : config_array_t := (
        x"6B00",
        x"1B10",
        x"1C08",
        x"1A03" 
    );
    signal config_idx : integer range 0 to 3 := 0;
    
    type raw_data_array_t is array (0 to 13) of std_logic_vector(7 downto 0);
    signal raw_data : raw_data_array_t := (others => (others => '0'));
    signal byte_cntr : integer range 0 to 14 := 0;

    -- Yeni durumlar eklendi: POWER_ON_WAIT ve CS_HIGH_WAIT
    type state_t is (
        IDLE, POWER_ON_WAIT,
        CONF_SEND_ADDR, CONF_WAIT_ADDR, CONF_SEND_DATA, CONF_WAIT_DATA, CS_HIGH_WAIT, CONF_NEXT,
        MEASURE_START, MEASURE_START_WAIT,
        MEASURE_READ, MEASURE_READ_WAIT, 
        MEASURE_DONE
    );
    signal state : state_t := IDLE;
    
    -- Bekleme süreleri için sayaç
    signal delay_cntr : integer range 0 to 255 := 0;

begin
    process (clk_i, rst_i)
    begin
        if (rst_i = '0') then
            state            <= IDLE;
            spi_cs_n_o       <= '1';
            start_transfer_o <= '0';
            config_idx       <= 0;
            byte_cntr        <= 0;
            delay_cntr       <= 0;
        elsif rising_edge(clk_i) then
            
            start_transfer_o <= '0'; 

            case state is 
                when IDLE =>
                    spi_cs_n_o <= '1';
                    config_idx <= 0;
                    delay_cntr <= 0;
                    state      <= POWER_ON_WAIT;
                    
                when POWER_ON_WAIT =>
                    -- Sensörün uyanması ve TB'nin CS'yi okuması için ~100 cycle bekleme
                    if (delay_cntr = 100) then
                        state <= CONF_SEND_ADDR;
                    else
                        delay_cntr <= delay_cntr + 1;
                    end if;

                when CONF_SEND_ADDR =>
                    spi_cs_n_o       <= '0';
                    mosi_data_o      <= MPU_CONFIG(config_idx)(15 downto 8);
                    start_transfer_o <= '1';
                    state            <= CONF_WAIT_ADDR;

                when CONF_WAIT_ADDR =>
                    if (data_valid_i = '1') then 
                        state <= CONF_SEND_DATA;
                    end if;

                when CONF_SEND_DATA =>
                    mosi_data_o      <= MPU_CONFIG(config_idx)(7 downto 0);
                    start_transfer_o <= '1';
                    state            <= CONF_WAIT_DATA;

                when CONF_WAIT_DATA =>
                    if (data_valid_i = '1') then 
                        spi_cs_n_o <= '1';
                        delay_cntr <= 0;
                        state      <= CS_HIGH_WAIT; -- Doğrudan NEXT'e geçmek yerine bekle
                    end if;
                    
                when CS_HIGH_WAIT =>
                    -- İki konfigürasyon SPI işlemi arasında CS min. HIGH süresi
                    if (delay_cntr = 10) then
                        state <= CONF_NEXT;
                    else
                        delay_cntr <= delay_cntr + 1;
                    end if;

                when CONF_NEXT =>
                    if (config_idx = 3) then
                        state <= MEASURE_START;
                    else
                        config_idx <= config_idx + 1;
                        state      <= CONF_SEND_ADDR;
                    end if;

                when MEASURE_START =>
                    spi_cs_n_o       <= '0';
                    byte_cntr        <= 0;
                    mosi_data_o      <= x"BB";
                    start_transfer_o <= '1';
                    state            <= MEASURE_START_WAIT;

                when MEASURE_START_WAIT =>
                    if (data_valid_i = '1') then
                        state <= MEASURE_READ;
                    end if;

                when MEASURE_READ =>
                    mosi_data_o      <= x"00";
                    start_transfer_o <= '1';
                    state            <= MEASURE_READ_WAIT;

                when MEASURE_READ_WAIT =>
                    if (data_valid_i = '1') then
                        raw_data(byte_cntr) <= rx_data_i;
                        
                        if (byte_cntr = 13) then
                            spi_cs_n_o <= '1';
                            delay_cntr <= 0;
                            state      <= MEASURE_DONE;
                        else
                            byte_cntr <= byte_cntr + 1;
                            state     <= MEASURE_READ;
                        end if;
                    end if;

                when MEASURE_DONE =>
                    ax_o <= raw_data(0) & raw_data(1);
                    ay_o <= raw_data(2) & raw_data(3);
                    az_o <= raw_data(4) & raw_data(5);
                    
                    gx_o <= raw_data(8) & raw_data(9);
                    gy_o <= raw_data(10) & raw_data(11);
                    gz_o <= raw_data(12) & raw_data(13);
                    
                    -- Ölçüm bittikten sonra hemen yeni ölçüme geçmeden önce CS High süresini koru
                    if (delay_cntr = 10) then
                        state <= MEASURE_START;
                    else
                        delay_cntr <= delay_cntr + 1;
                    end if;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
end architecture Behavioral;