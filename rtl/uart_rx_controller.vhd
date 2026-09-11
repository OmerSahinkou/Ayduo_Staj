library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--g_value değerleri 2g , 4g, 8g , 16g =>    0x00    ,   0x04    ,   0x10    ,   0x18
entity uart_rx_controller is
    port (
        clk_i     : in  std_logic;
        rst_n_i   : in  std_logic;
        rx_data   : in  STD_LOGIC_VECTOR(7 downto 0);
        rx_valid  : in  STD_LOGIC;
        g_value   : out STD_LOGIC_VECTOR(7 downto 0);
        dps_value : out STD_LOGIC_VECTOR(7 downto 0);
        rst_conf  : out std_logic 
    );
end entity;

architecture rtl of uart_rx_controller is
    signal g_value_temp   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal dps_value_temp : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    signal packet_valid_reg : std_logic := '0';
    
    type state_t is (IDLE, Wait_Header_2, Get_G_Value, Get_DPS_Value, 
                     Wait_Footer_1, Wait_Footer_2, Last_Footer);
    signal state : state_t := IDLE;

begin

    rx_control : process (clk_i, rst_n_i)
    begin
        if rst_n_i = '0' then
            state            <= IDLE;
            g_value          <= (others => '0');
            dps_value        <= (others => '0');
            g_value_temp     <= (others => '0');
            dps_value_temp   <= (others => '0');
            packet_valid_reg <= '0';
            rst_conf         <= '0';
        elsif rising_edge(clk_i) then
            rst_conf <= '0'; 
            
            if rx_valid = '1' then
                case state is
                    when IDLE =>
                       if rx_data = x"01" and packet_valid_reg = '1' then
                            g_value          <= g_value_temp;
                            dps_value        <= dps_value_temp;
                            rst_conf         <= '1';  
                            packet_valid_reg <= '0'; 
                        elsif rx_data = x"DE" then
                            state <= Wait_Header_2;
                        end if;

                    when Wait_Header_2 =>
                        if rx_data = x"EF" then
                            state <= Get_G_Value;
                        else
                            state <= IDLE;
                        end if;

                    when Get_G_Value =>
                        g_value_temp <= rx_data;
                        state        <= Get_DPS_Value;

                    when Get_DPS_Value =>
                        dps_value_temp <= rx_data;
                        state          <= Wait_Footer_1;

                    when Wait_Footer_1 =>
                        if rx_data = x"CE" then
                            state <= Wait_Footer_2;
                        else
                            state <= IDLE;
                        end if;

                    when Wait_Footer_2 =>
                        if rx_data = x"FA" then
                            state <= Last_Footer;
                        else
                            state <= IDLE;
                        end if;

                    when Last_Footer =>
                        if rx_data = x"EA" then
                            packet_valid_reg <= '1'; 
                        end if;
                        state <= IDLE; 

                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process rx_control;

end architecture;
