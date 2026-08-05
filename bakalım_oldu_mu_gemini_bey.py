import sys
import serial
import struct
import math
import numpy as np
import pyqtgraph as pg
from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QWidget, 
                             QGridLayout, QHBoxLayout, QPushButton, QLabel, QSpinBox)
from PyQt5.QtCore import QThread, pyqtSignal, Qt
from PyQt5.QtGui import QPainter, QPen, QColor, QFont

# ---------------------------------------------------------
# 1. SERİ PORT OKUMA VE YAZMA İŞ PARÇACIĞI (THREAD)
# ---------------------------------------------------------
class SerialReader(QThread):
    # Sırası: Acc (x3), Gyro (x3), Angle (x3), f_Acc (x3), f_Gyro (x3) -> Toplam 15 Değer
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
        self.ser = None

    def run(self):
        try:
            # Seri portu başlat
            self.ser = serial.Serial(self.port, self.baudrate, timeout=1)
            print(f"[BAŞARILI] {self.port} portu {self.baudrate} baud hızında açıldı.")
            
            while self.is_running:
                # 1. İlk Header Byte'ını (0xAB) ara
                if self.ser.read(1) == b'\xAB':
                    # 2. İkinci Header Byte'ını (0xCD) doğrula
                    if self.ser.read(1) == b'\xCD':
                        
                        # 3. Kalan paketi tek seferde oku (27 byte veri + 2 byte footer = 29 byte)
                        payload = self.ser.read(29)
                        
                        if len(payload) == 29:
                            # 4. Footer (0xCD, 0xEF) doğru mu diye kontrol et
                            if payload[27:29] == b'\xCD\xEF':
                                
                                # 5. Veriyi Parçala (Unpack)
                                raw_data = struct.unpack(">hhhhhhbbbhhhhhh", payload[0:27])
                                
                                ax, ay, az = raw_data[0:3]
                                gx, gy, gz = raw_data[3:6]
                                ang_x, ang_y, ang_z = raw_data[6:9]
                                f_ax, f_ay, f_az = raw_data[9:12]
                                f_gx, f_gy, f_gz = raw_data[12:15]
                                
                                # Veriyi GUI'ye gönder
                                self.data_received.emit(
                                    ax, ay, az, gx, gy, gz, 
                                    ang_x, ang_y, ang_z, 
                                    f_ax, f_ay, f_az, f_gx, f_gy, f_gz
                                )
                                
        except Exception as e:
            print(f"[HATA] Seri port hatası: {e}")

    def send_config(self, g_val, dps_val):
        """VHDL State Machine'ine uygun konfigürasyon paketini gönderir"""
        if self.ser and self.ser.is_open:
            try:
                # VHDL Senaryosu:
                # DE (Wait_Header_2) -> EF (Get_G) -> G_VAL (Get_DPS) -> DPS_VAL (Wait_Foot_1) 
                # -> CE (Wait_Foot_2) -> FA (Last_Foot) -> EA (Set Valid) -> 01 (Apply & Reset)
                packet = bytes([0xDE, 0xEF, g_val, dps_val, 0xCE, 0xFA, 0xEA, 0x01])
                self.ser.write(packet)
                print(f"[BİLGİ] Konfigürasyon paketi gönderildi: {packet.hex().upper()}")
            except Exception as e:
                print(f"[HATA] Konfigürasyon gönderilemedi: {e}")

    def stop(self):
        self.is_running = False
        self.wait()

# ---------------------------------------------------------
# 2. MOTOR GÖRSELLEŞTİRME BİLEŞENİ (CUSTOM WIDGET)
# ---------------------------------------------------------
class MotorVisualizer(QWidget):
    def __init__(self):
        super().__init__()
        self.setMinimumWidth(300)
        self.angles = [0, 0, 0] # X, Y, Z açıları
        self.setStyleSheet("background-color: #0f0f0f; border-radius: 10px;")

    def update_angles(self, ax, ay, az):
        self.angles = [ax, ay, az]
        self.update() 

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        
        width = self.width()
        height = self.height()
        
        centers = [
            (width // 6, height // 2),
            (3 * width // 6, height // 2),
            (5 * width // 6, height // 2)
        ]
        
        colors = [QColor(255, 60, 60), QColor(60, 255, 60), QColor(60, 150, 255)]
        labels = ["Eksen X", "Eksen Y", "Eksen Z"]
        
        radius = min(width // 6, height // 2) - 30
        
        for i in range(3):
            cx, cy = int(centers[i][0]), int(centers[i][1])
            
            painter.setPen(QPen(QColor(50, 50, 50), 3))
            painter.drawEllipse(cx - radius, cy - radius, radius * 2, radius * 2)
            
            painter.setPen(QPen(Qt.lightGray, 1))
            painter.setFont(QFont("Arial", 10, QFont.Bold))
            painter.drawText(cx - 25, cy + radius + 25, labels[i])
            
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

# ---------------------------------------------------------
# 3. GÖRSEL ARAYÜZ (GUI) VE GRAFİKLER
# ---------------------------------------------------------
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("İHA 3-Eksen Test Platformu - Veri İstasyonu")
        self.resize(1400, 950)
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

        # 1. İVMEÖLÇER GRAFİĞİ
        self.plot_acc = pg.PlotWidget(title="İvmeölçer: Ham vs Filtrelenmiş")
        self.plot_acc.addLegend(offset=(10, 10))
        self.plot_acc.showGrid(x=True, y=True, alpha=0.2)
        
        self.curve_ax    = self.plot_acc.plot(pen=pen_raw_x, name="Acc X (Ham)")
        self.curve_f_ax  = self.plot_acc.plot(pen=pen_fil_x, name="Acc X (Filtreli)")
        self.curve_ay    = self.plot_acc.plot(pen=pen_raw_y, name="Acc Y (Ham)")
        self.curve_f_ay  = self.plot_acc.plot(pen=pen_fil_y, name="Acc Y (Filtreli)")
        self.curve_az    = self.plot_acc.plot(pen=pen_raw_z, name="Acc Z (Ham)")
        self.curve_f_az  = self.plot_acc.plot(pen=pen_fil_z, name="Acc Z (Filtreli)")
        
        grid_layout.addWidget(self.plot_acc, 0, 0)

        # 2. JİROSKOP GRAFİĞİ
        self.plot_gyro = pg.PlotWidget(title="Jiroskop: Ham vs Filtrelenmiş")
        self.plot_gyro.addLegend(offset=(10, 10))
        self.plot_gyro.showGrid(x=True, y=True, alpha=0.2)
        
        self.curve_gx    = self.plot_gyro.plot(pen=pen_raw_x, name="Gyro X (Ham)")
        self.curve_f_gx  = self.plot_gyro.plot(pen=pen_fil_x, name="Gyro X (Filtreli)")
        self.curve_gy    = self.plot_gyro.plot(pen=pen_raw_y, name="Gyro Y (Ham)")
        self.curve_f_gy  = self.plot_gyro.plot(pen=pen_fil_y, name="Gyro Y (Filtreli)")
        self.curve_gz    = self.plot_gyro.plot(pen=pen_raw_z, name="Gyro Z (Ham)")
        self.curve_f_gz  = self.plot_gyro.plot(pen=pen_fil_z, name="Gyro Z (Filtreli)")
        
        grid_layout.addWidget(self.plot_gyro, 0, 1)

        # 3. AÇI (ANGLE) GRAFİĞİ
        self.plot_ang = pg.PlotWidget(title="Hesaplanan Açılar (0-180°)")
        self.plot_ang.setYRange(0, 180)
        self.plot_ang.addLegend(offset=(10, 10))
        self.plot_ang.showGrid(x=True, y=True, alpha=0.2)
        
        self.curve_angx = self.plot_ang.plot(pen=pen_fil_x, name="Açı X")
        self.curve_angy = self.plot_ang.plot(pen=pen_fil_y, name="Açı Y")
        self.curve_angz = self.plot_ang.plot(pen=pen_fil_z, name="Açı Z")
        
        grid_layout.addWidget(self.plot_ang, 1, 0)

        # 4. MOTOR GÖRSELİ
        self.motor_view = MotorVisualizer()
        grid_layout.addWidget(self.motor_view, 1, 1)

        # ---------------------------------------------------------
        # 5. MPU6500 KONFİGÜRASYON PANELİ (YENİ EKLENEN KISIM)
        # ---------------------------------------------------------
        control_layout = QHBoxLayout()
        control_layout.setContentsMargins(10, 10, 10, 10)
        
        # G Değeri Seçimi (Hex)
        self.lbl_g = QLabel("G Değeri (Hex):")
        self.lbl_g.setFont(QFont("Arial", 11, QFont.Bold))
        self.spin_g = QSpinBox()
        self.spin_g.setDisplayIntegerBase(16) # Hex formatı
        self.spin_g.setRange(0, 255)
        self.spin_g.setPrefix("0x")
        self.spin_g.setStyleSheet("background-color: #2e2e2e; color: white; padding: 5px; border-radius: 4px;")
        
        # DPS Değeri Seçimi (Hex)
        self.lbl_dps = QLabel("DPS Değeri (Hex):")
        self.lbl_dps.setFont(QFont("Arial", 11, QFont.Bold))
        self.spin_dps = QSpinBox()
        self.spin_dps.setDisplayIntegerBase(16) # Hex formatı
        self.spin_dps.setRange(0, 255)
        self.spin_dps.setPrefix("0x")
        self.spin_dps.setStyleSheet("background-color: #2e2e2e; color: white; padding: 5px; border-radius: 4px;")
        
        # Gönder Butonu
        self.btn_send = QPushButton("MPU6500 Konfigürasyonu Gönder")
        self.btn_send.setStyleSheet("""
            QPushButton {
                background-color: #2a82da; 
                color: white; 
                font-weight: bold; 
                padding: 10px; 
                border-radius: 5px;
            }
            QPushButton:hover {
                background-color: #3b93eb;
            }
        """)
        self.btn_send.clicked.connect(self.on_send_clicked)
        
        # Arayüze ekle
        control_layout.addWidget(self.lbl_g)
        control_layout.addWidget(self.spin_g)
        control_layout.addSpacing(30)
        control_layout.addWidget(self.lbl_dps)
        control_layout.addWidget(self.spin_dps)
        control_layout.addSpacing(30)
        control_layout.addWidget(self.btn_send)
        control_layout.addStretch() # Sola yaslamak için
        
        # Layout'u alt satıra (Row 2), 2 sütunu kaplayacak şekilde ekliyoruz
        grid_layout.addLayout(control_layout, 2, 0, 1, 2)

        # Seri Port Başlatma
        self.serial_thread = SerialReader(port="/dev/ttyUSB2", baudrate=1000000)
        self.serial_thread.data_received.connect(self.update_data)
        self.serial_thread.start()

    def on_send_clicked(self):
        """Butona tıklandığında seçili değerleri Seri port thread'ine iletir"""
        g_val = self.spin_g.value()
        dps_val = self.spin_dps.value()
        self.serial_thread.send_config(g_val, dps_val)

    def map_to_180(self, raw_val):
        return (raw_val + 128) * (180.0 / 255.0)

    # ---------------------------------------------------------
    # 4. VERİ GÜNCELLEME VE ÇİZİM FONKSİYONU
    # ---------------------------------------------------------
    def update_data(self, ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz):
        
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

    def closeEvent(self, event):
        self.serial_thread.stop()
        event.accept()

# ---------------------------------------------------------
# 5. ANA ÇALIŞTIRMA BLOĞU
# ---------------------------------------------------------
if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
