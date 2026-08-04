import serial
import struct
import math
from vpython import *

# =========================================================
# AYARLAR 
# =========================================================
SERIAL_PORT = '/dev/ttyUSB2'   
BAUD_RATE = 115200     

try:
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=0.1)
    print(f"{SERIAL_PORT} başarıyla açıldı! 3-Eksenli Kapalı Çevrim Başlatılıyor...")
except Exception as e:
    print(f"Bağlantı Hatası: {e}")
    exit()

# =========================================================
# 3D SAHNE KURULUMU
# =========================================================
scene = canvas(title="<b>FPGA PID Kontrolcüsü - 3 Eksenli Kapalı Çevrim Analizi</b>", 
               width=1200, height=600, background=color.gray(0.1))
scene.camera.pos = vector(0, 15, 25)
scene.camera.axis = vector(0, -10, -25)

# Ortadan bölen bir çizgi
cylinder(pos=vector(0,-5,0), axis=vector(0,15,0), radius=0.05, color=color.white)

# 3D Dron Yaratıcı Fonksiyon 
def create_drone(position, c_body, c_arms):
    body = box(pos=position, size=vector(3, 0.8, 3), color=c_body)
    arm1 = box(pos=position, size=vector(10, 0.4, 0.6), color=c_arms)
    arm1.rotate(angle=math.radians(45), axis=vector(0,1,0))
    arm2 = box(pos=position, size=vector(10, 0.4, 0.6), color=c_arms)
    arm2.rotate(angle=math.radians(-45), axis=vector(0,1,0))
    
    # Motorlar
    m1 = cylinder(pos=position + vector(3.5, 0.3, 3.5), axis=vector(0,0.5,0), radius=0.6, color=color.red)
    m2 = cylinder(pos=position + vector(-3.5, 0.3, -3.5), axis=vector(0,0.5,0), radius=0.6, color=color.blue)
    m3 = cylinder(pos=position + vector(3.5, 0.3, -3.5), axis=vector(0,0.5,0), radius=0.6, color=color.red)
    m4 = cylinder(pos=position + vector(-3.5, 0.3, 3.5), axis=vector(0,0.5,0), radius=0.6, color=color.blue)
    
    # Yönü belli etmek için ön tarafa bir ok/gösterge ekleyelim (Z ekseni dönüşü anlaşılsın)
    head = cone(pos=position + vector(0, 0, 5), axis=vector(0, 0, 2), radius=0.5, color=color.yellow)
    
    return compound([body, arm1, arm2, m1, m2, m3, m4, head])

# SOL DRON: Sensörden Okunan Fiziksel Eğim
drone_sensor = create_drone(vector(-8, 0, 0), color.orange, color.white)
lbl_sensor = label(pos=vector(-8, 5, 0), text='1. FİZİKSEL EĞİM\n(Pitch & Roll)', height=16, color=color.orange, box=False)

# SAĞ DRON: PID'nin Ürettiği Servo Düzeltme Hareketi
drone_servo = create_drone(vector(8, 0, 0), color.cyan, color.white)
lbl_servo = label(pos=vector(8, 5, 0), text='2. PID SERVO TEPKİSİ\n(Pitch, Roll & Yaw)', height=16, color=color.cyan, box=False)

# =========================================================
# TELEMETRİ ARAYÜZÜ (HUD)
# =========================================================
scene.append_to_caption('\n<hr>\n')
telemetry_hud = wtext(text='<b>Paket Bekleniyor...</b>', html=True, 
                      style='font-family: monospace; font-size: 16px; color: lime; background-color: black; padding: 10px; display: block;')

# =========================================================
# PROTOKOL SABİTLERİ
# =========================================================
HEADER = b'\xAB\xCD'
FOOTER = b'\xCD\xEF'
PACKET_SIZE = 31 
STRUCT_FORMAT = '>hhhhhhBBBhhhhhh'

buffer = bytearray()

# =========================================================
# ANA DÖNGÜ
# =========================================================
while True:
    rate(50) 
    
    while ser.in_waiting:
        buffer.extend(ser.read(ser.in_waiting))
        
    while len(buffer) >= PACKET_SIZE:
        if buffer[0:2] == HEADER:
            if buffer[PACKET_SIZE-2 : PACKET_SIZE] == FOOTER:
                
                payload = buffer[2 : PACKET_SIZE-2]
                unpacked_data = struct.unpack(STRUCT_FORMAT, payload)
                
                raw_ax, raw_ay, raw_az, raw_gx, raw_gy, raw_gz, \
                servo_x, servo_y, servo_z, \
                f_ax, f_ay, f_az, f_gx, f_gy, f_gz = unpacked_data
                
                # -------------------------------------------------------------
                # 1. SOL DRON (FİZİKSEL EĞİM) 
                if f_az == 0: f_az = 1 
                
                pitch_sensor_rad = math.atan2(f_ay, f_az)
                roll_sensor_rad  = math.atan2(-f_ax, f_az)
                
                drone_sensor.up = vector(0, 1, 0)
                drone_sensor.axis = vector(1, 0, 0)
                drone_sensor.rotate(angle=pitch_sensor_rad, axis=vector(1, 0, 0)) 
                drone_sensor.rotate(angle=-roll_sensor_rad, axis=vector(0, 0, 1))
                # Z ekseninde (Yaw) ivmeölçer verisi olmadığı için dönüş yapmıyoruz.
                
                # -------------------------------------------------------------
                # 2. SAĞ DRON (PID SERVO TEPKİSİ) 
                # 128 = 0 Derece (Tam düz)
                pitch_servo_rad = math.radians((servo_y - 128.0) * (90.0 / 128.0))
                roll_servo_rad  = math.radians((servo_x - 128.0) * (90.0 / 128.0))
                yaw_servo_rad   = math.radians((servo_z - 128.0) * (90.0 / 128.0))
                
                drone_servo.up = vector(0, 1, 0)
                drone_servo.axis = vector(1, 0, 0)
                
                # 3 Eksenli Rotasyon (Pitch, Roll ve YAW eklenmiş hali)
                # VPython'da Y ekseni yukarı baktığı için Yaw dönüşü Y ekseni (0,1,0) etrafında yapılır
                drone_servo.rotate(angle=yaw_servo_rad, axis=vector(0, 1, 0))   # YAW (Z Ekseni)
                drone_servo.rotate(angle=pitch_servo_rad, axis=vector(1, 0, 0)) # PITCH (Y Ekseni)
                drone_servo.rotate(angle=-roll_servo_rad, axis=vector(0, 0, 1)) # ROLL (X Ekseni)

                # -------------------------------------------------------------
                # HUD GÜNCELLEMESİ
                hud_html = f"""
                <table style="width:100%; text-align:left; border-collapse: collapse;">
                    <tr style="border-bottom: 1px solid #555;">
                        <th style="color:orange; padding-bottom:5px; width:50%;">FİZİKSEL SENSÖR EĞİMİ (DERECE)</th>
                        <th style="color:cyan; padding-bottom:5px; width:50%;">PID SERVO ÜRETİMİ (0-255 PWM)</th>
                    </tr>
                    <tr>
                        <td><b>PITCH (Y):</b> {math.degrees(pitch_sensor_rad):+6.1f}°</td>
                        <td><b>SERVO Y (Pitch):</b> {servo_y:3d} <i>(Tahmini {-math.degrees(pitch_servo_rad):+6.1f}°)</i></td>
                    </tr>
                    <tr>
                        <td><b>ROLL (X):</b> {math.degrees(roll_sensor_rad):+6.1f}°</td>
                        <td><b>SERVO X (Roll) :</b> {servo_x:3d} <i>(Tahmini {-math.degrees(roll_servo_rad):+6.1f}°)</i></td>
                    </tr>
                    <tr>
                        <td><b>YAW (Z):</b> İvmeölçerden Hesaplanamaz</td>
                        <td><b>SERVO Z (Yaw)  :</b> {servo_z:3d} <i>(Tahmini {math.degrees(yaw_servo_rad):+6.1f}°)</i></td>
                    </tr>
                </table>
                """
                telemetry_hud.text = hud_html
                
                buffer = buffer[PACKET_SIZE:]
            else:
                buffer.pop(0)
        else:
            buffer.pop(0)
