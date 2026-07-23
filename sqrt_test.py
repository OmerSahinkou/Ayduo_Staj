import serial

# Seri portu ayarla (Port adını ve baudrate değerini kendi sisteminize göre değiştirin)
port_adi = '/dev/ttyUSB2'  # Windows için örn: 'COM3', Linux/Mac için '/dev/ttyUSB0'
baud_orani = 1000000

ser = serial.Serial(port_adi, baud_orani, timeout=1)

print(f"{port_adi} dinleniyor...")

try:
  while True:
    # 1. Adım: 'AA' baytını bulana kadar veya veri gelene kadar oku
    header = ser.read(1)
    if header == b'\xaa':
      # 2. Adım: Arkasından gelen 2 bayt veriyi ve 1 bayt bitiş baytını (0D) oku
      veri_ve_bitis = ser.read(3)  # Toplam 3 bayt (2 bayt veri + 1 bayt 0D)

      # Bitiş baytının 0D olup olmadığını kontrol et
      if len(veri_ve_bitis) == 3 and veri_ve_bitis[2] == 0x0D:
        veri = veri_ve_bitis[0:2]  # 2 baytlık asıl veri

        # Terminale hex ve integer (sayısal) olarak yazdır
        print(f"Gelen Paket -> Hex: {veri.hex()} | Değerler: list(veri)")
      else:
        # Paket boyutu veya bitiş baytı uyuşmazsa
        ser.reset_input_buffer()

except KeyboardInterrupt:
  ser.close()
  print("\nProgram kapatıldı.")

