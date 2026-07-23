library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SquareRoot is
    Generic (
        N : integer := 34  -- Giriş veri genişliği (Daima çift sayı olmalıdır)
    );
    Port (
        clk      : in  std_logic;
        data_in  : in  std_logic_vector (N-1 downto 0);
        data_out : out std_logic_vector ((N/2)-1 downto 0)
    );
end SquareRoot;

architecture Behavioral of SquareRoot is

    -- FSM Durumları
    type state_type is (IDLE, CALC, DONE);
    signal state : state_type := IDLE;

    -- Register (Yazmaç) Tanımlamaları
    signal a_reg : unsigned(N-1 downto 0) := (others => '0');
    signal q_reg : unsigned((N/2)-1 downto 0) := (others => '0');
    signal r_reg : unsigned((N/2)+1 downto 0) := (others => '0');
    
    -- Sayaç (N=34 için 17'den geriye sayacak)
    signal count : integer range 0 to N/2 := 0;

begin

    process(clk)
        variable r_temp : unsigned((N/2)+1 downto 0);
        variable tmp    : unsigned((N/2)+1 downto 0);
    begin
        if rising_edge(clk) then
            case state is
            
                -- =====================================================
                -- ADIM 1: Veriyi al ve değişkenleri sıfırla
                -- =====================================================
                when IDLE =>
                    a_reg <= unsigned(data_in);
                    q_reg <= (others => '0');
                    r_reg <= (others => '0');
                    count <= N/2;
                    state <= CALC;

                -- =====================================================
                -- ADIM 2: Her vuruşta 1 adım hesapla (Max fMAX için)
                -- =====================================================
                when CALC =>
                    if count > 0 then
                        -- r_reg'i 2 bit sola kaydır ve a_reg'in en üst 2 bitini ekle
                        r_temp := r_reg((N/2)-1 downto 0) & a_reg(N-1 downto N-2);
                        
                        -- Karşılaştırma değeri (q_reg'in sonuna "01" ekle)
                        tmp := q_reg & "01";
                        
                        -- Çıkarma ve Sonuç (Bölüm) Ataması
                        if r_temp >= tmp then
                            r_reg <= r_temp - tmp;
                            q_reg <= q_reg((N/2)-2 downto 0) & '1'; -- Sola kaydır, LSB'ye 1 yaz
                        else
                            r_reg <= r_temp;
                            q_reg <= q_reg((N/2)-2 downto 0) & '0'; -- Sadece sola kaydır
                        end if;
                        
                        -- Sonraki adım için a_reg'i 2 bit sola kaydır
                        a_reg <= a_reg(N-3 downto 0) & "00";
                        
                        -- Döngüyü bir azalt
                        count <= count - 1;
                    else
                        state <= DONE;
                    end if;

                -- =====================================================
                -- ADIM 3: Sonucu çıkışa aktar ve başa dön
                -- =====================================================
                when DONE =>
                    data_out <= std_logic_vector(q_reg);
                    state    <= IDLE; -- Sürekli veri akışı için beklemeden yeni veriyi al
                    
            end case;
        end if;
    end process;

end Behavioral;