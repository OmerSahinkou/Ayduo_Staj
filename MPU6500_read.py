#!/usr/bin/env python3

import serial
import csv
import time

def bytes_to_int16(high_byte, low_byte):
    """İki byte'ı signed 16-bit integer'a çevirir."""
    value = (high_byte << 8) | low_byte
    if value >= 32768:
        value -= 65536
    return value


# ===================== AYARLAR =====================

PORT = "/dev/ttyUSB2"
BAUD = 115200
TIMEOUT = 1

# Kaç örnek alınacak
SAMPLE_COUNT = 10000

# Kayıt yolu
CSV_PATH = "/home/omer-ahin/STAJ/mpu_raw_data.csv"

# ===================================================


def main():

    try:
        ser = serial.Serial(PORT, BAUD, timeout=TIMEOUT)
        print(f"✓ Seri port açıldı: {PORT}")
        time.sleep(2)

    except Exception as e:
        print(f"Seri port açılamadı: {e}")
        return

    ax_sum = 0
    ay_sum = 0
    az_sum = 0

    gx_sum = 0
    gy_sum = 0
    gz_sum = 0

    frame = 0

    csv_file = open(CSV_PATH, "w", newline="")
    writer = csv.writer(csv_file)

    writer.writerow([
        "Frame",
        "AX",
        "AY",
        "AZ",
        "GX",
        "GY",
        "GZ"
    ])

    print()
    print(f"{SAMPLE_COUNT} adet örnek toplanıyor...")
    print("Sensöre dokunmayın!\n")

    try:

        while frame < SAMPLE_COUNT:

            # -------- Marker Ara --------
            while True:
                b = ser.read(1)

                if len(b) == 0:
                    continue

                if b[0] == 0xAA:
                    break

            # -------- Kalan 14 Byte --------
            data = ser.read(14)

            if len(data) != 14:
                continue

            # Frame sonu kontrolü
            if data[12] != 0x0D or data[13] != 0x0A:
                continue

            # Parse
            ax = bytes_to_int16(data[0], data[1])
            ay = bytes_to_int16(data[2], data[3])
            az = bytes_to_int16(data[4], data[5])

            gx = bytes_to_int16(data[6], data[7])
            gy = bytes_to_int16(data[8], data[9])
            gz = bytes_to_int16(data[10], data[11])

            # CSV'ye yaz
            writer.writerow([
                frame,
                ax,
                ay,
                az,
                gx,
                gy,
                gz
            ])

            # Ortalama için topla
            ax_sum += ax
            ay_sum += ay
            az_sum += az

            gx_sum += gx
            gy_sum += gy
            gz_sum += gz

            frame += 1

            if frame % 500 == 0:
                print(f"{frame}/{SAMPLE_COUNT} örnek alındı...")

    except KeyboardInterrupt:
        print("\nKullanıcı tarafından durduruldu.")

    finally:
        csv_file.close()
        ser.close()

    if frame == 0:
        print("Hiç veri alınamadı.")
        return

    ax_avg = ax_sum / frame
    ay_avg = ay_sum / frame
    az_avg = az_sum / frame

    gx_avg = gx_sum / frame
    gy_avg = gy_sum / frame
    gz_avg = gz_sum / frame

    print("\n========================================")
    print("          KALİBRASYON SONUCU")
    print("========================================")

    print(f"Toplam Örnek : {frame}")

    print("\nAccelerometer Ortalama")
    print(f"AX : {ax_avg:.3f}")
    print(f"AY : {ay_avg:.3f}")
    print(f"AZ : {az_avg:.3f}")

    print("\nGyroscope Ortalama")
    print(f"GX : {gx_avg:.3f}")
    print(f"GY : {gy_avg:.3f}")
    print(f"GZ : {gz_avg:.3f}")

    print("\nFPGA'da kullanabileceğin offsetler:")

    print(f"AX_OFFSET = {round(ax_avg)}")
    print(f"AY_OFFSET = {round(ay_avg)}")
    print(f"AZ_OFFSET = {round(az_avg)}")

    print(f"GX_OFFSET = {round(gx_avg)}")
    print(f"GY_OFFSET = {round(gy_avg)}")
    print(f"GZ_OFFSET = {round(gz_avg)}")

    print("\nNot:")
    print("AX, AY, GX, GY, GZ doğrudan offset olarak kullanılabilir.")
    print("AZ ekseni yerçekimi içerdiği için yaklaşık ±8192 (4G ayarında) olacaktır.")
    print("Kart düz duruyorsa FPGA'da genellikle:")
    print("AZ_DUZELTILMIS = AZ - AZ_OFFSET")
    print("şeklinde kullanabilirsin.")

    print(f"\nHam veriler kaydedildi:\n{CSV_PATH}")


if __name__ == "__main__":
    main()
