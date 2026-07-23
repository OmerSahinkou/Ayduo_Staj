import serial
import time

# Ubuntu'daki port yolun ve VHDL'deki baud hızın
PORT = '/dev/ttyUSB2'
BAUD_RATE = 1000000

def to_signed_16(val):
    """16-bit işaretsiz (unsigned) gelen veriyi işaretli (two's complement) sayıya çevirir."""
    if val > 32767:
        return val - 65536
    return val

def main():
    try:
        # Bağlantıyı başlat
        ser = serial.Serial(PORT, BAUD_RATE, timeout=1)
        print(f"{PORT} portu {BAUD_RATE} baud hızında dinleniyor...\n")
        print("Veriler bekleniyor. Çıkmak için CTRL+C'ye basın.\n")

        while True:
            # Senkronizasyon: 0xAA (Marker) baytını bulana kadar portu oku
            if ser.read(1) == b'\xAA':
                
                # Marker bulundu, VHDL tarafındaki 1-19 adımlarına karşılık gelen 
                # geriye kalan 19 baytı toplu halde oku.
                packet = ser.read(19)
                
                # Okunan paket tam olarak 19 bayt ise işleme başla
                if len(packet) == 19:
                    
                    # Güvenlik kontrolü: CR (0x0D) ve LF (0x0A) doğru yerde mi?
                    # Python'da packet indeksleri 0'dan başlar (VHDL'deki adımın 1 eksiği)
                    if packet[17] == 0x0D and packet[18] == 0x0A:
                        
                        # ==========================================
                        # 1. MPU6500 Verilerini Çöz (16-bit Signed)
                        # ==========================================
                        ax = to_signed_16((packet[0] << 8) | packet[1])
                        ay = to_signed_16((packet[2] << 8) | packet[3])
                        az = to_signed_16((packet[4] << 8) | packet[5])
                        
                        gx = to_signed_16((packet[6] << 8) | packet[7])
                        gy = to_signed_16((packet[8] << 8) | packet[9])
                        gz = to_signed_16((packet[10] << 8) | packet[11])
                        
                        # ==========================================
                        # 2. SQRT Çıkış Verisini Çöz (17-bit)
                        # ==========================================
                        # packet[12] ve packet[13], VHDL'deki "when 13" ve "when 14" (boş geçilen 0x00)
                        
                        byte_15 = packet[14]  # VHDL: when 15
                        byte_16 = packet[15]  # VHDL: when 16
                        byte_17 = packet[16]  # VHDL: when 17
                        
                        # 17 biti birleştirme (En yüksek bitten sadece 1 bit maskeleniyor)
                        sqrt_data = ((byte_15 & 0x01) << 16) | (byte_16 << 8) | byte_17
                        
                        # ==========================================
                        # 3. Terminale Yazdırma (Formatlı Gösterim)
                        # ==========================================
                        print("=" * 55)
                        print(f"İVME (Accel) | X: {ax:6d} | Y: {ay:6d} | Z: {az:6d}")
                        print(f"JİRO (Gyro)  | X: {gx:6d} | Y: {gy:6d} | Z: {gz:6d}")
                        print("-" * 55)
                        print(f"SQRT Çıkışı  | {sqrt_data}")
                        
                        # Ekrandaki yazilarin cok hizli akip gitmesini engellemek istersen:
                        # time.sleep(0.05) 

    except KeyboardInterrupt:
        print("\n\nProgram kullanıcı tarafından sonlandırıldı.")
    except serial.SerialException as e:
        print(f"\nSeri port bağlantı hatası: {e}")
        print("Lütfen port adresini, bağlantı kablolarını ve sudo yetkilerini kontrol et.")
    finally:
        if 'ser' in locals() and ser.is_open:
            ser.close()
            print("Seri port kapatıldı.")

if __name__ == "__main__":
    main()
