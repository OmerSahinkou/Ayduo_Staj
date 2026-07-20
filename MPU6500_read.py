#!/usr/bin/env python3
"""
MPU-6500 UART Data Reader with Frame Synchronization
- Marker: 0xAA (frame başlangıcı)
- Format: [0xAA] [AX_H] [AX_L] [AY_H] [AY_L] [AZ_H] [AZ_L] [GX_H] [GX_L] [GY_H] [GY_L] [GZ_H] [GZ_L] [CR] [LF]
- Total: 15 bytes
"""

import serial
import time
import sys

def bytes_to_int16(high_byte, low_byte):
    """Combine two bytes into a signed 16-bit integer"""
    value = (high_byte << 8) | low_byte
    if value >= 32768:
        value -= 65536
    return value

def main():
    # Seri port ayarları
    PORT = '/dev/ttyUSB2'  # Linux/Mac - değiştir: Windows'ta 'COM3' gibi
    BAUD = 115200
    TIMEOUT = 1
    
    # Windows için:
    # PORT = 'COM3'
    
    try:
        ser = serial.Serial(PORT, BAUD, timeout=TIMEOUT)
        print(f"✓ Seri port açıldı: {PORT} @ {BAUD} baud")
        print(f"Aranıyor: Frame sync marker (0xAA)...\n")
        time.sleep(2)  # Sensör start-up zamanı
        
    except serial.SerialException as e:
        print(f"✗ Seri port açılamadı: {e}")
        print(f"  Deneyin: {PORT} yerine COMx (Windows) veya /dev/ttyUSBx (Linux)")
        return
    
    frame_count = 0
    error_count = 0
    max_errors = 10
    
    try:
        while True:
            # ADIM 1: 0xAA marker'ı arayın
            marker_found = False
            timeout_counter = 0
            max_timeout = 10000  # 10 saniye timeout
            
            while not marker_found and timeout_counter < max_timeout:
                byte = ser.read(1)
                timeout_counter += 1
                
                if len(byte) > 0:
                    if byte[0] == 0xAA:
                        marker_found = True
                    # Eğer 0xFF gibi başka byte'lar görürseniz, doğru init
                    # elif byte[0] != 0xFF:
                    #     print(f"  ? Marker değil: 0x{byte[0]:02X}")
            
            if not marker_found:
                print("✗ Timeout: Marker bulunamadı!")
                error_count += 1
                if error_count >= max_errors:
                    print(f"✗ {max_errors} timeout'dan sonra çıkılıyor...")
                    break
                continue
            
            error_count = 0  # Reset error counter
            
            # ADIM 2: Marker'ın ardından 14 byte oku
            data = ser.read(14)
            
            if len(data) != 14:
                print(f"Frame #{frame_count}: ✗ Veri eksik ({len(data)} bytes received)")
                frame_count += 1
                continue
            
            # ADIM 3: Veriyi parse et (signed 16-bit)
            accel_x = bytes_to_int16(data[0], data[1])
            accel_y = bytes_to_int16(data[2], data[3])
            accel_z = bytes_to_int16(data[4], data[5])
            
            gyro_x = bytes_to_int16(data[6], data[7])
            gyro_y = bytes_to_int16(data[8], data[9])
            gyro_z = bytes_to_int16(data[10], data[11])
            
            # Son iki byte CR (0x0D) ve LF (0x0A) olmalı
            cr = data[12]
            lf = data[13]
            
            # ADIM 4: Yazdır
            print(f"Frame #{frame_count}: "
                  f"AX:{accel_x:7d} AY:{accel_y:7d} AZ:{accel_z:7d} | "
                  f"GX:{gyro_x:7d} GY:{gyro_y:7d} GZ:{gyro_z:7d}  "
                  f"[{cr:02X} {lf:02X}]")
            
            frame_count += 1
            
    except KeyboardInterrupt:
        print("\n\n✓ Program durduruldu (Ctrl+C)")
    except Exception as e:
        print(f"\n✗ Hata: {e}")
    finally:
        ser.close()
        print(f"✓ Seri port kapatıldı")
        print(f"Toplam frame: {frame_count}")

if __name__ == '__main__':
    main()
