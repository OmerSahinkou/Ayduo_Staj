import serial
import struct
import time
import statistics

# --- Ayarlar ---
PORT = '/dev/ttyUSB3'
BAUD = 115200
TEST_SURESI_SN = 15 # Hareketi analiz etmek için 15 saniye

def bekle_ve_senkronize_ol(ser):
    """0xAB ve 0xCD header byte'larını yakalayarak senkronize olur."""
    while True:
        b1 = ser.read(1)
        if b1 == b'\xab':
            b2 = ser.read(1)
            if b2 == b'\xcd':
                return True

def main():
    print(f"[{PORT}] portuna bağlanılıyor...")
    
    angle_x_list = []
    angle_y_list = []
    filt_ax_list = []
    filt_ay_list = []
    
    try:
        ser = serial.Serial(PORT, BAUD, timeout=1)
    except Exception as e:
        print(f"BAŞARISIZ: Port açılamadı! Hata: {e}")
        return

    print(f"\n--- DİNAMİK GİMBAL TESTİ BAŞLIYOR ---")
    print("!!! ŞİMDİ SENSÖRÜ HAREKET ETTİR !!!")
    print("Sistemi zorla: Sağa/sola ve öne/arkaya yatır, sarsıntılar ver.")
    print(f"{TEST_SURESI_SN} saniye boyunca sistemin tepkileri ölçülüyor...\n")
    
    start_time = time.time()
    gecerli_paket = 0
    hatali_paket = 0
    
    # Veri Toplama Döngüsü
    while time.time() - start_time < TEST_SURESI_SN:
        if bekle_ve_senkronize_ol(ser):
            data = ser.read(29)
            
            if len(data) == 29 and data[-2:] == b'\xcd\xef':
                payload = data[:27]
                try:
                    # Paket çözme: [0:5] Raw İvme/Gyro, [6:8] Angle PWM, [9:14] Filt İvme/Gyro
                    paket = struct.unpack('>hhhhhhBBBhhhhhh', payload)
                    
                    angle_x_list.append(paket[6])
                    angle_y_list.append(paket[7])
                    filt_ax_list.append(paket[9]) # Hareket algılamak için
                    filt_ay_list.append(paket[10])
                    
                    gecerli_paket += 1
                except:
                    hatali_paket += 1
            else:
                hatali_paket += 1
                
    ser.close()
    
    # --- DİNAMİK ANALİZ VE TEST SONUÇLARI ---
    print("--- DİNAMİK TEST SONUÇLARI ---")
    
    test_basarili = True

    # 1. Veri Akışı Testi
    if gecerli_paket > 100:
        print(f"[OK] Veri Akışı: {gecerli_paket} geçerli paket alındı.")
    else:
        print(f"[HATA] Veri Akışı: Yeterli paket alınamadı! (Alınan: {gecerli_paket})")
        test_basarili = False

    # 2. Fiziksel Hareket (Kullanıcı Testi Yaptı mı?)
    max_ax_fark = max(filt_ax_list) - min(filt_ax_list)
    max_ay_fark = max(filt_ay_list) - min(filt_ay_list)
    
    if max_ax_fark > 2000 or max_ay_fark > 2000:
        print(f"[OK] Fiziksel Efor: Sisteme yeterli hareket/bozucu etki uygulandı.")
    else:
        print(f"[HATA] Fiziksel Efor: Sensörü yeterince hareket ettirmedin! Daha fazla yatır.")
        test_basarili = False

    # 3. Motor Tepkisi (Motorlar Dengeleme Yaptı mı?)
    std_x = statistics.stdev(angle_x_list)
    std_y = statistics.stdev(angle_y_list)
    
    if std_x > 15.0 and std_y > 15.0:
        print(f"[OK] Motor Dinamik Tepkisi: Motorlar harekete agresif karşılık verdi (X Efor: {std_x:.2f}, Y Efor: {std_y:.2f})")
    else:
        print(f"[HATA] Motor Dinamik Tepkisi: Motorlar harekete yeterince tepki vermedi! P katsayısını artırmak gerekebilir.")
        test_basarili = False

    # 4. Kilitlenme (Windup) Testi (Hareket halindeyken sınırlara yapışıp kalıyor mu?)
    x_kilit = angle_x_list.count(0) + angle_x_list.count(255)
    y_kilit = angle_y_list.count(0) + angle_y_list.count(255)
    kilit_siniri = int(gecerli_paket * 0.15) # %15'ten fazla sınırda kalmamalı
    
    if x_kilit < kilit_siniri and y_kilit < kilit_siniri:
        print(f"[OK] Windup Koruması: Agresif harekette bile motorlar kilitlenip kalmadı.")
    else:
        print(f"[HATA] Windup Koruması: Motorlar 0 veya 255'e yapışıp kalıyor! (X: {x_kilit} kez, Y: {y_kilit} kez)")
        print(f"       Çözüm: İntegral (I) katsayısını düşür veya Clamp sınırlarını daralt.")
        test_basarili = False

    # --- NİHAİ SONUÇ ---
    print("\n========================================")
    if test_basarili:
        print(" NİHAİ DURUM: BAŞARILI [GİMBAL ZORLU ŞARTLARDA ÇALIŞIYOR]")
    else:
        print(" NİHAİ DURUM: BAŞARISIZ [PID AYARI VEYA DONANIM KONTROLÜ GEREK]")
    print("========================================")

if __name__ == '__main__':
    main()
