#!/usr/bin/env python3
import serial
import struct
import time
import math

PORT = "/dev/ttyUSB2"
BAUDRATE = 1000000

try:
    ser = serial.Serial(PORT, BAUDRATE, timeout=0.01)
except Exception as e:
    print(f"Hata: Port açılamadı! {e}")
    exit(1)

# Sensör Ayarları
ACC_SCALE = 8192.0  # 4g için
GYRO_SCALE = 32.8   # 1000 dps için
DEADBAND = 0.3      # Titreşim engelleyici ölü bant (derece/saniye)

alpha = 0.90   
angle_x, angle_y, angle_z = 0.0, 0.0, 0.0

# --- JİROSKOP KALİBRASYONU ---
print("SENSÖRÜ SABİT TUTUN! X, Y ve Z ekseni kalibrasyonu yapılıyor...")
gyro_x_offset, gyro_y_offset, gyro_z_offset = 0.0, 0.0, 0.0
sample_count = 100
samples_collected = 0

while samples_collected < sample_count:
    if ser.read(1) == b'\xAA':
        payload = ser.read(14)
        if len(payload) == 14 and payload[-2:] == b'\x0D\x0A':
            _, _, _, gyro_x, gyro_y, gyro_z = struct.unpack('>hhhhhh', payload[:-2])
            
            # Tüm eksenlerin kalibrasyon verisini topla
            gyro_x_offset += gyro_x / GYRO_SCALE
            gyro_y_offset += gyro_y / GYRO_SCALE
            gyro_z_offset += gyro_z / GYRO_SCALE
            
            samples_collected += 1
            time.sleep(0.005)

gyro_x_offset /= sample_count
gyro_y_offset /= sample_count
gyro_z_offset /= sample_count

print("Kalibrasyon Tamamlandı!")
print(f"Ofsetler -> X: {gyro_x_offset:.2f} | Y: {gyro_y_offset:.2f} | Z: {gyro_z_offset:.2f}")
print("Haberleşme başladı. Çıkış için Ctrl+C...")

last_time = time.time()

try:
    while True:
        if ser.read(1) == b'\xAA':
            payload = ser.read(14)
            
            if len(payload) == 14 and payload[-2:] == b'\x0D\x0A':
                current_time = time.time()
                dt = current_time - last_time
                last_time = current_time
                
                acc_x, acc_y, acc_z, gyro_x, gyro_y, gyro_z = struct.unpack('>hhhhhh', payload[:-2])
                
                # İvmeölçer verileri
                ax = acc_x / ACC_SCALE
                ay = acc_y / ACC_SCALE
                az = acc_z / ACC_SCALE
                
                # Jiroskop verileri (Kalibrasyon ofsetleri düşülmüş)
                gx = (gyro_x / GYRO_SCALE) - gyro_x_offset
                gy = (gyro_y / GYRO_SCALE) - gyro_y_offset
                gz = (gyro_z / GYRO_SCALE) - gyro_z_offset
                
                # Ölü Bant Filtresi: Masadaki mikro titreşimleri yoksay (X, Y ve Z için)
                if abs(gx) < DEADBAND: gx = 0.0
                if abs(gy) < DEADBAND: gy = 0.0
                if abs(gz) < DEADBAND: gz = 0.0
                
                # İvmeölçerden gelen ham X ve Y açıları
                raw_acc_x = math.atan2(ay, math.sqrt(ax**2 + az**2)) * 57.2957
                raw_acc_y = math.atan2(-ax, math.sqrt(ay**2 + az**2)) * 57.2957
                
                # GERÇEK TAMAMLAYICI FİLTRE (Jiroskop hızı ile ivmeölçer pozisyonunu birleştirir)
                # Bu sayede X ve Y eksenlerindeki gürültü ve titreme mükemmele yakın filtrelenir.
                angle_x = alpha * (angle_x + gx * dt) + (1 - alpha) * raw_acc_x
                angle_y = alpha * (angle_y + gy * dt) + (1 - alpha) * raw_acc_y
                
                # Z Ekseninde birikme (Integral)
                angle_z += gz * dt
                
                # Servo sınırlandırmaları
                clamped_x = max(-90.0, min(90.0, angle_x))
                clamped_y = max(-90.0, min(90.0, angle_y))
                clamped_z = max(-90.0, min(90.0, angle_z)) 
                
                servo_x = int(((clamped_x + 90.0) / 180.0) * 255.0)
                servo_y = int(((clamped_y + 90.0) / 180.0) * 255.0)
                servo_z = int(((clamped_z + 90.0) / 180.0) * 255.0)
                
                servo_x = max(0, min(255, servo_x))
                servo_y = max(0, min(255, servo_y))
                servo_z = max(0, min(255, servo_z))
                
                print(f"\rDeğerler -> X: {servo_x:3d} | Y: {servo_y:3d} | Z: {servo_z:3d}", end="", flush=True)
                
                tx_packet = struct.pack('BBBBB', 0xBB, servo_x, servo_y, servo_z, 0x66)
                ser.write(tx_packet)

except KeyboardInterrupt:
    print("\nProgram kullanıcı tarafından sonlandırıldı.")
finally:
    ser.close()
