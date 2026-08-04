import sys
import serial
import struct
import math
import numpy as np
import pyqtgraph as pg
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget, QGridLayout
from PyQt5.QtCore import QThread, pyqtSignal, Qt
from PyQt5.QtGui import QPainter, QPen, QColor, QFont

# ---------------------------------------------------------
# 1. SERİ PORT OKUMA İŞ PARÇACIĞI (THREAD)
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

    def run(self):
        try:
            # Seri portu başlat (Ubuntu varsayılan ttyUSB portu)
            ser = serial.Serial(self.port, self.baudrate, timeout=1)
            print(f"[BAŞARILI] {self.port} portu {self.baudrate} baud hızında açıldı.")
            
            while self.is_running:
                # 1. İlk Header Byte'ını (0xAB) ara
                if ser.read(1) == b'\xAB':
                    # 2. İkinci Header Byte'ını (0xCD) doğrula
                    if ser.read(1) == b'\xCD':
                        
                        # 3. Kalan paketi tek seferde oku (27 byte veri + 2 byte footer = 29 byte)
                        payload = ser.read(29)
                        
                        if len(payload) == 29:
                            # 4. Footer (0xCD, 0xEF) doğru mu diye kontrol et
                            if payload[27:29] == b'\xCD\xEF':
                                
                                # 5. Veriyi Parçala (Unpack)
                                # 6 short (ham) + 3 byte (açı) + 6 short (filtreli)
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
        
        # Daha modern, parlak neon renkler
        colors = [QColor(255, 60, 60), QColor(60, 255, 60), QColor(60, 150, 255)]
        labels = ["Eksen X", "Eksen Y", "Eksen Z"]
        
        radius = min(width // 6, height // 2) - 30
        
        for i in range(3):
            cx, cy = int(centers[i][0]), int(centers[i][1])
            
            # Dış çember
            painter.setPen(QPen(QColor(50, 50, 50), 3))
            painter.drawEllipse(cx - radius, cy - radius, radius * 2, radius * 2)
            
            # Etiket
            painter.setPen(QPen(Qt.lightGray, 1))
            painter.setFont(QFont("Arial", 10, QFont.Bold))
            painter.drawText(cx - 25, cy + radius + 25, labels[i])
            
            # Açı Değeri
            painter.setPen(QPen(Qt.white, 1))
            painter.setFont(QFont("Arial", 12, QFont.Bold))
            painter.drawText(cx - 15, cy - radius - 15, f"{int(self.angles[i])}°")
            
            # Dönen Pervane Çizgisi
            angle_rad = math.radians(self.angles[i])
            dx = radius * math.cos(angle_rad)
            dy = radius * math.sin(angle_rad)
            
            painter.setPen(QPen(colors[i], 5, cap=Qt.RoundCap))
            painter.drawLine(int(cx - dx), int(cy + dy), int(cx + dx), int(cy - dy))
            
            # Merkez Noktası
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
        self.resize(1400, 900)
        self.setStyleSheet("background-color: #121212; color: #ffffff;")

        # Ana Widget ve Grid Layout
        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        grid_layout = QGridLayout()
        grid_layout.setSpacing(15)
        main_widget.setLayout(grid_layout)

        # PyQtGraph genel ayarları 
        pg.setConfigOption('background', '#1e1e1e')
        pg.setConfigOption('foreground', '#d3d3d3')
        pg.setConfigOptions(antialias=True)

        self.max_points = 500
        self.data = {k: np.zeros(self.max_points) for k in [
            'ax', 'ay', 'az', 'gx', 'gy', 'gz', 'angx', 'angy', 'angz',
            'f_ax', 'f_ay', 'f_az', 'f_gx', 'f_gy', 'f_gz'
        ]}

        # --- ÇİZGİ STİLLERİ (Ham vs Filtreli Karşılaştırması İçin) ---
        # Ham: Yarı saydam ve kesik çizgi, Filtreli: Parlak ve düz çizgi
        pen_raw_x = pg.mkPen(color=(255, 100, 100, 150), width=1.5, style=Qt.DashLine)
        pen_fil_x = pg.mkPen(color=(255, 30, 30), width=2.5)
        
        pen_raw_y = pg.mkPen(color=(100, 255, 100, 150), width=1.5, style=Qt.DashLine)
        pen_fil_y = pg.mkPen(color=(30, 255, 30), width=2.5)
        
        pen_raw_z = pg.mkPen(color=(100, 150, 255, 150), width=1.5, style=Qt.DashLine)
        pen_fil_z = pg.mkPen(color=(30, 120, 255), width=2.5)

        # 1. İVMEÖLÇER GRAFİĞİ (Sol Üst)
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

        # 2. JİROSKOP GRAFİĞİ (Sağ Üst)
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

        # 3. AÇI (ANGLE) GRAFİĞİ (Sol Alt)
        self.plot_ang = pg.PlotWidget(title="Hesaplanan Açılar (0-180°)")
        self.plot_ang.setYRange(0, 180)
        self.plot_ang.addLegend(offset=(10, 10))
        self.plot_ang.showGrid(x=True, y=True, alpha=0.2)
        
        self.curve_angx = self.plot_ang.plot(pen=pen_fil_x, name="Açı X")
        self.curve_angy = self.plot_ang.plot(pen=pen_fil_y, name="Açı Y")
        self.curve_angz = self.plot_ang.plot(pen=pen_fil_z, name="Açı Z")
        
        grid_layout.addWidget(self.plot_ang, 1, 0)

        # 4. MOTOR GÖRSELİ (Sağ Alt)
        self.motor_view = MotorVisualizer()
        grid_layout.addWidget(self.motor_view, 1, 1)

        # Seri Port Başlatma
        self.serial_thread = SerialReader(port="/dev/ttyUSB3", baudrate=115_200)
        self.serial_thread.data_received.connect(self.update_data)
        self.serial_thread.start()

    def map_to_180(self, raw_val):
        return (raw_val + 128) * (180.0 / 255.0)

    # ---------------------------------------------------------
    # 4. VERİ GÜNCELLEME VE ÇİZİM FONKSİYONU
    # ---------------------------------------------------------
    def update_data(self, ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz):
        
        # Açıları 0-180 aralığına çevir
        angx_180 = self.map_to_180(angx)
        angy_180 = self.map_to_180(angy)
        angz_180 = self.map_to_180(angz)

        # Dizi kaydırma işlemi
        for key in self.data.keys():
            self.data[key][:-1] = self.data[key][1:]
        
        # Dizilerin son elemanlarına yeni verileri yaz
        self.data['ax'][-1], self.data['ay'][-1], self.data['az'][-1] = ax, ay, az
        self.data['gx'][-1], self.data['gy'][-1], self.data['gz'][-1] = gx, gy, gz
        self.data['angx'][-1], self.data['angy'][-1], self.data['angz'][-1] = angx_180, angy_180, angz_180
        
        # Yeni Eklenen Filtrelenmiş Veriler
        self.data['f_ax'][-1], self.data['f_ay'][-1], self.data['f_az'][-1] = f_ax, f_ay, f_az
        self.data['f_gx'][-1], self.data['f_gy'][-1], self.data['f_gz'][-1] = f_gx, f_gy, f_gz

        # 1. İvmeölçer Çizgilerini Güncelle
        self.curve_ax.setData(self.data['ax'])
        self.curve_f_ax.setData(self.data['f_ax'])
        self.curve_ay.setData(self.data['ay'])
        self.curve_f_ay.setData(self.data['f_ay'])
        self.curve_az.setData(self.data['az'])
        self.curve_f_az.setData(self.data['f_az'])

        # 2. Jiroskop Çizgilerini Güncelle
        self.curve_gx.setData(self.data['gx'])
        self.curve_f_gx.setData(self.data['f_gx'])
        self.curve_gy.setData(self.data['gy'])
        self.curve_f_gy.setData(self.data['f_gy'])
        self.curve_gz.setData(self.data['gz'])
        self.curve_f_gz.setData(self.data['f_gz'])

        # 3. Açı Çizgilerini Güncelle
        self.curve_angx.setData(self.data['angx'])
        self.curve_angy.setData(self.data['angy'])
        self.curve_angz.setData(self.data['angz'])
        
        # 4. Motor Görselleştirmesini Güncelle
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
