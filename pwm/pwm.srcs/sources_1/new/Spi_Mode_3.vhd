----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2026 11:37:36 AM
-- Design Name: 
-- Module Name: Spi_Mode_3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;
use IEEE.numeric_std.all;

entity Spi_Mode_3 is
    generic(
        CLK_FREQ:integer := 50_000_000  ;
        SPI_FREQ:integer := 5_000_000   ;
        DATA_WIDTH:integer := 8         
    );
    Port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           start_trasfer_i: in STD_LOGIC;
           mosi_o : out STD_LOGIC;
           miso_i : in STD_LOGIC;
           sclk_o : out STD_LOGIC;
           cs_o : out STD_LOGIC;
           data_valid : out STD_LOGIC;
           rx_data : out STD_LOGIC_VECTOR (7 downto 0);
           data_buffer_i : in STD_LOGIC_VECTOR (7 downto 0));
end Spi_Mode_3;

architecture Behavioral of Spi_Mode_3 is
    constant BIT_LIMIT         : integer := CLK_FREQ / (SPI_FREQ * 2); -- SCLK'nin inip çıkması için 2'ye bölmek daha sağlıklıdır
    constant BIT_COUNTER_WIDTH : integer := integer(ceil(log2(real(BIT_LIMIT))));
    constant BIT_IDX_WIDTH     : integer := integer(ceil(log2(real(DATA_WIDTH))));
    
    signal bitcounter  : unsigned(BIT_COUNTER_WIDTH - 1 downto 0) := (others => '0');
    signal bit_idx     : unsigned(BIT_IDX_WIDTH downto 0)         := (others => '0'); -- Bir bit genişlettik ki underflow yapmasın
    signal data_buffer : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    
    type state_t is (IDLE, SHIFT, SAMPLE, DONE);
    signal state : state_t := IDLE;
begin

    process(clk_i)begin
        if rst_i = '0' then
            bit_idx     <= to_unsigned(7, bit_idx'length);  
            data_buffer <= (others => '0' );
            bitcounter  <= (others => '0' );
            state       <= IDLE                     ;
            data_valid  <= '0'                      ;
            sclk_o      <= '1'; -- CPOL=1 Kuralı
            cs_o        <= '1'; 
            mosi_o      <= '0';
        elsif rising_edge(clk_i)then
            
            data_valid <= '0'; -- Varsayılan olarak hep 0 yapıyoruz
            
            case state is
                when IDLE =>
                    bit_idx     <= to_unsigned(7, bit_idx'length);
                    bitcounter  <= (others => '0' ) ;
                    sclk_o      <= '1'              ; -- CPOL=1 Kuralı
                    cs_o        <= '1'              ;
                    
                    if(start_trasfer_i = '1') then 
                        cs_o        <= '0'          ;
                        data_buffer <= data_buffer_i;
                        state       <= SHIFT        ;
                        -- DİKKAT: sclk_o <= '0' BURADAN KALDIRILDI! Saati düşürmek için SHIFT state'ini beklemeliyiz.
                    end if;
                    
                when SHIFT =>
                    if(bitcounter < BIT_LIMIT - 1 )then
                        bitcounter <= bitcounter + 1;
                    else
                        bitcounter  <= (others => '0' ) ;
                        state       <= SAMPLE           ;
                        sclk_o      <= '0'              ; -- 1. Kenar (Düşen Kenar)
                        mosi_o      <= data_buffer(to_integer(bit_idx));
                    end if;
                    
                when SAMPLE =>
                    if(bitcounter < BIT_LIMIT - 1 )then
                        bitcounter <= bitcounter + 1;
                    else
                        sclk_o      <= '1'              ; -- 2. Kenar (Yükselen Kenar)
                        bitcounter  <= (others => '0' ) ;
                        data_buffer(to_integer(bit_idx)) <= miso_i;
                        
                        -- VHDL Sinyal Güncelleme Tuzağı Düzeltildi!
                        if (bit_idx = 0) then
                            state <= DONE;
                        else
                            bit_idx <= bit_idx - 1 ;
                            state <= SHIFT;
                        end if;
                    end if;
                    
                when DONE =>
                    if(bitcounter < BIT_LIMIT - 1 )then
                        bitcounter <= bitcounter + 1;
                    else 
                        sclk_o          <= '1'          ;
                        cs_o            <= '1'          ; -- DÜZELTİLDİ: İşlem bitti, CS 1 olmalı
                        data_valid      <= '1'          ; -- 1 Vuruşluk sinyal
                        rx_data         <= data_buffer  ;
                        state           <= IDLE         ;
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
end Behavioral;
