# Örnek Python ile veriyi yakalama
import serial
ser = serial.Serial('/dev/ttyUSB2', 115200)
while True:
    data = ser.read()
    print(data.hex()) # Gelen 8-bitlik veriyi hex olarak yazdırır
