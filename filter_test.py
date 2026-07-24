import serial
import struct

# Seri port ayarları (Kendi port adını ve baudrate değerini yaz)
# Windows için: 'COM3', Linux/Mac için: '/dev/ttyUSB0'
SERIAL_PORT = '/dev/ttyUSB2' 
BAUDRATE = 1000

def parse_imu_data():
    try:
        ser = serial.Serial(SERIAL_PORT, BAUDRATE, timeout=1)
        print(f"{SERIAL_PORT} bağlantısı açıldı. Veri bekleniyor...\n")
        
        while True:
            # 1. Adım: Başlangıç markerını (0xAA) bulana kadar oku
            if ser.read(1) == b'\xAA':
                # 2. Adım: Kalan 14 baytı oku (12 bayt sensör + 2 bayt CR/LF)
                packet = ser.read(14)
                
                if len(packet) == 14:
                    # Son iki baytın CR (0x0D) ve LF (0x0A) olduğunu doğrula
                    if packet[12] == 0x0D and packet[13] == 0x0A:
                        
                        # 12 baytlık sensör verisini (6 adet 16-bit signed short) çöz
                        # '>hhhhhh' -> Big-endian (H yüksek, L düşük bayt) ve 6 adet signed short
                        sensor_data = struct.unpack('>hhhhhh', packet[0:12])
                        
                        ax, ay, az, gx, gy, gz = sensor_data
                        
                        # Terminale temiz ve dinamik bir şekilde yazdır
                        print(f"İvme (Accel) -> X: {ax:6d} | Y: {ay:6d} | Z: {az:6d}  "
                              f"Jiro (Gyro) -> X: {gx:6d} | Y: {gy:6d} | Z: {gz:6d}", end='\r')
                        
    except serial.SerialException as e:
        print(f"Seri port hatası: {e}")
    except KeyboardInterrupt:
        print("\nProgram kullanıcı tarafından sonlandırıldı.")

if __name__ == "__main__":
    parse_imu_data()
