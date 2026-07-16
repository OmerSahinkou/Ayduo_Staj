library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_vhdl is 
    Port(
        clk     : in std_logic;
        rst_n   : in std_logic;
        led_1   : out std_logic
    );
end top_vhdl;

architecture my_top_arch of top_vhdl is
    signal clk_out : std_logic;
    
begin
    clk_divider_led: entity work.clk_divider
    GENERIC MAP
    (
        CLK_IN_FREQ     => 33_333_333,
        CLK_OUT_FREQ    => 1
    )
    PORT MAP(
        clk_in          => clk,
        rst_n           => rst_n,
        clk_out         => clk_out
    );
    
    my_top_process: process(clk, rst_n)
    begin
        if rst_n = '0' then
            led_1 <= '0';
        elsif rising_edge(clk) then
            led_1 <= clk_out;
        end if;
    end process my_top_process;
    
end my_top_arch;