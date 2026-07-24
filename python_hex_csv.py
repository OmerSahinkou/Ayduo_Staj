import csv
import time
import serial

# Port ve baglanti ayarlari
PORT = "/dev/ttyUSB2"
BAUD_RATE = 1000000
CSV_DOSYA = "veriler.csv"

try:
  ser = serial.Serial(
      port=PORT,
      baudrate=BAUD_RATE,
      bytesize=serial.EIGHTBITS,
      parity=serial.PARITY_NONE,
      stopbits=serial.STOPBITS_ONE,
      timeout=1,
  )
  print(f"{PORT} portu {BAUD_RATE} baud hızında açıldı.")
except Exception as e:
  print(f"Port açılamadı: {e}")
  exit()

# CSV dosyasini baslat ve baslik ekle
with open(CSV_DOSYA, mode="w", newline="", encoding="utf-8") as f:
  writer = csv.writer(f)
  writer.writerow(["Zaman", "Hex_Veri", "Decimal_Veri"])

  print("Veri dinleniyor... Çıkış için CTRL+C tuşlarına basın.")
  try:
    while True:
      if ser.in_waiting > 0:
        veri_byte = ser.read(1)  # 8-bit (1 byte) veri oku
        zaman = time.strftime("%Y-%m-%d %H:%M:%S")

        # Hex ve Decimal donusumu
        hex_veri = veri_byte.hex().upper()
        dec_veri = int.from_bytes(veri_byte, "big")

        # Ekrana yaz ve CSV'ye kaydet
        writer.writerow([zaman, hex_veri, dec_veri])
        f.flush()  # Anında diske yaz
        print(f"[{zaman}] Hex: {hex_veri} | Dec: {dec_veri}")

  except KeyboardInterrupt:
    print("\nKayıt durduruldu.")
  finally:
    ser.close()
    print("Seri port kapatıldı.")
