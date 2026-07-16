library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Generic (
        CLK_FREQ  : integer := 33_333_333; -- Ortak saat frekansı
        BAUD_RATE : integer := 115200
    );
    Port (
        clk_i   : in  STD_LOGIC;
        rst_n_i : in  STD_LOGIC;
        pwm_out : out STD_LOGIC;
        rx      : in  STD_LOGIC;
        tx      : out STD_LOGIC
    );
end top;

architecture Behavioral of top is

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
            CLK_FREQ   : integer := 50_000_000;
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
    end component uart_rx;
    
    component clk_divider is 
    generic(
        CLK_IN_FREQ    : integer := 33_333_333;
        CLK_OUT_FREQ   : integer := 50
    );
    port(
        clk_in       : in std_logic;
        rst_n        : in std_logic;
        clk_out      : out std_logic
    );
    end component;

    -- =========================================================
    -- Sinyal Tanımlamaları (Declarative Region)
    -- =========================================================
    signal angle_reg    : unsigned(7 downto 0) := (others => '0');

    signal tx_start_sig : std_logic := '0';
    signal tx_data_sig  : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_busy_sig  : std_logic;
    
    signal rx_data_sig  : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_valid     : std_logic;
    
    signal clk_out      : std_logic;
    signal clk_out_last : std_logic := '0';
    
    signal rx_buffer    : std_logic_vector(7 downto 0) := (others => '0');

begin

    -- =========================================================
    -- Modül Bağlantıları (Instantiation)
    -- =========================================================
    Inst_pwm_servo: pwm_servo
        generic map (
            CLK_FREQ => CLK_FREQ
        )
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
            clk_c           => clk_i,
            rst_n           => rst_n_i,
            rx              => rx,
            rx_data         => rx_data_sig,
            rx_valid        => rx_valid
        ); 
        
     Inst_clk_divider:clk_divider
        generic map (
            CLK_IN_FREQ => CLK_FREQ,
            CLK_OUT_FREQ => 50
        )
        port map(
            clk_in      => clk_i ,
            rst_n       => rst_n_i,
            clk_out     => clk_out
        );

    -- =========================================================
    -- Ana Kontrol Prosesi (RX Yakalama ve Açı Güncelleme)
    -- =========================================================
    process(clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            angle_reg    <= (others => '0');
            tx_start_sig <= '0';
            clk_out_last <= '0';
            rx_buffer    <= (others => '0');
            
        elsif rising_edge(clk_i) then
            
            tx_start_sig <= '0';  -- Varsayılan olarak start pinini indir
            clk_out_last <= clk_out; 

            -- 1. ADIM: RX'ten veri gelir gelmez tampona al (Asenkron veri yakalama)
            if rx_valid = '1' then
                rx_buffer <= rx_data_sig;
            end if;

            -- 2. ADIM: 50Hz (20ms) periyodu dolduğunda işlemleri yap
            if clk_out = '1' and clk_out_last = '0' then
                
                angle_reg <= unsigned(rx_buffer); -- Tampondaki en son okunan veriyi servoya ver
                
                -- UART TX meşgul değilse, gelen değeri geri gönder (Loopback / Echo)
                if tx_busy_sig = '0' then
                    tx_start_sig <= '1';
                end if;
                
            end if;
            
        end if;
    end process;
    
    -- Gönderilecek veriyi her zaman açı register'ına eşitle
    tx_data_sig <= std_logic_vector(angle_reg);

end Behavioral;