import serial
import struct
import csv
import time

# --- Ayarlar ---
PORT = '/dev/ttyUSB2'
BAUD = 1000000
CSV_FILENAME = 'imu_motor_verileri.csv'
KAYIT_SURESI_SN = 20

def bekle_ve_senkronize_ol(ser):
    """0xAB ve 0xCD header byte'larını arka arkaya yakalayarak senkronize olur."""
    while True:
        b1 = ser.read(1)
        if b1 == b'\xab':
            b2 = ser.read(1)
            if b2 == b'\xcd':
                return True

def main():
    print(f"Port {PORT} açılıyor. Baud Rate: {BAUD}")
    
    with serial.Serial(PORT, BAUD, timeout=1) as ser, \
         open(CSV_FILENAME, 'w', newline='') as f:
        
        writer = csv.writer(f)
        # CSV Başlıkları
        writer.writerow(['Zaman(s)', 
                         'Raw_Ax', 'Raw_Ay', 'Raw_Az', 'Raw_Gx', 'Raw_Gy', 'Raw_Gz',
                         'Angle_X', 'Angle_Y', 'Angle_Z',
                         'Filt_Ax', 'Filt_Ay', 'Filt_Az', 'Filt_Gx', 'Filt_Gy', 'Filt_Gz'])
        
        print(f"\nSensörü hareket ettirmeye başla! {KAYIT_SURESI_SN} saniyelik kayıt alınıyor...")
        start_time = time.time()
        paket_sayaci = 0
        
        while time.time() - start_time < KAYIT_SURESI_SN:
            if bekle_ve_senkronize_ol(ser):
                # Header'dan sonra kalan 29 byte'ı oku (27 byte payload + 2 byte footer)
                data = ser.read(29)
                
                if len(data) == 29 and data[-2:] == b'\xcd\xef':
                    # VHDL'den MSB önce (15 downto 8) geldiği için struct formatı Big-Endian (>)
                    # h: 16-bit signed (2 byte), B: 8-bit unsigned char (1 byte)
                    payload = data[:27]
                    unpack_formati = '>hhhhhhBBBhhhhhh'
                    
                    paket = struct.unpack(unpack_formati, payload)
                    guncel_zaman = time.time() - start_time
                    
                    writer.writerow([round(guncel_zaman, 4)] + list(paket))
                    paket_sayaci += 1
                    
        print(f"\nSüre doldu! Toplam {paket_sayaci} paket başarıyla '{CSV_FILENAME}' dosyasına kaydedildi.")

if __name__ == '__main__':
    main()
