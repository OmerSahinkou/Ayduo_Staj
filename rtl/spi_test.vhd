----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ömer Şahin
-- 
-- Create Date: 08/04/2026 10:22:36 AM
-- Design Name: 
-- Module Name: spi_test - Behavioral
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_test is
    Port (
        clk_i   : in  STD_LOGIC;           
        rst_n_i   : in  STD_LOGIC;
        sclk_o  : out STD_LOGIC;           
        mosi_o  : out STD_LOGIC;           
        LED     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end spi_test;

architecture Behavioral of spi_test is

    signal mosi_sig  : STD_LOGIC;
    signal sclk_sig  : STD_LOGIC;
    signal spi_start : STD_LOGIC := '0';
    signal spi_valid : STD_LOGIC;
    signal spi_rx    : STD_LOGIC_VECTOR(7 downto 0);
    signal spi_tx    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');


    type test_state_t is (T_LOAD, T_START, T_WAIT, T_FINAL, T_PASS, T_FAIL);
    signal tstate : test_state_t := T_LOAD;

    type byte_arr_t is array(0 to 3) of STD_LOGIC_VECTOR(7 downto 0);
    constant TVEC : byte_arr_t := (x"AA", x"55", x"F0", x"0F");

    signal idx  : integer range 0 to 3 := 0;
    signal pass : STD_LOGIC := '1';  

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
begin

    mosi_o <= mosi_sig;
    sclk_o <= sclk_sig;

    U_SPI :Spi_Mode_3
        generic map(
            CLK_FREQ   => 50_000_000,
            SPI_FREQ   => 5_000_000,
            DATA_WIDTH => 8
        )
        port map(
            clk_i           => clk_i,
            rst_i           => rst_n_i,
            start_trasfer_i => spi_start,
            mosi_o          => mosi_sig,
            miso_i          => mosi_sig,   
            sclk_o          => sclk_sig,
            data_valid      => spi_valid,
            rx_data         => spi_rx,
            data_buffer_i   => spi_tx
        );
    process(clk_i)
    begin
        if rst_n_i = '0' then
            tstate    <= T_LOAD;
            idx       <= 0;
            pass      <= '1';
            spi_start <= '0';
            spi_tx    <= (others => '0');
            LED       <= "0001";           

        elsif rising_edge(clk_i) then
            spi_start <= '0';             

            case tstate is
                when T_LOAD =>
                    spi_tx <= TVEC(idx);
                    LED   <= "0010";      
                    tstate <= T_START;
                when T_START =>
                    spi_start <= '1';
                    tstate    <= T_WAIT;
                when T_WAIT =>
                    if spi_valid = '1' then
                        if spi_rx /= TVEC(idx) then
                            pass <= '0';
                        end if;

                        if idx = 3 then
                            tstate <= T_FINAL;
                        else
                            idx    <= idx + 1;
                            tstate <= T_LOAD;
                        end if;
                    end if;
                when T_FINAL =>
                    if pass = '1' then
                        tstate <= T_PASS;
                    else
                        tstate <= T_FAIL;
                    end if;

                when T_PASS =>
                    LED  <= "1000";       

                when T_FAIL =>
                    LED  <= "0100";       

                when others =>
                    tstate <= T_LOAD;
            end case;
        end if;
    end process;

end Behavioral;