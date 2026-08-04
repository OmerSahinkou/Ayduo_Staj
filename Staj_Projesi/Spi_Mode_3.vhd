----------------------------------------------------------------------------------
-- Company: Ayduo Electronic
-- Engineer: Ömer Şahin
-- 
-- Create Date: 07/20/2026 13:37:36 AM
-- Module Name: Spi_Mode_3 - Behavioral
-- First Version
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
           data_valid : out STD_LOGIC;
           rx_data : out STD_LOGIC_VECTOR (7 downto 0);
           data_buffer_i : in STD_LOGIC_VECTOR (7 downto 0));
end Spi_Mode_3;

architecture Behavioral of Spi_Mode_3 is
    constant BIT_LIMIT         : integer := CLK_FREQ / (SPI_FREQ * 2); 
    constant BIT_COUNTER_WIDTH : integer := integer(ceil(log2(real(BIT_LIMIT))));
    constant BIT_IDX_WIDTH     : integer := integer(ceil(log2(real(DATA_WIDTH))));
    
    signal bitcounter  : unsigned(BIT_COUNTER_WIDTH - 1 downto 0) := (others => '0');
    signal bit_idx     : unsigned(BIT_IDX_WIDTH downto 0)         := (others => '0'); 
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
            sclk_o      <= '1'; 
            mosi_o      <= '0';
        elsif rising_edge(clk_i)then
            
            data_valid <= '0'; 
            
            case state is
                when IDLE =>
                    bit_idx     <= to_unsigned(7, bit_idx'length);
                    bitcounter  <= (others => '0' ) ;
                    sclk_o      <= '1'              ; 
                    
                    if(start_trasfer_i = '1') then 
                        data_buffer <= data_buffer_i;
                        state       <= SHIFT        ;
                    end if;
                    
                when SHIFT =>
                    if(bitcounter < BIT_LIMIT - 1 )then
                        bitcounter <= bitcounter + 1;
                    else
                        bitcounter  <= (others => '0' ) ;
                        state       <= SAMPLE           ;
                        sclk_o      <= '0'              ; 
                        mosi_o      <= data_buffer(to_integer(bit_idx));
                    end if;
                    
                when SAMPLE =>
                    if(bitcounter < BIT_LIMIT - 1 )then
                        bitcounter <= bitcounter + 1;
                    else
                        sclk_o      <= '1'              ; 
                        bitcounter  <= (others => '0' ) ;
                        data_buffer(to_integer(bit_idx)) <= miso_i;
                        
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
                        data_valid      <= '1'          ; 
                        rx_data         <= data_buffer  ;
                        state           <= IDLE         ;
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
end Behavioral;
