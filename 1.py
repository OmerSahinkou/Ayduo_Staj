import sys
import serial
import struct
import math
import time
import numpy as np
import pyqtgraph as pg
from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QHBoxLayout, 
                             QWidget, QGridLayout, QCheckBox, QLabel, QFrame)
from PyQt5.QtCore import QThread, pyqtSignal, Qt, QTimer
from PyQt5.QtGui import QPainter, QPen, QColor, QFont, QBrush

# ---------------------------------------------------------
# 1. SERİ PORT VE SİMÜLASYON İŞ PARÇACIĞI
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
            ser = serial.Serial(self.port, self.baudrate, timeout=1)
            print(f"[BAŞARILI] {self.port} portu açıldı. Gerçek veriler okunuyor...")
            
            while self.is_running:
                if ser.read(1) == b'\xAB':
                    if ser.read(1) == b'\xCD':
                        payload = ser.read(29)
                        if len(payload) == 29 and payload[27:29] == b'\xCD\xEF':
                            raw_data = struct.unpack(">hhhhhhbbbhhhhhh", payload[0:27])
                            self.data_received.emit(*raw_data)
        except Exception as e:
            print(f"[UYARI] FPGA bulunamadı. SİMÜLASYON MODU BAŞLATILIYOR...")
            t = 0.0
            while self.is_running:
                time.sleep(0.05) 
                t += 0.1
                
                # Sensör verilerini taklit et (Gürültülü dalgalar)
                ax = int(math.sin(t) * 8000 + (np.random.rand()-0.5)*1000)       
                ay = int(math.cos(t * 0.5) * 8000 + (np.random.rand()-0.5)*1000) 
                az = 16384                         
                gx, gy, gz = 0, 0, int(math.sin(t * 2) * 2000)   
                
                # FPGA'in filtrelediğini varsaydığımız daha temiz veriler
                f_ax = int(math.sin(t) * 8000)
                f_ay = int(math.cos(t * 0.5) * 8000)
                f_az = 16384
                f_gx, f_gy, f_gz = gx, gy, gz
                
                # Servo Açıları (FPGA'in düzeltme çabası)
                ang_x = int(128 - math.sin(t) * 40)       
                ang_y = int(128 - math.cos(t * 0.5) * 40)
                ang_z = int(128 - math.sin(t * 1.5) * 40)
                
                self.data_received.emit(ax, ay, az, gx, gy, gz, ang_x, ang_y, ang_z, f_ax, f_ay, f_az, f_gx, f_gy, f_gz)

    def stop(self):
        self.is_running = False
        self.wait()

# ---------------------------------------------------------
# 2. FİZİK TABANLI DENGE SİMÜLASYONU (DÜŞME EKLENTİLİ)
# ---------------------------------------------------------
class BalanceSimulator(QWidget):
    def __init__(self, title, is_yaw=False):
        super().__init__()
        self.setMinimumSize(300, 300)
        self.setStyleSheet("background-color: #1a1a1a; border-radius: 10px; border: 2px solid #333;")
        self.title, self.is_yaw = title, is_yaw
        self.platform_angle = 0.0
        
        self.ball_x, self.ball_velocity = 0.0, 0.0   
        self.gravity, self.friction = 0.5, 0.98       
        self.platform_length, self.ball_radius = 230, 12
        
        # Düşme Mekaniği Değişkenleri
        self.is_fallen = False
        self.fall_x = 0.0
        self.fall_y = 0.0
        self.respawn_timer = 0
        
        self.timer = QTimer()
        self.timer.timeout.connect(self.update_physics)
        self.timer.start(16)

    def update_angle(self, angle):
        self.platform_angle = angle

    def update_physics(self):
        if not self.is_yaw:
            if not self.is_fallen:
                angle_rad = math.radians(self.platform_angle)
                self.ball_velocity += self.gravity * math.sin(angle_rad)
                self.ball_velocity *= self.friction
                self.ball_x += self.ball_velocity
                
                # Top platformun ucundan dışarı çıktıysa
                max_x = (self.platform_length / 2)
                if abs(self.ball_x) > max_x:
                    self.is_fallen = True
                    self.fall_x = self.ball_x
                    self.fall_y = -self.ball_radius - 16
                    self.respawn_timer = 90 # Yaklaşık 1.5 saniye sonra merkeze döner
            else:
                # Top Serbest Düşüşte
                self.fall_y += 8 # Aşağı doğru düşme hızı
                self.respawn_timer -= 1
                
                # Süre dolunca topu sıfırla
                if self.respawn_timer <= 0:
                    self.is_fallen = False
                    self.ball_x = 0
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
            # Z Ekseni Çizimi
            painter.setPen(QPen(QColor(255, 150, 60), 4))
            painter.drawEllipse(-100, -100, 200, 200)
            painter.setPen(QPen(QColor(60, 255, 60), 6, cap=Qt.RoundCap))
            painter.drawLine(0, -100, 0, 100) 
        else:
            # Platform Çizimi
            painter.setPen(QPen(QColor(60, 150, 255), 8, cap=Qt.RoundCap))
            painter.drawLine(int(-self.platform_length/2), 0, int(self.platform_length/2), 0)
            
            # Top Çizimi (Düştü mü, platformda mı?)
            painter.setBrush(QBrush(QColor(255, 60, 60)))
            painter.setPen(Qt.NoPen)
            
            if self.is_fallen:
                painter.drawEllipse(int(self.fall_x - self.ball_radius), int(self.fall_y - self.ball_radius), 
                                    self.ball_radius * 2, self.ball_radius * 2)
            else:
                painter.drawEllipse(int(self.ball_x - self.ball_radius), -self.ball_radius - 16, 
                                    self.ball_radius * 2, self.ball_radius * 2)
            
        # Merkez Pivot
        painter.setBrush(QBrush(QColor(255, 255, 255)))
        painter.drawEllipse(-5, -5, 10, 10)
        
        painter.rotate(-self.platform_angle)
        painter.translate(-cx, -cy)
        
        # Ekran Bilgi Yazıları
        painter.setPen(QColor(255, 255, 255))
        painter.setFont(QFont("Arial", 11, QFont.Bold))
        painter.drawText(15, 25, self.title)
        painter.drawText(15, 45, f"Açı: {self.platform_angle:.1f}°")
        
        # Durum Göstergesi ve DÜŞTÜ Uyarısı
        if not self.is_yaw and self.is_fallen:
            painter.setPen(QColor(255, 0, 0))
            painter.setFont(QFont("Arial", 16, QFont.ExtraBold))
            painter.drawText(15, 75, "SİSTEM DENGESİZ - TOP DÜŞTÜ!")
        else:
            status = "DENGEDE" if abs(self.platform_angle) < 3.0 else "DÜZELTİLİYOR"
            color = QColor(60, 255, 60) if status == "DENGEDE" else QColor(255, 200, 50)
            painter.setPen(color)
            painter.setFont(QFont("Arial", 11, QFont.Bold))
            painter.drawText(15, 65, f"Durum: {status}")

# ---------------------------------------------------------
# 3. GÖRSEL ARAYÜZ (GUI)
# ---------------------------------------------------------
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("3 Eksenli İHA Test & Veri Analiz Platformu")
        self.resize(1600, 900)
        self.setStyleSheet("background-color: #121212; color: #ffffff;")

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QHBoxLayout(main_widget)
        
        # --- SOL KONTROL PANELİ ---
        control_panel = QFrame()
        control_panel.setFixedWidth(280)
        control_panel.setStyleSheet("background-color: #1e1e1e; border-radius: 10px;")
        control_layout = QVBoxLayout(control_panel)
        
        title = QLabel("VERİ GÖRÜNÜRLÜĞÜ")
        title.setFont(QFont("Arial", 12, QFont.Bold))
        title.setAlignment(Qt.AlignCenter)
        control_layout.addWidget(title)
        
        self.checks = {}
        labels = {
            'raw': 'Ham Sensör Verisi (İvme)',
            'filtered': 'Filtreli Sensör Verisi',
            'python': 'Hesaplanan Anlık Açı',
            'servo': 'Servo Çıkış Açısı (FPGA)'
        }
        
        for key, text in labels.items():
            chk = QCheckBox(text)
            chk.setChecked(True)
            chk.setStyleSheet("QCheckBox { spacing: 10px; font-size: 14px; padding: 5px; } QCheckBox::indicator { width: 20px; height: 20px; }")
            chk.stateChanged.connect(self.update_visibility)
            self.checks[key] = chk
            control_layout.addWidget(chk)
            
        control_layout.addStretch()
        main_layout.addWidget(control_panel)

        # --- SAĞ İÇERİK ---
        right_panel = QWidget()
        right_layout = QGridLayout(right_panel)
        main_layout.addWidget(right_panel, stretch=1)

        pg.setConfigOption('background', '#1e1e1e')
        pg.setConfigOption('foreground', '#d3d3d3')
        pg.setConfigOptions(antialias=True)

        self.max_points = 300
        self.data = {k: np.zeros(self.max_points) for k in [
            'angx', 'angy', 'angz',       
            'py_angx', 'py_angy', 'py_angz',
            'raw_x', 'raw_y', 'raw_z',
            'fil_x', 'fil_y', 'fil_z'
        ]}
        self.py_yaw = 0.0 

        self.pens = {
            'raw': pg.mkPen(color=(150, 150, 150, 150), width=1.5, style=Qt.DotLine), 
            'filtered': pg.mkPen(color=(255, 150, 50, 200), width=2, style=Qt.DashLine), 
            'python': pg.mkPen(color=(50, 150, 255), width=2.5), 
            'servo': pg.mkPen(color=(50, 255, 50), width=2.5)    
        }

        self.plots = {}
        self.curves = {'raw': {}, 'filtered': {}, 'python': {}, 'servo': {}}
        
        axes = [('X', 'Yatış (Roll)'), ('Y', 'Yunuslama (Pitch)'), ('Z', 'Sapma (Yaw)')]
        
        for i, (axis, name) in enumerate(axes):
            plot = pg.PlotWidget(title=f"{axis} Ekseni - {name}")
            plot.setYRange(-100, 100)
            plot.addLegend(offset=(10, 10))
            plot.showGrid(x=True, y=True, alpha=0.2)
            
            self.curves['raw'][axis] = plot.plot(pen=self.pens['raw'], name="Ham Veri")
            self.curves['filtered'][axis] = plot.plot(pen=self.pens['filtered'], name="Filtreli Veri")
            self.curves['python'][axis] = plot.plot(pen=self.pens['python'], name="Anlık Açı")
            self.curves['servo'][axis] = plot.plot(pen=self.pens['servo'], name="Servo Çıkışı")
            
            right_layout.addWidget(plot, 0, i)
            self.plots[axis] = plot

        # Simülasyonlar
        self.sim_x = BalanceSimulator("X - Yatış (Roll)")
        self.sim_y = BalanceSimulator("Y - Yunuslama (Pitch)")
        self.sim_z = BalanceSimulator("Z - Sapma (Yaw)", is_yaw=True)
        right_layout.addWidget(self.sim_x, 1, 0)
        right_layout.addWidget(self.sim_y, 1, 1)
        right_layout.addWidget(self.sim_z, 1, 2)

        self.serial_thread = SerialReader(port="/dev/ttyUSB3", baudrate=115200)
        self.serial_thread.data_received.connect(self.update_data)
        self.serial_thread.start()

    def update_visibility(self):
        for key, chk in self.checks.items():
            is_visible = chk.isChecked()
            for axis in ['X', 'Y', 'Z']:
                self.curves[key][axis].setVisible(is_visible)

    def map_to_angle(self, raw_val):
        return (raw_val - 128) * (90.0 / 128.0)
        
    def normalize_accel(self, acc_val):
        return (acc_val / 16384.0) * 90.0

    def update_data(self, ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz):
        angx_deg, angy_deg, angz_deg = map(self.map_to_angle, (angx, angy, angz))

        try:
            py_calc_angx = math.degrees(math.atan2(ay, az))
            py_calc_angy = math.degrees(math.atan2(-ax, az)) 
        except:
            py_calc_angx, py_calc_angy = 0.0, 0.0

        self.py_yaw += (gz / 131.0) * 0.016
        if self.py_yaw > 90: self.py_yaw = 90
        elif self.py_yaw < -90: self.py_yaw = -90

        for key in self.data.keys():
            self.data[key][:-1] = self.data[key][1:]
        
        self.data['angx'][-1], self.data['angy'][-1], self.data['angz'][-1] = angx_deg, angy_deg, angz_deg
        self.data['py_angx'][-1], self.data['py_angy'][-1], self.data['py_angz'][-1] = py_calc_angx, py_calc_angy, self.py_yaw
        
        self.data['raw_x'][-1], self.data['raw_y'][-1], self.data['raw_z'][-1] = map(self.normalize_accel, (ax, ay, az))
        self.data['fil_x'][-1], self.data['fil_y'][-1], self.data['fil_z'][-1] = map(self.normalize_accel, (f_ax, f_ay, f_az))
        
        for idx, axis in enumerate(['X', 'Y', 'Z']):
            ax_lower = axis.lower()
            self.curves['raw'][axis].setData(self.data[f'raw_{ax_lower}'])
            self.curves['filtered'][axis].setData(self.data[f'fil_{ax_lower}'])
            self.curves['python'][axis].setData(self.data[f'py_ang{ax_lower}'])
            self.curves['servo'][axis].setData(self.data[f'ang{ax_lower}'])

        self.sim_x.update_angle(py_calc_angx)
        self.sim_y.update_angle(py_calc_angy)
        self.sim_z.update_angle(self.py_yaw)

    def closeEvent(self, event):
        self.serial_thread.stop()
        event.accept()

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
