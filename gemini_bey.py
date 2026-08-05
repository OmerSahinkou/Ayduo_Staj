import sys
import os
import serial
import struct
import math
import numpy as np

# DİKKAT: OpenGL import edilmeden ÖNCE hata denetimini kapatıyoruz (Context hatasını çözer)
import OpenGL
OpenGL.ERROR_CHECKING = False

import pyqtgraph as pg
import pyqtgraph.opengl as gl 

# Wayland ve NVIDIA çakışmalarını (çökmeleri) önlemek için Qt'yi XCB (X11) kullanmaya zorluyoruz
os.environ["QT_QPA_PLATFORM"] = "xcb"

from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QWidget, 
                             QGridLayout, QHBoxLayout, QPushButton, QLabel, QSpinBox, 
                             QTabWidget, QGroupBox)
from PyQt5.QtCore import QThread, pyqtSignal, Qt, QTimer
from PyQt5.QtGui import QFont

# ---------------------------------------------------------
# 1. SERİ PORT OKUMA VE YAZMA İŞ PARÇACIĞI (THREAD)
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
        self.ser = None

    def run(self):
        try:
            self.ser = serial.Serial(self.port, self.baudrate, timeout=1)
            print(f"[BAŞARILI] {self.port} portu {self.baudrate} baud hızında açıldı.")
            
            while self.is_running:
                if self.ser.read(1) == b'\xAB':
                    if self.ser.read(1) == b'\xCD':
                        payload = self.ser.read(29)
                        
                        if len(payload) == 29:
                            if payload[27:29] == b'\xCD\xEF':
                                raw_data = struct.unpack(">hhhhhhbbbhhhhhh", payload[0:27])
                                
                                ax, ay, az = raw_data[0:3]
                                gx, gy, gz = raw_data[3:6]
                                ang_x, ang_y, ang_z = raw_data[6:9]
                                f_ax, f_ay, f_az = raw_data[9:12]
                                f_gx, f_gy, f_gz = raw_data[12:15]
                                
                                self.data_received.emit(
                                    ax, ay, az, gx, gy, gz, 
                                    ang_x, ang_y, ang_z, 
                                    f_ax, f_ay, f_az, f_gx, f_gy, f_gz
                                )
                                
        except Exception as e:
            print(f"[HATA] Seri port hatası: {e}")

    def send_config(self, g_val, dps_val):
        if self.ser and self.ser.is_open:
            import time
            try:
                packet_data = bytes([0xDE, 0xEF, g_val, dps_val, 0xCE, 0xFA, 0xEA])
                self.ser.write(packet_data)
                time.sleep(0.01) 
                self.ser.write(bytes([0x01]))
                print(f"[BİLGİ] Konfigürasyon paketi gönderildi.")
            except Exception as e:
                print(f"[HATA] Konfigürasyon gönderilemedi: {e}")

    def stop(self):
        self.is_running = False
        self.wait()

# ---------------------------------------------------------
# 2. 3 BOYUTLU İHA GÖRSELLEŞTİRİCİ
# ---------------------------------------------------------
class Drone3DVisualizer(QWidget):
    def __init__(self):
        super().__init__()
        self.layout = QVBoxLayout(self)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.setMinimumHeight(400)
        
        # OpenGL View Widget Kurulumu
        self.view = gl.GLViewWidget()
        self.view.setBackgroundColor('#1e1e2e')
        self.view.setCameraPosition(distance=25, elevation=30, azimuth=45)
        self.layout.addWidget(self.view)
        
        # Zemin Izgarası
        grid = gl.GLGridItem()
        grid.scale(1.5, 1.5, 1.5)
        grid.setColor((100, 100, 100, 150))
        self.view.addItem(grid)
        
        # Referans Eksenleri (Merkez)
        axis = gl.GLAxisItem()
        axis.setSize(x=10, y=10, z=10)
        self.view.addItem(axis)
        
        # İHA Gövde ve Kollarını Çizecek Çizgi Nesnesi
        self.drone_lines = gl.GLLinePlotItem(mode='lines', width=5, antialias=True)
        self.view.addItem(self.drone_lines)
        
        # Pervane/Motor Diskleri (Noktalar halinde)
        self.rotors = gl.GLScatterPlotItem(size=20, pxMode=False)
        self.view.addItem(self.rotors)

        # İlk çizim
        self.update_angles(0, 0, 0)

    def update_angles(self, roll, pitch, yaw):
        L = 6.0
        
        # DİKKAT: OpenGL float64 kabul etmez, açıkça np.float32 kullanıyoruz!
        base_pts = np.array([
            [ L,  L, 0], [-L, -L, 0], 
            [ L, -L, 0], [-L,  L, 0], 
            [ 0,  0, 0], [ L+3, 0, 0] 
        ], dtype=np.float32)
        
        base_rotors = np.array([
            [ L,  L, 0.5], 
            [ L, -L, 0.5], 
            [-L,  L, 0.5], 
            [-L, -L, 0.5]   
        ], dtype=np.float32)
        
        r = math.radians(roll)
        p = math.radians(pitch)
        y = math.radians(yaw)
        
        Rx = np.array([
            [1, 0, 0],
            [0, math.cos(r), -math.sin(r)],
            [0, math.sin(r), math.cos(r)]
        ], dtype=np.float32)
        
        Ry = np.array([
            [math.cos(p), 0, math.sin(p)],
            [0, 1, 0],
            [-math.sin(p), 0, math.cos(p)]
        ], dtype=np.float32)
        
        Rz = np.array([
            [math.cos(y), -math.sin(y), 0],
            [math.sin(y), math.cos(y), 0],
            [0, 0, 1]
        ], dtype=np.float32)
        
        R = Rz.dot(Ry).dot(Rx)
        
        # Hesaplanan matrisi float32'ye zorluyoruz
        rot_pts = base_pts.dot(R.T).astype(np.float32)
        rot_rotors = base_rotors.dot(R.T).astype(np.float32)
        
        line_colors = np.array([
            [0.8, 0.8, 0.8, 1], [0.8, 0.8, 0.8, 1], 
            [0.8, 0.8, 0.8, 1], [0.8, 0.8, 0.8, 1], 
            [1.0, 0.2, 0.2, 1], [1.0, 0.2, 0.2, 1]  
        ], dtype=np.float32)
        
        rotor_colors = np.array([
            [1.0, 0.2, 0.2, 0.9], 
            [1.0, 0.2, 0.2, 0.9], 
            [0.2, 0.6, 1.0, 0.9], 
            [0.2, 0.6, 1.0, 0.9]  
        ], dtype=np.float32)
        
        self.drone_lines.setData(pos=rot_pts, color=line_colors)
        self.rotors.setData(pos=rot_rotors, color=rotor_colors)

# ---------------------------------------------------------
# 3. GÖRSEL ARAYÜZ (GUI) VE GRAFİKLER
# ---------------------------------------------------------
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("İHA 3-Eksen Uçuş & Test İstasyonu (3D)")
        self.resize(1600, 950)
        self.apply_stylesheet()

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QVBoxLayout(main_widget)
        main_layout.setContentsMargins(10, 10, 10, 10)

        # Sekme Sistemi
        self.tabs = QTabWidget()
        self.tab_signals = QWidget()
        self.tab_drone = QWidget()
        
        self.tabs.addTab(self.tab_signals, "📡 Sensör Verileri & Kalibrasyon")
        self.tabs.addTab(self.tab_drone, "🚁 3D Uçuş Dinamikleri & FPGA Testi")
        main_layout.addWidget(self.tabs)

        pg.setConfigOption('background', '#282a36')
        pg.setConfigOption('foreground', '#f8f8f2')
        pg.setConfigOptions(antialias=True) 

        self.max_points = 500
        self.data = {k: np.zeros(self.max_points) for k in [
            'ax', 'ay', 'az', 'gx', 'gy', 'gz', 'angx', 'angy', 'angz',
            'f_ax', 'f_ay', 'f_az', 'f_gx', 'f_gy', 'f_gz',
            'fpga_servo_x', 'fpga_servo_y', 'fpga_servo_z'
        ]}

        self.setup_signal_tab()
        self.setup_drone_tab()

        # Seri Port Bağlantısı
        self.serial_thread = SerialReader(port="/dev/ttyUSB2", baudrate=1000000)
        self.serial_thread.data_received.connect(self.update_data_arrays)
        self.serial_thread.start()

        # GUI Yenileme (FPS)
        self.gui_timer = QTimer()
        self.gui_timer.timeout.connect(self.refresh_gui)
        self.gui_timer.start(33) # Yaklaşık 30 FPS

    def apply_stylesheet(self):
        self.setStyleSheet("""
            QMainWindow { background-color: #1e1e2e; }
            QTabWidget::pane { border: 1px solid #44475a; border-radius: 5px; background: #282a36; }
            QTabBar::tab { background: #44475a; color: #f8f8f2; padding: 12px 25px; font-weight: bold; border-top-left-radius: 4px; border-top-right-radius: 4px; margin-right: 2px; font-size: 14px;}
            QTabBar::tab:selected { background: #ff79c6; color: #282a36; }
            QGroupBox { border: 2px solid #6272a4; border-radius: 8px; margin-top: 15px; font-weight: bold; color: #8be9fd; font-size: 14px;}
            QGroupBox::title { subcontrol-origin: margin; subcontrol-position: top center; padding: 0 10px; }
            QLabel { color: #f8f8f2; font-size: 13px; font-weight: bold; }
            QPushButton { background-color: #50fa7b; color: #282a36; font-weight: bold; font-size: 14px; padding: 10px; border-radius: 5px; }
            QPushButton:hover { background-color: #69ff94; }
            QSpinBox { background-color: #44475a; color: #f8f8f2; border: 1px solid #6272a4; padding: 5px; border-radius: 4px; font-size: 14px;}
        """)

    def setup_signal_tab(self):
        layout = QGridLayout(self.tab_signals)
        layout.setSpacing(20)

        pen_raw = lambda c: pg.mkPen(color=c, width=1.5, style=Qt.DashLine)
        pen_fil = lambda c: pg.mkPen(color=c, width=2.5)

        # İvmeölçer
        group_acc = QGroupBox("İvmeölçer (Ham vs Filtrelenmiş)")
        layout_acc = QVBoxLayout()
        self.plot_acc = pg.PlotWidget()
        self.plot_acc.addLegend(offset=(10, 10))
        self.plot_acc.showGrid(x=True, y=True, alpha=0.3)
        self.curve_ax = self.plot_acc.plot(pen=pen_raw((255, 85, 85, 150)), name="Ham X")
        self.curve_f_ax = self.plot_acc.plot(pen=pen_fil((255, 85, 85)), name="Filtre X")
        self.curve_ay = self.plot_acc.plot(pen=pen_raw((80, 250, 123, 150)), name="Ham Y")
        self.curve_f_ay = self.plot_acc.plot(pen=pen_fil((80, 250, 123)), name="Filtre Y")
        self.curve_az = self.plot_acc.plot(pen=pen_raw((139, 233, 253, 150)), name="Ham Z")
        self.curve_f_az = self.plot_acc.plot(pen=pen_fil((139, 233, 253)), name="Filtre Z")
        layout_acc.addWidget(self.plot_acc)
        group_acc.setLayout(layout_acc)
        layout.addWidget(group_acc, 0, 0)

        # Jiroskop
        group_gyro = QGroupBox("Jiroskop (Ham vs Filtrelenmiş)")
        layout_gyro = QVBoxLayout()
        self.plot_gyro = pg.PlotWidget()
        self.plot_gyro.addLegend(offset=(10, 10))
        self.plot_gyro.showGrid(x=True, y=True, alpha=0.3)
        self.curve_gx = self.plot_gyro.plot(pen=pen_raw((255, 85, 85, 150)), name="Ham X")
        self.curve_f_gx = self.plot_gyro.plot(pen=pen_fil((255, 85, 85)), name="Filtre X")
        self.curve_gy = self.plot_gyro.plot(pen=pen_raw((80, 250, 123, 150)), name="Ham Y")
        self.curve_f_gy = self.plot_gyro.plot(pen=pen_fil((80, 250, 123)), name="Filtre Y")
        self.curve_gz = self.plot_gyro.plot(pen=pen_raw((139, 233, 253, 150)), name="Ham Z")
        self.curve_f_gz = self.plot_gyro.plot(pen=pen_fil((139, 233, 253)), name="Filtre Z")
        layout_gyro.addWidget(self.plot_gyro)
        group_gyro.setLayout(layout_gyro)
        layout.addWidget(group_gyro, 0, 1)

        # MPU6500 Kontrol
        group_ctrl = QGroupBox("Sensör Konfigürasyonu (MPU6500)")
        ctrl_layout = QHBoxLayout()
        
        self.spin_g = QSpinBox()
        self.spin_g.setDisplayIntegerBase(16) 
        self.spin_g.setRange(0, 255)
        self.spin_g.setPrefix("0x")
        
        self.spin_dps = QSpinBox()
        self.spin_dps.setDisplayIntegerBase(16) 
        self.spin_dps.setRange(0, 255)
        self.spin_dps.setPrefix("0x")
        
        self.btn_send = QPushButton("Konfigürasyonu Uygula")
        self.btn_send.clicked.connect(self.on_send_clicked)
        
        ctrl_layout.addWidget(QLabel("İvmeölçer Çözünürlüğü (G):"))
        ctrl_layout.addWidget(self.spin_g)
        ctrl_layout.addSpacing(40)
        ctrl_layout.addWidget(QLabel("Jiroskop Çözünürlüğü (DPS):"))
        ctrl_layout.addWidget(self.spin_dps)
        ctrl_layout.addSpacing(40)
        ctrl_layout.addWidget(self.btn_send)
        ctrl_layout.addStretch()
        
        group_ctrl.setLayout(ctrl_layout)
        layout.addWidget(group_ctrl, 1, 0, 1, 2)
        layout.setRowStretch(0, 4)
        layout.setRowStretch(1, 1)

    def setup_drone_tab(self):
        layout = QGridLayout(self.tab_drone)
        layout.setSpacing(20)

        # 3B Drone Alanı (Sol Üst)
        group_motor = QGroupBox("İHA 3D Dijital İkiz (Gerçek Zamanlı Yönelim)")
        motor_layout = QVBoxLayout()
        self.drone_3d_view = Drone3DVisualizer()
        motor_layout.addWidget(self.drone_3d_view)
        group_motor.setLayout(motor_layout)
        layout.addWidget(group_motor, 0, 0, 1, 2)

        # Karşılaştırma Grafiği (Alt)
        group_compare = QGroupBox("Telemetri vs FPGA Hata Analizi (Uçuş Kontrolcüsü Servo Tepkisi)")
        compare_layout = QVBoxLayout()
        
        self.plot_compare = pg.PlotWidget()
        self.plot_compare.setYRange(0, 180)
        self.plot_compare.addLegend(offset=(10, 10))
        self.plot_compare.showGrid(x=True, y=True, alpha=0.3)
        
        self.curve_angx = self.plot_compare.plot(pen=pg.mkPen(color=(139, 233, 253), width=2.5), name="Referans Roll (Hesaplanan)")
        self.curve_fpga_x = self.plot_compare.plot(pen=pg.mkPen(color=(255, 184, 108), width=2.5, style=Qt.DotLine), name="FPGA PWM Geri Besleme")
        
        compare_layout.addWidget(self.plot_compare)
        group_compare.setLayout(compare_layout)
        layout.addWidget(group_compare, 1, 0, 1, 2)

        layout.setRowStretch(0, 3)
        layout.setRowStretch(1, 2)

    def on_send_clicked(self):
        g_val = self.spin_g.value()
        dps_val = self.spin_dps.value()
        self.serial_thread.send_config(g_val, dps_val)

    def map_to_180(self, raw_val):
        return (raw_val + 128) * (180.0 / 255.0)

    def update_data_arrays(self, ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz):
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

        # Burası FPGA'dan gerçek servo geri beslemesini çekeceğin yer
        # Şimdilik simüle edilmiş, gecikmeli bir FPGA yanıtı yaratıyoruz:
        simulated_delay_noise = np.random.normal(0, 1.2)
        self.data['fpga_servo_x'][-1] = self.data['angx'][-4] + simulated_delay_noise 

    def refresh_gui(self):
        # 1. Sekme: Sinyaller
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

        # 2. Sekme: Karşılaştırma ve 3D
        self.curve_angx.setData(self.data['angx'])
        self.curve_fpga_x.setData(self.data['fpga_servo_x'])
        
        # 3B Açı Güncellemesi
        self.drone_3d_view.update_angles(self.data['angx'][-1], self.data['angy'][-1], self.data['angz'][-1])

    def closeEvent(self, event):
        self.gui_timer.stop()
        self.serial_thread.stop()
        event.accept()

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
