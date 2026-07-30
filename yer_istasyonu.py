import sys
import serial
import struct
import numpy as np
import pyqtgraph as pg
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget
from PyQt5.QtCore import QThread, pyqtSignal

# ---------------------------------------------------------
# 1. SERİ PORT OKUMA İŞ PARÇACIĞI (THREAD)
# ---------------------------------------------------------
class SerialReader(QThread):
    # Arayüze gönderilecek verilerin sinyal tanımlaması (9 adet sayısal veri)
    # Sırası: AccX, AccY, AccZ, GyroX, GyroY, GyroZ, AngX, AngY, AngZ
    data_received = pyqtSignal(float, float, float, float, float, float, float, float, float)

    def __init__(self, port, baudrate):
        super().__init__()
        self.port = port
        self.baudrate = baudrate
        self.is_running = True

    def run(self):
        try:
            # Seri portu başlat
            ser = serial.Serial(self.port, self.baudrate, timeout=1)
            print(f"[BAŞARILI] {self.port} portu {self.baudrate} baud hızında açıldı.")
            
            while self.is_running:
                # 1. İlk Header Byte'ını (0xAB) ara
                if ser.read(1) == b'\xAB':
                    # 2. İkinci Header Byte'ını (0xCD) doğrula
                    if ser.read(1) == b'\xCD':
                        
                        # 3. Kalan paketi tek seferde oku (15 byte veri + 2 byte footer = 17 byte)
                        payload = ser.read(17)
                        
                        if len(payload) == 17:
                            # 4. Footer (0xCD, 0xEF) doğru mu diye kontrol et
                            if payload[15:17] == b'\xCD\xEF':
                                
                                # 5. Veriyi Parçala (Unpack)
                                # ">"   : Big-Endian (MSB first, VHDL'deki yapınla uyumlu)
                                # "6h"  : 6 adet 16-bit signed integer (AccX,Y,Z ve GyroX,Y,Z)
                                # "3b"  : 3 adet 8-bit signed integer (AngleX,Y,Z)
                                raw_data = struct.unpack(">hhhhhhbbb", payload[0:15])
                                
                                ax, ay, az = raw_data[0], raw_data[1], raw_data[2]
                                gx, gy, gz = raw_data[3], raw_data[4], raw_data[5]
                                ang_x, ang_y, ang_z = raw_data[6], raw_data[7], raw_data[8]
                                
                                # Veriyi GUI'ye gönder
                                self.data_received.emit(ax, ay, az, gx, gy, gz, ang_x, ang_y, ang_z)
                                
        except Exception as e:
            print(f"[HATA] Seri port hatası: {e}")

    def stop(self):
        self.is_running = False
        self.wait()

# ---------------------------------------------------------
# 2. GÖRSEL ARAYÜZ (GUI) VE GRAFİKLER
# ---------------------------------------------------------
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("FPGA Sensör Yer İstasyonu - 1M Baud")
        self.resize(1200, 800)

        # Ana Widget ve Layout ayarları
        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        layout = QVBoxLayout()
        main_widget.setLayout(layout)

        # PyQtGraph genel ayarları (Siyah arka plan, düzgün çizgiler)
        pg.setConfigOption('background', 'k')
        pg.setConfigOption('foreground', 'w')
        pg.setConfigOptions(antialias=True)

        # X ekseni (Zaman/Örneklem sayısı) için maksimum veri noktası
        self.max_points = 500
        
        # Veri tamponları (Buffer)
        self.data = {
            'ax': np.zeros(self.max_points), 'ay': np.zeros(self.max_points), 'az': np.zeros(self.max_points),
            'gx': np.zeros(self.max_points), 'gy': np.zeros(self.max_points), 'gz': np.zeros(self.max_points),
            'angx': np.zeros(self.max_points), 'angy': np.zeros(self.max_points), 'angz': np.zeros(self.max_points)
        }

        # --- İVMEÖLÇER (ACCEL) GRAFİĞİ ---
        self.plot_acc = pg.PlotWidget(title="İvmeölçer (Accel) Verisi")
        self.plot_acc.addLegend()
        self.plot_acc.showGrid(x=True, y=True, alpha=0.3)
        self.curve_ax = self.plot_acc.plot(pen=pg.mkPen('r', width=2), name="Acc X")
        self.curve_ay = self.plot_acc.plot(pen=pg.mkPen('g', width=2), name="Acc Y")
        self.curve_az = self.plot_acc.plot(pen=pg.mkPen('b', width=2), name="Acc Z")
        layout.addWidget(self.plot_acc)

        # --- JİROSKOP (GYRO) GRAFİĞİ ---
        self.plot_gyro = pg.PlotWidget(title="Jiroskop (Gyro) Verisi")
        self.plot_gyro.addLegend()
        self.plot_gyro.showGrid(x=True, y=True, alpha=0.3)
        self.curve_gx = self.plot_gyro.plot(pen=pg.mkPen('r', width=2), name="Gyro X")
        self.curve_gy = self.plot_gyro.plot(pen=pg.mkPen('g', width=2), name="Gyro Y")
        self.curve_gz = self.plot_gyro.plot(pen=pg.mkPen('b', width=2), name="Gyro Z")
        layout.addWidget(self.plot_gyro)

        # --- AÇI (ANGLE) GRAFİĞİ ---
        self.plot_ang = pg.PlotWidget(title="Açı (Angle) Verisi")
        self.plot_ang.addLegend()
        self.plot_ang.showGrid(x=True, y=True, alpha=0.3)
        self.curve_angx = self.plot_ang.plot(pen=pg.mkPen('r', width=2), name="Angle X")
        self.curve_angy = self.plot_ang.plot(pen=pg.mkPen('g', width=2), name="Angle Y")
        self.curve_angz = self.plot_ang.plot(pen=pg.mkPen('b', width=2), name="Angle Z")
        layout.addWidget(self.plot_ang)

        # Seri Port Thread'ini başlat
        self.serial_thread = SerialReader(port="/dev/ttyUSB2", baudrate=1000000)
        self.serial_thread.data_received.connect(self.update_data)
        self.serial_thread.start()

    # ---------------------------------------------------------
    # 3. VERİ GÜNCELLEME VE ÇİZİM FONKSİYONU
    # ---------------------------------------------------------
    def update_data(self, ax, ay, az, gx, gy, gz, angx, angy, angz):
        # Dizi kaydırma işlemi (En eski veriyi sil, en yeni veriyi sona ekle)
        for key in self.data.keys():
            self.data[key][:-1] = self.data[key][1:]
        
        # Yeni verileri dizilerin sonuna yaz
        self.data['ax'][-1] = ax
        self.data['ay'][-1] = ay
        self.data['az'][-1] = az
        
        self.data['gx'][-1] = gx
        self.data['gy'][-1] = gy
        self.data['gz'][-1] = gz
        
        self.data['angx'][-1] = angx
        self.data['angy'][-1] = angy
        self.data['angz'][-1] = angz

        # Grafikleri yeni verilerle güncelle
        self.curve_ax.setData(self.data['ax'])
        self.curve_ay.setData(self.data['ay'])
        self.curve_az.setData(self.data['az'])

        self.curve_gx.setData(self.data['gx'])
        self.curve_gy.setData(self.data['gy'])
        self.curve_gz.setData(self.data['gz'])

        self.curve_angx.setData(self.data['angx'])
        self.curve_angy.setData(self.data['angy'])
        self.curve_angz.setData(self.data['angz'])

    def closeEvent(self, event):
        # Uygulama kapanırken portu ve thread'i güvenli bir şekilde kapat
        self.serial_thread.stop()
        event.accept()

# ---------------------------------------------------------
# 4. ANA ÇALIŞTIRMA BLOĞU
# ---------------------------------------------------------
if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
