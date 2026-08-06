import multiprocessing as mp
import os
import time
import webbrowser

# =========================================================
# 1. PROCESS: PYQT5 ARAYÜZÜ (Grafikler ve Motor Kadranları)
# =========================================================
def run_pyqt_dashboard(shared_array):
    # Kütüphaneleri sadece bu işlem çekirdeğine özel yüklüyoruz (Ubuntu çakışmasını önler)
    import sys
    import math
    import numpy as np
    
    # Ubuntu 24.04 Wayland sorununu çözmek için X11 (xcb) zorlaması
    os.environ["QT_QPA_PLATFORM"] = "xcb"
    
    import pyqtgraph as pg
    from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget, QGridLayout
    from PyQt5.QtCore import QTimer, Qt
    from PyQt5.QtGui import QPainter, QPen, QColor, QFont

    class MotorVisualizer(QWidget):
        def __init__(self):
            super().__init__()
            self.setMinimumWidth(300)
            self.angles = [0, 0, 0] 
            self.setStyleSheet("background-color: #1e1e1e; border-radius: 10px;")

        def update_angles(self, ax, ay, az):
            self.angles = [ax, ay, az]
            self.update() 

        def paintEvent(self, event):
            painter = QPainter(self)
            painter.setRenderHint(QPainter.Antialiasing)
            
            width = self.width()
            height = self.height()
            
            centers = [(width // 6, height // 2), (3 * width // 6, height // 2), (5 * width // 6, height // 2)]
            colors = [QColor(255, 60, 60), QColor(60, 255, 60), QColor(60, 150, 255)]
            labels = ["Motor X PWM", "Motor Y PWM", "Motor Z PWM"]
            
            radius = min(width // 6, height // 2) - 30
            if radius < 10: radius = 10
            
            for i in range(3):
                cx, cy = int(centers[i][0]), int(centers[i][1])
                
                painter.setPen(QPen(QColor(50, 50, 50), 3))
                painter.drawEllipse(cx - radius, cy - radius, radius * 2, radius * 2)
                
                painter.setPen(QPen(Qt.lightGray, 1))
                painter.setFont(QFont("Arial", 10, QFont.Bold))
                painter.drawText(cx - 45, cy + radius + 25, labels[i])
                
                painter.setPen(QPen(Qt.white, 1))
                painter.setFont(QFont("Arial", 12, QFont.Bold))
                painter.drawText(cx - 15, cy - radius - 15, f"{int(self.angles[i])}°")
                
                angle_rad = math.radians(self.angles[i])
                dx = radius * math.cos(angle_rad)
                dy = radius * math.sin(angle_rad)
                
                painter.setPen(QPen(colors[i], 5, cap=Qt.RoundCap))
                painter.drawLine(int(cx - dx), int(cy + dy), int(cx + dx), int(cy - dy))
                
                painter.setPen(QPen(Qt.white, 2))
                painter.setBrush(Qt.white)
                painter.drawEllipse(cx - 3, cy - 3, 6, 6)

    class MainWindow(QMainWindow):
        def __init__(self, shared_mem):
            super().__init__()
            self.shared_mem = shared_mem
            self.setWindowTitle("İHA 3-Eksen Test Platformu - Veri İstasyonu (Ubuntu 24.04)")
            self.resize(1400, 900)
            self.setStyleSheet("background-color: #121212; color: #ffffff;")

            main_widget = QWidget()
            self.setCentralWidget(main_widget)
            grid_layout = QGridLayout()
            grid_layout.setSpacing(15)
            main_widget.setLayout(grid_layout)

            pg.setConfigOption('background', '#1e1e1e')
            pg.setConfigOption('foreground', '#d3d3d3')
            pg.setConfigOptions(antialias=True)

            self.max_points = 500
            self.data = {k: np.zeros(self.max_points) for k in [
                'ax', 'ay', 'az', 'gx', 'gy', 'gz', 'angx', 'angy', 'angz',
                'f_ax', 'f_ay', 'f_az', 'f_gx', 'f_gy', 'f_gz'
            ]}

            pen_raw_x = pg.mkPen(color=(255, 100, 100, 150), width=1.5, style=Qt.DashLine)
            pen_fil_x = pg.mkPen(color=(255, 30, 30), width=2.5)
            pen_raw_y = pg.mkPen(color=(100, 255, 100, 150), width=1.5, style=Qt.DashLine)
            pen_fil_y = pg.mkPen(color=(30, 255, 30), width=2.5)
            pen_raw_z = pg.mkPen(color=(100, 150, 255, 150), width=1.5, style=Qt.DashLine)
            pen_fil_z = pg.mkPen(color=(30, 120, 255), width=2.5)

            self.plot_acc = pg.PlotWidget(title="İvmeölçer: Ham vs Filtrelenmiş")
            self.plot_acc.addLegend(offset=(10, 10))
            self.plot_acc.showGrid(x=True, y=True, alpha=0.2)
            self.curve_ax = self.plot_acc.plot(pen=pen_raw_x, name="Acc X (Ham)")
            self.curve_f_ax = self.plot_acc.plot(pen=pen_fil_x, name="Acc X (Filtreli)")
            self.curve_ay = self.plot_acc.plot(pen=pen_raw_y, name="Acc Y (Ham)")
            self.curve_f_ay = self.plot_acc.plot(pen=pen_fil_y, name="Acc Y (Filtreli)")
            self.curve_az = self.plot_acc.plot(pen=pen_raw_z, name="Acc Z (Ham)")
            self.curve_f_az = self.plot_acc.plot(pen=pen_fil_z, name="Acc Z (Filtreli)")
            grid_layout.addWidget(self.plot_acc, 0, 0)

            self.plot_gyro = pg.PlotWidget(title="Jiroskop: Ham vs Filtrelenmiş")
            self.plot_gyro.addLegend(offset=(10, 10))
            self.plot_gyro.showGrid(x=True, y=True, alpha=0.2)
            self.curve_gx = self.plot_gyro.plot(pen=pen_raw_x, name="Gyro X (Ham)")
            self.curve_f_gx = self.plot_gyro.plot(pen=pen_fil_x, name="Gyro X (Filtreli)")
            self.curve_gy = self.plot_gyro.plot(pen=pen_raw_y, name="Gyro Y (Ham)")
            self.curve_f_gy = self.plot_gyro.plot(pen=pen_fil_y, name="Gyro Y (Filtreli)")
            self.curve_gz = self.plot_gyro.plot(pen=pen_raw_z, name="Gyro Z (Ham)")
            self.curve_f_gz = self.plot_gyro.plot(pen=pen_fil_z, name="Gyro Z (Filtreli)")
            grid_layout.addWidget(self.plot_gyro, 0, 1)

            self.plot_ang = pg.PlotWidget(title="Hesaplanan Açılar (0-180°)")
            self.plot_ang.setYRange(0, 180)
            self.plot_ang.addLegend(offset=(10, 10))
            self.plot_ang.showGrid(x=True, y=True, alpha=0.2)
            self.curve_angx = self.plot_ang.plot(pen=pen_fil_x, name="Açı X")
            self.curve_angy = self.plot_ang.plot(pen=pen_fil_y, name="Açı Y")
            self.curve_angz = self.plot_ang.plot(pen=pen_fil_z, name="Açı Z")
            grid_layout.addWidget(self.plot_ang, 1, 0)

            self.motor_view = MotorVisualizer()
            grid_layout.addWidget(self.motor_view, 1, 1)

            # 30 ms'de bir paylaşılan bellekten verileri okuyup ekranı günceller
            self.timer = QTimer()
            self.timer.timeout.connect(self.update_from_shared_memory)
            self.timer.start(30)

        def map_to_180(self, raw_val):
            return (raw_val + 128) * (180.0 / 255.0)

        def update_from_shared_memory(self):
            vals = self.shared_mem[:]
            ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz = vals

            angx_180 = self.map_to_180(angx)
            angy_180 = self.map_to_180(angy)
            angz_180 = self.map_to_180(angz)

            for key in self.data.keys():
                self.data[key][:-1] = self.data[key][1:]
            
            self.data['ax'][-1], self.data['ay'][-1], self.data['az'][-1] = ax, ay, az
            self.data['gx'][-1], self.data['gy'][-1], self.data['gz'][-1] = gx, gy, gz
            self.data['angx'][-1], self.data['angy'][-1], self.data['angz'][-1] = angx_180, angy_180, angz_180
            self.data['f_ax'][-1], self.data['f_ay'][-1], self.data['f_az'][-1] = f_ax, f_ay, f_az
            self.data['f_gx'][-1], self.data['f_gy'][-1], self.data['f_gz'][-1] = f_gx, f_gy, f_gz

            self.curve_ax.setData(self.data['ax'])
            self.curve_f_ax.setData(self.data['f_ax'])
            self.curve_ay.setData(self.data['ay'])
            self.curve_f_ay.setData(self.data['f_ay'])
            self.curve_az.setData(self.data['az'])
            self.curve_f_az.setData(self.data['f_az'])

            self.curve_gx.setData(self.data['gx'])
            self.curve_f_gx.setData(self.data['f_gx'])
            self.curve_gy.setData(self.data['gy'])
            self.curve_f_gy.setData(self.data['f_gy'])
            self.curve_gz.setData(self.data['gz'])
            self.curve_f_gz.setData(self.data['f_gz'])

            self.curve_angx.setData(self.data['angx'])
            self.curve_angy.setData(self.data['angy'])
            self.curve_angz.setData(self.data['angz'])
            
            self.motor_view.update_angles(angx_180, angy_180, angz_180)

    app = QApplication(sys.argv)
    window = MainWindow(shared_array)
    window.show()
    sys.exit(app.exec_())

# =========================================================
# 2. PROCESS: VPYTHON (3D Dronlar) ve SERİ PORT OKUMA
# =========================================================
def run_vpython_and_serial(shared_array):
    # Kütüphaneleri sadece bu çekirdeğe özel içe aktarıyoruz
    import serial
    import struct
    import math
    
    # VPython'un başlatılmadan önce çevre değişkenini temizlemesi Wayland çökmelerini azaltır
    import os
    if "QT_QPA_PLATFORM" in os.environ:
        del os.environ["QT_QPA_PLATFORM"]

    from vpython import canvas, box, cylinder, cone, vector, color, compound, label, wtext, rate

    SERIAL_PORT = '/dev/ttyUSB2'   
    BAUD_RATE = 1000000     

    try:
        ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=0.1)
        print(f"[{SERIAL_PORT}] başarıyla açıldı!")
    except Exception as e:
        print(f"Bağlantı Hatası: {e}")
        return

    # VPython sahne ayarları
    scene = canvas(title="<b>FPGA PID Kontrolcüsü - 3 Eksenli Kapalı Çevrim Analizi</b>", 
                   width=1200, height=600, background=color.gray(0.1))
    scene.camera.pos = vector(0, 15, 25)
    scene.camera.axis = vector(0, -10, -25)

    cylinder(pos=vector(0,-5,0), axis=vector(0,15,0), radius=0.05, color=color.white)

    def create_drone(position, c_body, c_arms):
        body = box(pos=position, size=vector(3, 0.8, 3), color=c_body)
        arm1 = box(pos=position, size=vector(10, 0.4, 0.6), color=c_arms)
        arm1.rotate(angle=math.radians(45), axis=vector(0,1,0))
        arm2 = box(pos=position, size=vector(10, 0.4, 0.6), color=c_arms)
        arm2.rotate(angle=math.radians(-45), axis=vector(0,1,0))
        
        m1 = cylinder(pos=position + vector(3.5, 0.3, 3.5), axis=vector(0,0.5,0), radius=0.6, color=color.red)
        m2 = cylinder(pos=position + vector(-3.5, 0.3, -3.5), axis=vector(0,0.5,0), radius=0.6, color=color.blue)
        m3 = cylinder(pos=position + vector(3.5, 0.3, -3.5), axis=vector(0,0.5,0), radius=0.6, color=color.red)
        m4 = cylinder(pos=position + vector(-3.5, 0.3, 3.5), axis=vector(0,0.5,0), radius=0.6, color=color.blue)
        
        head = cone(pos=position + vector(0, 0, 5), axis=vector(0, 0, 2), radius=0.5, color=color.yellow)
        
        return compound([body, arm1, arm2, m1, m2, m3, m4, head])

    drone_sensor = create_drone(vector(-8, 0, 0), color.orange, color.white)
    lbl_sensor = label(pos=vector(-8, 5, 0), text='1. FİZİKSEL EĞİM\n(Pitch, Roll & Yaw)', height=16, color=color.orange, box=False)

    drone_servo = create_drone(vector(8, 0, 0), color.cyan, color.white)
    lbl_servo = label(pos=vector(8, 5, 0), text='2. PID SERVO TEPKİSİ\n(Pitch, Roll & Yaw)', height=16, color=color.cyan, box=False)

    scene.append_to_caption('\n<hr>\n')
    telemetry_hud = wtext(text='<b>Paket Bekleniyor...</b>', html=True, 
                          style='font-family: monospace; font-size: 16px; color: lime; background-color: black; padding: 10px; display: block;')

    # Protokol Sabitleri[cite: 13]
    HEADER = b'\xAB\xCD'
    FOOTER = b'\xCD\xEF'
    PACKET_SIZE = 31 
    STRUCT_FORMAT = '>hhhhhhBBBhhhhhh' 

    buffer = bytearray()
    yaw_sensor_rad = 0.0
    dt = 0.02 
    GYRO_SCALE = 131.0 

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
                    
                    # Verileri diğer işlem çekirdeğine yolla
                    shared_array[:] = [raw_ax, raw_ay, raw_az, raw_gx, raw_gy, raw_gz, 
                                       servo_x, servo_y, servo_z, 
                                       f_ax, f_ay, f_az, f_gx, f_gy, f_gz]
                    
                    if f_az == 0: f_az = 1 
                    
                    pitch_sensor_rad = math.atan2(f_ay, f_az)
                    roll_sensor_rad  = math.atan2(-f_ax, f_az)
                    
                    gyro_z_dps = f_gz / GYRO_SCALE 
                    yaw_sensor_rad += math.radians(gyro_z_dps) * dt 
                    
                    drone_sensor.up = vector(0, 1, 0)
                    drone_sensor.axis = vector(1, 0, 0)
                    
                    drone_sensor.rotate(angle=yaw_sensor_rad, axis=vector(0, 1, 0)) 
                    drone_sensor.rotate(angle=pitch_sensor_rad, axis=vector(1, 0, 0)) 
                    drone_sensor.rotate(angle=-roll_sensor_rad, axis=vector(0, 0, 1))
                    
                    pitch_servo_rad = math.radians((servo_y - 128.0) * (90.0 / 128.0))
                    roll_servo_rad  = math.radians((servo_x - 128.0) * (90.0 / 128.0))
                    yaw_servo_rad   = math.radians((servo_z - 128.0) * (90.0 / 128.0))
                    
                    drone_servo.up = vector(0, 1, 0)
                    drone_servo.axis = vector(1, 0, 0)
                    
                    drone_servo.rotate(angle=yaw_servo_rad, axis=vector(0, 1, 0))   
                    drone_servo.rotate(angle=pitch_servo_rad, axis=vector(1, 0, 0)) 
                    drone_servo.rotate(angle=-roll_servo_rad, axis=vector(0, 0, 1)) 

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
                            <td><b>YAW (Z):</b> {math.degrees(yaw_sensor_rad):+6.1f}° (Jiroskop)</td>
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

# =========================================================
# 3. ANA BAŞLATICI (Multiprocessing Yönetimi)
# =========================================================
if __name__ == '__main__':
    # Ubuntu 24.04 ortamında VPython ve PyQt5'in kilitlenmesini engellemek için zorunlu 'spawn' metodu
    try:
        mp.set_start_method('spawn', force=True)
    except RuntimeError:
        pass

    # İşlem çekirdeklerinin veri paylaşacağı bellek dizisi (15 adet ondalıklı sayı)
    shared_array = mp.Array('d', 15)

    # 1. Çekirdek: PyQt5 GUI
    gui_process = mp.Process(target=run_pyqt_dashboard, args=(shared_array,))
    gui_process.start()

    # VPython sunucusunun hazır olması için kısa bir bekleme
    time.sleep(2)

    # Ubuntu Snap Tarayıcı engelini aşmak için tarayıcıyı ana çekirdekten manuel tetikliyoruz
    print("\n" + "="*60)
    print(">>> DİKKAT: 3D DİJİTAL İKİZ (VPython) BAŞLATILIYOR <<<")
    print("Eğer tarayıcı sekmesi otomatik açılmazsa, aşağıdaki linke CTRL + Tıklama yapın:")
    print("http://localhost:5050")
    print("="*60 + "\n")
    
    # Sistemin varsayılan tarayıcısını dışarıdan açmaya çalışır
    try:
        webbrowser.open_new_tab('http://localhost:5050')
    except:
        pass

    # 2. Çekirdek: Seri Port + VPython
    run_vpython_and_serial(shared_array)

    # Ana pencere kapanana kadar kodu açık tut
    gui_process.join()
