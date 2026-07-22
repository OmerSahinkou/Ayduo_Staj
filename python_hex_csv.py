import serial
import csv
import time
from datetime import datetime

# Seri port bağlantısı
ser = serial.Serial('/dev/ttyUSB2', 1000000)

# CSV dosyası adı
csv_dosya_adi = 'veriler.csv'

# Dosya yoksa başlıkları yazarak oluştur, varsa ekleme modunda aç
with open(csv_dosya_adi, mode='a', newline='') as file:
    writer = csv.writer(file)
    if file.tell() == 0:
        writer.writerow(['Tarih_Saat', 'Hex_Veri'])

print("Veriler kaydediliyor... Çıkmak için CTRL+C tuşlarına basın.")

try:
    while True:
        data = ser.read(1)  # 1 byte veri oku
        if data:
            hex_veri = data.hex()
            print(f"Gelen Veri (Hex): {hex_veri}") # Ekrana yazdır
            
            # Zaman damgası oluştur
            simdi = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-3]
            
            # CSV dosyasına kaydet
            with open(csv_dosya_adi, mode='a', newline='') as file:
                writer = csv.writer(file)
                writer.writerow([simdi, hex_veri])
                
except KeyboardInterrupt:
    print("\nProgram sonlandırıldı.")
finally:
    ser.close()
    print("Seri port kapatıldı.")
