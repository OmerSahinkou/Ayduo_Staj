library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity debounce is
    generic (
        -- Set this limit based on your clock speed. 
        -- Example: 100 MHz clock and a 10 ms debounce time = 1,000,000 cycles.
        DEBOUNCE_LIMIT : integer := 1000000 
    );
    port (
        clk_i       : in std_logic;  -- System clock
        rst_n_i     : in std_logic;  -- Active LOW reset
        switch_in   : in std_logic;  -- Raw bouncy input from physical switch
        switch_out  : out std_logic  -- Cleaned, debounced output
    );
end entity debounce;

architecture RTL of debounce is
    -- Metastability synchronizer stages
    signal sync_0 : std_logic := '0';
    signal sync_1 : std_logic := '0';
    
    -- Register to track the stable state
    signal state_reg : std_logic := '0';
    
    -- Counter to measure the stability duration
    signal count_reg : integer range 0 to DEBOUNCE_LIMIT := 0;
begin

    -- Output assignment
    switch_out <= state_reg;

    -- Synchronizer and Debounce Process
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_n_i = '0' then  -- DÜZELTILDI: = '0' (active LOW reset)
                sync_0    <= '0';
                sync_1    <= '0';
                state_reg <= '0';
                count_reg <= 0;
            else
                -- 2-stage shift register to synchronize the asynchronous input
                sync_0 <= switch_in;
                sync_1 <= sync_0;

                -- If the input changes state, reset the counter
                if (sync_1 /= state_reg) then
                    if (count_reg < DEBOUNCE_LIMIT) then
                        count_reg <= count_reg + 1;
                    else
                        -- The signal has stayed stable long enough, update state
                        state_reg <= sync_1;
                        count_reg <= 0;
                    end if;
                else
                    -- Input matches our current state, keep counter at zero
                    count_reg <= 0;
                end if;
            end if;
        end if;
    end process;

end architecture RTL;