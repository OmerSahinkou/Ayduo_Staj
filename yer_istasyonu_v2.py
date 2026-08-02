import sys
import serial
import struct
import math
import numpy as np
import pyqtgraph as pg
from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QHBoxLayout, 
                             QWidget, QGridLayout, QPushButton, QLabel, QFrame)
from PyQt5.QtCore import QThread, pyqtSignal, Qt, QTimer
from PyQt5.QtGui import QPainter, QPen, QColor, QFont, QBrush

# ---------------------------------------------------------
# 1. SERİ PORT OKUMA İŞ PARÇACIĞI
# ---------------------------------------------------------
class SerialReader(QThread):
    data_received = pyqtSignal(
        float, float, float, float, float, float, 
        float, float, float, 
        float, float, float, float, float, float
    )

    def __init__(self, port, baudrate):
        super().__init__()
        self.port = port
        self.baudrate = baudrate
        self.is_running = True

    def run(self):
        try:
            ser = serial.Serial(self.port, self.baudrate, timeout=1) #[cite: 1]
            print(f"[BAŞARILI] {self.port} portu {self.baudrate} baud hızında açıldı.") #[cite: 1]
            
            while self.is_running:
                if ser.read(1) == b'\xAB': #[cite: 1]
                    if ser.read(1) == b'\xCD': #[cite: 1]
                        payload = ser.read(29) #[cite: 1]
                        
                        if len(payload) == 29 and payload[27:29] == b'\xCD\xEF': #[cite: 1]
                            # 6 short (ham) + 3 byte (açı) + 6 short (filtreli) = Toplam 27 byte[cite: 1]
                            raw_data = struct.unpack(">hhhhhhbbbhhhhhh", payload[0:27]) #[cite: 1]
                            
                            ax, ay, az = raw_data[0:3] #[cite: 1]
                            gx, gy, gz = raw_data[3:6] #[cite: 1]
                            ang_x, ang_y, ang_z = raw_data[6:9] #[cite: 1]
                            f_ax, f_ay, f_az = raw_data[9:12] #[cite: 1]
                            f_gx, f_gy, f_gz = raw_data[12:15] #[cite: 1]
                            
                            self.data_received.emit(
                                ax, ay, az, gx, gy, gz, 
                                ang_x, ang_y, ang_z, 
                                f_ax, f_ay, f_az, f_gx, f_gy, f_gz
                            )
        except Exception as e:
            print(f"[HATA] Seri port hatası: {e}") #[cite: 1]

    def stop(self):
        self.is_running = False #[cite: 1]
        self.wait() #[cite: 1]

# ---------------------------------------------------------
# 2. FİZİK TABANLI DENGE SİMÜLASYONU WIDGET'I (X, Y ve Z için)
# ---------------------------------------------------------
class BalanceSimulator(QWidget):
    def __init__(self, title, is_yaw=False):
        super().__init__()
        self.setMinimumSize(300, 300)
        self.setStyleSheet("background-color: #1a1a1a; border-radius: 10px; border: 2px solid #333;")
        
        self.title = title
        self.is_yaw = is_yaw # Z ekseni (Yaw) ise top yerine dönüş platformu çizer
        self.platform_angle = 0.0
        
        # Fizik Değişkenleri
        self.ball_x = 0.0          
        self.ball_velocity = 0.0   
        self.gravity = 0.5         
        self.friction = 0.96       
        self.platform_length = 250
        self.ball_radius = 12
        
        self.timer = QTimer()
        self.timer.timeout.connect(self.update_physics)
        self.timer.start(16) # ~60Hz

    def update_angle(self, angle):
        self.platform_angle = angle

    def update_physics(self):
        if not self.is_yaw:
            angle_rad = math.radians(self.platform_angle)
            acceleration = self.gravity * math.sin(angle_rad)
            
            self.ball_velocity += acceleration
            self.ball_velocity *= self.friction
            self.ball_x += self.ball_velocity
            
            max_x = (self.platform_length / 2) - self.ball_radius
            if self.ball_x > max_x:
                self.ball_x = max_x
                self.ball_velocity = 0
            elif self.ball_x < -max_x:
                self.ball_x = -max_x
                self.ball_velocity = 0
                
        self.update() 

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        
        cx, cy = self.width() // 2, self.height() // 2
        
        # Arka Plan Kılavuz Çizgileri
        painter.setPen(QPen(QColor(50, 50, 50), 1, Qt.DashLine))
        painter.drawLine(0, cy, self.width(), cy)
        painter.drawLine(cx, 0, cx, self.height())
        
        painter.translate(cx, cy)
        painter.rotate(self.platform_angle)
        
        if self.is_yaw:
            # Z Ekseni (Yaw) İçin Kuşbakışı Drone / Platform Çizimi
            painter.setPen(QPen(QColor(255, 150, 60), 4))
            painter.drawEllipse(-100, -100, 200, 200)
            
            painter.setPen(QPen(QColor(60, 255, 60), 6, cap=Qt.RoundCap))
            painter.drawLine(0, -100, 0, 100) # İleri Yön İşaretçisi
            painter.setPen(QPen(QColor(255, 60, 60), 4, cap=Qt.RoundCap))
            painter.drawLine(-80, 0, 80, 0)
        else:
            # X ve Y Eksenleri İçin Denge Platformu Çizimi
            painter.setPen(QPen(QColor(60, 150, 255), 8, cap=Qt.RoundCap))
            painter.drawLine(int(-self.platform_length/2), 0, int(self.platform_length/2), 0)
            
            ball_y = -self.ball_radius - 4
            painter.setBrush(QBrush(QColor(255, 60, 60)))
            painter.setPen(Qt.NoPen)
            painter.drawEllipse(int(self.ball_x - self.ball_radius), int(ball_y - self.ball_radius), 
                                self.ball_radius * 2, self.ball_radius * 2)
            
        # Merkez Noktası
        painter.setBrush(QBrush(QColor(255, 255, 255)))
        painter.drawEllipse(-5, -5, 10, 10)
        
        # Yazıları Düzeltip Ekrana Bas
        painter.rotate(-self.platform_angle)
        painter.translate(-cx, -cy)
        
        painter.setPen(QColor(255, 255, 255))
        painter.setFont(QFont("Arial", 11, QFont.Bold))
        painter.drawText(15, 25, self.title)
        painter.drawText(15, 45, f"Açı: {self.platform_angle:.1f}°")
        
        status = "DENGEDE" if abs(self.platform_angle) < 3.0 else "DENGESİZ"
        color = QColor(60, 255, 60) if status == "DENGEDE" else QColor(255, 60, 60)
        painter.setPen(color)
        painter.drawText(15, 65, status)

# ---------------------------------------------------------
# 3. GÖRSEL ARAYÜZ (GUI)
# ---------------------------------------------------------
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("3 Eksenli İHA Test & Denge Platformu")
        self.resize(1600, 900)
        self.setStyleSheet("background-color: #121212; color: #ffffff;")

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QHBoxLayout(main_widget)
        
        # --- SOL KONTROL PANELİ ---
        control_panel = QFrame()
        control_panel.setFixedWidth(250)
        control_panel.setStyleSheet("background-color: #1e1e1e; border-radius: 10px;")
        control_layout = QVBoxLayout(control_panel)
        
        title = QLabel("VERİ FİLTRESİ")
        title.setFont(QFont("Arial", 14, QFont.Bold))
        title.setAlignment(Qt.AlignCenter)
        control_layout.addWidget(title)
        
        self.btn_all = QPushButton("Tüm Verileri Göster")
        self.btn_servo = QPushButton("Sadece Servo Açıları (FPGA)")
        self.btn_python = QPushButton("Sadece Ham Sensör Açıları")
        
        for btn in [self.btn_all, self.btn_servo, self.btn_python]:
            btn.setStyleSheet("QPushButton { background-color: #333; padding: 10px; border-radius: 5px; font-weight: bold; } QPushButton:hover { background-color: #555; }")
            control_layout.addWidget(btn)
            
        self.btn_all.clicked.connect(lambda: self.toggle_views("all"))
        self.btn_servo.clicked.connect(lambda: self.toggle_views("servo"))
        self.btn_python.clicked.connect(lambda: self.toggle_views("python"))
        
        control_layout.addStretch()
        main_layout.addWidget(control_panel)

        # --- SAĞ İÇERİK (Grafikler ve Simülasyon) ---
        right_panel = QWidget()
        right_layout = QGridLayout(right_panel)
        main_layout.addWidget(right_panel, stretch=1)

        pg.setConfigOption('background', '#1e1e1e') #[cite: 1]
        pg.setConfigOption('foreground', '#d3d3d3') #[cite: 1]
        pg.setConfigOptions(antialias=True) #[cite: 1]

        self.max_points = 300 #[cite: 1]
        self.data = {k: np.zeros(self.max_points) for k in [ #[cite: 1]
            'angx', 'angy', 'angz',       # FPGA'den gelen servo açıları
            'py_angx', 'py_angy', 'py_angz' # Python'da hesaplanan açılar
        ]}
        
        self.py_yaw_integrated = 0.0 # Z ekseni (Yaw) integrali için değişken

        pen_servo = pg.mkPen(color=(60, 255, 60), width=2.5) # Yeşil
        pen_python = pg.mkPen(color=(255, 100, 100), width=2.0, style=Qt.DashLine) # Kırmızı Kesik

        # --- GRAFİKLER (Üst Kısım) ---
        self.plots = {}
        self.curves_servo = {}
        self.curves_python = {}
        
        axes = [('X', 'Yatış (Roll)'), ('Y', 'Yunuslama (Pitch)'), ('Z', 'Sapma (Yaw)')]
        
        for i, (axis, name) in enumerate(axes):
            plot = pg.PlotWidget(title=f"{axis} Ekseni - {name}")
            plot.setYRange(-90, 90)
            plot.addLegend(offset=(10, 10)) #[cite: 1]
            plot.showGrid(x=True, y=True, alpha=0.2) #[cite: 1]
            
            self.curves_servo[axis] = plot.plot(pen=pen_servo, name="Servo Açısı (FPGA)")
            self.curves_python[axis] = plot.plot(pen=pen_python, name="Ham Açı (Python)")
            
            right_layout.addWidget(plot, 0, i)
            self.plots[axis] = plot

        # --- SİMÜLASYONLAR (Alt Kısım) ---
        self.sim_x = BalanceSimulator("X Ekseni - Yatış (Roll)")
        self.sim_y = BalanceSimulator("Y Ekseni - Yunuslama (Pitch)")
        self.sim_z = BalanceSimulator("Z Ekseni - Sapma (Yaw)", is_yaw=True)
        
        right_layout.addWidget(self.sim_x, 1, 0)
        right_layout.addWidget(self.sim_y, 1, 1)
        right_layout.addWidget(self.sim_z, 1, 2)

        # Seri Port Başlatma
        self.serial_thread = SerialReader(port="/dev/ttyUSB2", baudrate=1000000) #[cite: 1]
        self.serial_thread.data_received.connect(self.update_data) #[cite: 1]
        self.serial_thread.start() #[cite: 1]

    def toggle_views(self, mode):
        for axis in ['X', 'Y', 'Z']:
            self.curves_servo[axis].setVisible(mode in ["all", "servo"])
            self.curves_python[axis].setVisible(mode in ["all", "python"])

    def map_to_angle(self, raw_val):
        return (raw_val - 128) * (90.0 / 128.0)

    def update_data(self, ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz): #[cite: 1]
        
        # 1. FPGA'den Gelen Servo Açıları
        angx_deg = self.map_to_angle(angx)
        angy_deg = self.map_to_angle(angy)
        angz_deg = self.map_to_angle(angz)

        # 2. Python'da İvme ve Jiroskop Kullanarak Açı Hesaplama
        try:
            # X (Roll): Y ve Z ivmesine göre düzlemsel eğim
            py_calc_angx = math.degrees(math.atan2(ay, az))
            # Y (Pitch): X ve Z ivmesine göre düzlemsel eğim
            py_calc_angy = math.degrees(math.atan2(-ax, az)) 
        except:
            py_calc_angx, py_calc_angy = 0.0, 0.0

        # Z (Yaw): İvmeölçer ile yerçekimine dik eksen ölçülemediği için Jiroskop (gz) integralini alıyoruz.
        dt = 0.016 # 60Hz veri akışı varsayımı
        gyro_scale = 131.0 # MPU6050 için varsayılan LSB/deg/s hassasiyeti
        self.py_yaw_integrated += (gz / gyro_scale) * dt
        
        # Z açısını -90 ile +90 arasına sınırla (Grafikte düzgün görünmesi için)
        if self.py_yaw_integrated > 90: self.py_yaw_integrated = 90
        elif self.py_yaw_integrated < -90: self.py_yaw_integrated = -90

        # Veri dizilerini kaydır
        for key in self.data.keys(): #[cite: 1]
            self.data[key][:-1] = self.data[key][1:] #[cite: 1]
        
        self.data['angx'][-1], self.data['angy'][-1], self.data['angz'][-1] = angx_deg, angy_deg, angz_deg
        self.data['py_angx'][-1] = py_calc_angx
        self.data['py_angy'][-1] = py_calc_angy
        self.data['py_angz'][-1] = self.py_yaw_integrated
        
        # Grafikleri Güncelle
        self.curves_servo['X'].setData(self.data['angx'])
        self.curves_python['X'].setData(self.data['py_angx'])
        
        self.curves_servo['Y'].setData(self.data['angy'])
        self.curves_python['Y'].setData(self.data['py_angy'])
        
        self.curves_servo['Z'].setData(self.data['angz'])
        self.curves_python['Z'].setData(self.data['py_angz'])

        # Fizik Simülasyonlarını Güncelle
        # Not: Platformun eğimini gerçek sensör açısına (Python'da hesaplanan) göre hareket ettiriyoruz
        self.sim_x.update_angle(py_calc_angx)
        self.sim_y.update_angle(py_calc_angy)
        self.sim_z.update_angle(self.py_yaw_integrated)

    def closeEvent(self, event): #[cite: 1]
        self.serial_thread.stop() #[cite: 1]
        event.accept() #[cite: 1]

if __name__ == '__main__': #[cite: 1]
    app = QApplication(sys.argv) #[cite: 1]
    window = MainWindow() #[cite: 1]
    window.show() #[cite: 1]
    sys.exit(app.exec_()) #[cite: 1]
