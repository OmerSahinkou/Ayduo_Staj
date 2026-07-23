library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SquareRoot is
    Generic (
        N : integer := 16  -- Giriş veri genişliği (Daima çift sayı olmalıdır, örn: 8, 16, 32)
    );
    Port (
        clk      : in  std_logic;
        data_in  : in  std_logic_vector (N-1 downto 0);
        data_out : out std_logic_vector ((N/2)-1 downto 0)
    );
end SquareRoot;

architecture Behavioral of SquareRoot is
begin
    process(clk)
        variable a   : unsigned(N-1 downto 0);
        variable q   : unsigned((N/2)-1 downto 0);
        variable r   : unsigned((N/2)+1 downto 0);
        variable tmp : unsigned((N/2)+1 downto 0);
    begin
        if rising_edge(clk) then
            -- Giriş verisi değişkene atanır ve geçici değişkenler sıfırlanır
            a := unsigned(data_in);
            q := (others => '0');
            r := (others => '0');

            -- En anlamlı bitten (MSB) en anlamsız bite (LSB) doğru iterasyon
            for i in (N/2)-1 downto 0 loop
                
                -- 'r' (kalan) değerini 2 bit sola kaydır ve girişin sıradaki 2 bitini ekle
                r := r((N/2)-1 downto 0) & a(i*2+1 downto i*2);
                
                -- Karşılaştırma için 'tmp' değerini oluştur (Mevcut q'nun sonuna "01" ekle)
                tmp := q & "01";
                
                -- Eğer kalan değer, deneme değerinden (tmp) büyük veya eşitse
                if r >= tmp then
                    r := r - tmp;               -- Kalandan tmp değerini çıkar
                    q := shift_left(q, 1);      -- Bölüm (sonuç) değerini 1 bit sola kaydır
                    q(0) := '1';                -- En sağdaki bite '1' yaz
                else
                    q := shift_left(q, 1);      -- Çıkarma yapılamıyorsa sadece sola kaydır (0 eklemiş olursun)
                end if;
                
            end loop;
            
            -- Bulunan sonucu çıkışa aktar
            data_out <= std_logic_vector(q);
        end if;
    end process;
end Behavioral;