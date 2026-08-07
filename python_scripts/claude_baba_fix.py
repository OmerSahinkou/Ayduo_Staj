import multiprocessing as mp
import os
import time
import webbrowser

# =========================================================
# 1. PROCESS: PYQT5 ARAYÜZÜ (PROFESYONEL YER İSTASYONU)
# =========================================================
def run_pyqt_dashboard(shared_array, command_queue):
    import sys
    import math
    import numpy as np
    
    os.environ["QT_QPA_PLATFORM"] = "xcb" 
    
    import pyqtgraph as pg
    from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QWidget, 
                                 QGridLayout, QHBoxLayout, QPushButton, QLabel, QComboBox, 
                                 QListWidget, QListWidgetItem, QStackedWidget,
                                 QGroupBox, QFormLayout)
    from PyQt5.QtCore import QTimer, Qt, QSize
    from PyQt5.QtGui import QPainter, QPen, QColor, QFont

    class MotorVisualizer(QWidget):
        def __init__(self):
            super().__init__()
            self.setMinimumSize(400, 200)
            self.angles = [0, 0, 0] 

        def update_angles(self, ax, ay, az):
            self.angles = [ax, ay, az]
            self.update() 

        def paintEvent(self, event):
            painter = QPainter(self)
            painter.setRenderHint(QPainter.Antialiasing)
            
            width = self.width()
            height = self.height()
            
            centers = [(width // 6, height // 2), (3 * width // 6, height // 2), (5 * width // 6, height // 2)]
            colors = [QColor(255, 75, 75), QColor(75, 255, 75), QColor(75, 175, 255)]
            labels = ["ROLL (MOTOR X)", "PITCH (MOTOR Y)", "YAW (MOTOR Z)"]
            
            radius = min(width // 6, height // 2) - 40
            if radius < 20: radius = 20
            
            for i in range(3):
                cx, cy = int(centers[i][0]), int(centers[i][1])
                
                painter.setPen(QPen(QColor(40, 44, 52), 6))
                painter.drawEllipse(cx - radius, cy - radius, radius * 2, radius * 2)
                
                painter.setPen(QPen(QColor(171, 178, 191), 1))
                painter.setFont(QFont("Segoe UI", 10, QFont.Bold))
                painter.drawText(cx - 50, cy + radius + 30, labels[i])
                
                painter.setPen(QPen(Qt.white, 1))
                painter.setFont(QFont("Segoe UI", 14, QFont.Bold))
                painter.drawText(cx - 18, cy - radius - 20, f"{int(self.angles[i])}°")
                
                angle_rad = math.radians(self.angles[i] - 90) 
                dx = radius * math.cos(angle_rad)
                dy = radius * math.sin(angle_rad)
                
                painter.setPen(QPen(colors[i], 4, cap=Qt.RoundCap))
                painter.drawLine(cx, cy, int(cx + dx), int(cy + dy))
                
                painter.setPen(QPen(Qt.white, 2))
                painter.setBrush(QColor(40, 44, 52))
                painter.drawEllipse(cx - 5, cy - 5, 10, 10)

    class MainWindow(QMainWindow):
        def __init__(self, shared_mem, cmd_queue):
            super().__init__()
            self.shared_mem = shared_mem
            self.cmd_queue = cmd_queue
            self.setWindowTitle("AYDUO İHA Sistemleri | Telemetri ve Test İstasyonu")
            self.resize(1600, 900)
            self.apply_professional_theme()
            
            self.last_packet_id = -1 

            main_widget = QWidget()
            self.setCentralWidget(main_widget)
            main_layout = QHBoxLayout(main_widget)
            main_layout.setContentsMargins(0, 0, 0, 0)
            main_layout.setSpacing(0)

            self.sidebar = QListWidget()
            self.sidebar.setFixedWidth(250)
            self.sidebar.currentRowChanged.connect(self.change_page)
            
            menu_items = ["🚁 Uçuş Göstergeleri", "📈 Sinyal Analizi (Osiloskop)", "⚙️ Sistem Konfigürasyonu"]
            for item in menu_items:
                list_item = QListWidgetItem(item)
                list_item.setSizeHint(QSize(250, 60))
                self.sidebar.addItem(list_item)
            
            main_layout.addWidget(self.sidebar)

            self.pages = QStackedWidget()
            main_layout.addWidget(self.pages)

            pg.setConfigOption('background', '#21252b')
            pg.setConfigOption('foreground', '#abb2bf')
            pg.setConfigOptions(antialias=True)

            self.max_points = 500
            self.data = {k: np.zeros(self.max_points) for k in [
                'ax', 'ay', 'az', 'gx', 'gy', 'gz', 
                'f_ax', 'f_ay', 'f_az', 'f_gx', 'f_gy', 'f_gz', 
                'sensor_roll', 'sensor_pitch', 'sensor_yaw',
                'fpga_roll', 'fpga_pitch', 'fpga_yaw'
            ]}

            self.setup_page_dashboard()
            self.setup_page_oscilloscope()
            self.setup_page_configuration()

            self.sidebar.setCurrentRow(0)

            self.timer = QTimer()
            self.timer.timeout.connect(self.update_from_shared_memory)
            self.timer.start(15) 

        def apply_professional_theme(self):
            self.setStyleSheet("""
                QMainWindow { background-color: #282c34; }
                QListWidget {
                    background-color: #21252b; border: none; color: #abb2bf;
                    font-size: 15px; font-weight: bold; font-family: 'Segoe UI';
                    outline: none; padding-top: 20px;
                }
                QListWidget::item { padding-left: 20px; border-left: 5px solid transparent; }
                QListWidget::item:selected { background-color: #2c313a; color: #61afef; border-left: 5px solid #61afef; }
                QListWidget::item:hover:!selected { background-color: #2c313a; }
                QGroupBox {
                    background-color: #282c34; border: 1px solid #3e4451; 
                    border-radius: 8px; margin-top: 1.5em; 
                    color: #e5c07b; font-size: 14px; font-weight: bold;
                }
                QGroupBox::title { subcontrol-origin: margin; left: 15px; padding: 0 5px; }
                QPushButton {
                    background-color: #98c379; color: #282c34; 
                    font-weight: bold; font-size: 14px; padding: 12px; 
                    border-radius: 6px; border: none;
                }
                QPushButton:hover { background-color: #7cb668; }
                QPushButton:pressed { background-color: #5c874d; }
                QLabel { color: #abb2bf; font-size: 14px; font-family: 'Segoe UI'; }
                QComboBox { 
                    background-color: #1e2227; color: #abb2bf; border: 1px solid #3e4451; 
                    padding: 8px; border-radius: 4px; font-size: 14px; font-weight: bold;
                }
                QComboBox::drop-down { border: none; }
                QComboBox QAbstractItemView { background-color: #282c34; color: #abb2bf; selection-background-color: #2c313a; }
            """)

        def change_page(self, index):
            self.pages.setCurrentIndex(index)

        def setup_page_dashboard(self):
            page = QWidget()
            layout = QVBoxLayout(page)
            layout.setContentsMargins(20, 20, 20, 20)
            
            self.rx_label = QLabel("🔴 PORT BEKLENİYOR... | Örnekleme: 0.0 Hz")
            self.rx_label.setStyleSheet("color: #e06c75; font-weight: bold; font-size: 16px; padding: 10px; background: #21252b; border-radius: 5px;")
            layout.addWidget(self.rx_label)

            group_dials = QGroupBox("FPGA Çıkışı: Gerçek Zamanlı Servo PWM Açıları")
            dials_layout = QVBoxLayout()
            self.motor_view = MotorVisualizer()
            dials_layout.addWidget(self.motor_view)
            group_dials.setLayout(dials_layout)
            layout.addWidget(group_dials, stretch=1)

            group_compare = QGroupBox("Hata Analizi: Sensör Referansı vs FPGA Çıkışı")
            comp_layout = QVBoxLayout()
            
            self.axis_selector = QComboBox()
            self.axis_selector.addItems(["Tüm Eksenleri Göster (X, Y, Z)", "Sadece X Ekseni (Roll)", "Sadece Y Ekseni (Pitch)", "Sadece Z Ekseni (Yaw)"])
            self.axis_selector.currentIndexChanged.connect(self.on_axis_changed)
            comp_layout.addWidget(self.axis_selector)

            self.plot_x = pg.PlotWidget(title="X Ekseni (Roll)")
            self.plot_x.setYRange(-90, 90)
            self.plot_x.addLegend(offset=(10, 10))
            self.plot_x.showGrid(x=True, y=True, alpha=0.15)
            self.curve_sens_x = self.plot_x.plot(pen=pg.mkPen(color='#e06c75', width=2), name="Sensör Roll")
            self.curve_fpga_x = self.plot_x.plot(pen=pg.mkPen(color='#e06c75', width=2, style=Qt.DashLine), name="FPGA Roll (PWM)")
            comp_layout.addWidget(self.plot_x)

            self.plot_y = pg.PlotWidget(title="Y Ekseni (Pitch)")
            self.plot_y.setYRange(-90, 90)
            self.plot_y.addLegend(offset=(10, 10))
            self.plot_y.showGrid(x=True, y=True, alpha=0.15)
            self.curve_sens_y = self.plot_y.plot(pen=pg.mkPen(color='#98c379', width=2), name="Sensör Pitch")
            self.curve_fpga_y = self.plot_y.plot(pen=pg.mkPen(color='#98c379', width=2, style=Qt.DashLine), name="FPGA Pitch (PWM)")
            comp_layout.addWidget(self.plot_y)

            self.plot_z = pg.PlotWidget(title="Z Ekseni (Yaw)")
            self.plot_z.setYRange(-90, 90) 
            self.plot_z.addLegend(offset=(10, 10))
            self.plot_z.showGrid(x=True, y=True, alpha=0.15)
            self.curve_sens_z = self.plot_z.plot(pen=pg.mkPen(color='#61afef', width=2), name="Sensör Yaw")
            self.curve_fpga_z = self.plot_z.plot(pen=pg.mkPen(color='#61afef', width=2, style=Qt.DashLine), name="FPGA Yaw (PWM)")
            comp_layout.addWidget(self.plot_z)

            group_compare.setLayout(comp_layout)
            layout.addWidget(group_compare, stretch=3)
            
            self.pages.addWidget(page)
            self.on_axis_changed(0) 

        def on_axis_changed(self, index):
            self.plot_x.setVisible(index == 0 or index == 1)
            self.plot_y.setVisible(index == 0 or index == 2)
            self.plot_z.setVisible(index == 0 or index == 3)

        def setup_page_oscilloscope(self):
            page = QWidget()
            layout = QGridLayout(page)
            layout.setContentsMargins(20, 20, 20, 20)
            layout.setSpacing(20)

            pen_raw = lambda c: pg.mkPen(color=c, width=1, style=Qt.DashLine)
            pen_fil = lambda c: pg.mkPen(color=c, width=2)

            group_acc = QGroupBox("İvmeölçer Spektrumu (Ham vs IIR Filtreli)")
            l_acc = QVBoxLayout()
            self.plot_acc = pg.PlotWidget()
            self.plot_acc.addLegend(offset=(10, 10))
            self.plot_acc.showGrid(x=True, y=True, alpha=0.15)
            self.c_ax = self.plot_acc.plot(pen=pen_raw('#e06c75'), name="Ham X")
            self.c_fax = self.plot_acc.plot(pen=pen_fil('#e06c75'), name="Filtre X")
            self.c_ay = self.plot_acc.plot(pen=pen_raw('#98c379'), name="Ham Y")
            self.c_fay = self.plot_acc.plot(pen=pen_fil('#98c379'), name="Filtre Y")
            self.c_az = self.plot_acc.plot(pen=pen_raw('#61afef'), name="Ham Z")
            self.c_faz = self.plot_acc.plot(pen=pen_fil('#61afef'), name="Filtre Z")
            l_acc.addWidget(self.plot_acc)
            group_acc.setLayout(l_acc)
            layout.addWidget(group_acc, 0, 0)

            group_gyro = QGroupBox("Jiroskop Spektrumu (Ham vs IIR Filtreli)")
            l_gyro = QVBoxLayout()
            self.plot_gyro = pg.PlotWidget()
            self.plot_gyro.addLegend(offset=(10, 10))
            self.plot_gyro.showGrid(x=True, y=True, alpha=0.15)
            self.c_gx = self.plot_gyro.plot(pen=pen_raw('#e06c75'), name="Ham X")
            self.c_fgx = self.plot_gyro.plot(pen=pen_fil('#e06c75'), name="Filtre X")
            self.c_gy = self.plot_gyro.plot(pen=pen_raw('#98c379'), name="Ham Y")
            self.c_fgy = self.plot_gyro.plot(pen=pen_fil('#98c379'), name="Filtre Y")
            self.c_gz = self.plot_gyro.plot(pen=pen_raw('#61afef'), name="Ham Z")
            self.c_fgz = self.plot_gyro.plot(pen=pen_fil('#61afef'), name="Filtre Z")
            l_gyro.addWidget(self.plot_gyro)
            group_gyro.setLayout(l_gyro)
            layout.addWidget(group_gyro, 1, 0)

            self.pages.addWidget(page)

        def setup_page_configuration(self):
            page = QWidget()
            layout = QVBoxLayout(page)
            layout.setContentsMargins(40, 40, 40, 40)
            
            title = QLabel("Sistem Kontrol ve Konfigürasyon Merkezi")
            title.setStyleSheet("font-size: 24px; color: #ffffff; font-weight: bold; margin-bottom: 20px;")
            layout.addWidget(title)

            group_conn = QGroupBox("Bağlantı Ayarları")
            form_conn = QFormLayout()
            form_conn.setSpacing(20)
            port_lbl = QLabel("/dev/ttyUSB2")
            port_lbl.setStyleSheet("color: #98c379; font-weight:bold;")
            baud_lbl = QLabel("1,000,000 bps")
            baud_lbl.setStyleSheet("color: #98c379; font-weight:bold;")
            form_conn.addRow("Aktif Port:", port_lbl)
            form_conn.addRow("Baud Rate:", baud_lbl)
            group_conn.setLayout(form_conn)
            layout.addWidget(group_conn)

            group_mpu = QGroupBox("MPU6500 Sensör Hassasiyet Ayarları (SPI üzerinden)")
            form_mpu = QFormLayout()
            form_mpu.setSpacing(20)
            
            self.combo_g = QComboBox()
            self.combo_g.addItem("± 2g (Varsayılan)", 0x00)
            self.combo_g.addItem("± 4g", 0x08)
            self.combo_g.addItem("± 8g", 0x10)
            self.combo_g.addItem("± 16g", 0x18)
            self.combo_g.setFixedWidth(250)
            
            self.combo_dps = QComboBox()
            self.combo_dps.addItem("± 250 dps (Varsayılan)", 0x00)
            self.combo_dps.addItem("± 500 dps", 0x08)
            self.combo_dps.addItem("± 1000 dps", 0x10)
            self.combo_dps.addItem("± 2000 dps", 0x18)
            self.combo_dps.setFixedWidth(250)

            form_mpu.addRow("İvmeölçer Çözünürlüğü (ACCEL_CONFIG):", self.combo_g)
            form_mpu.addRow("Jiroskop Çözünürlüğü (GYRO_CONFIG):", self.combo_dps)
            
            self.btn_send = QPushButton("YENİ KONFİGÜRASYONU FPGA'YE GÖNDER")
            self.btn_send.setFixedWidth(400)
            self.btn_send.clicked.connect(self.on_send_clicked)
            form_mpu.addRow("", self.btn_send)
            
            self.status_lbl = QLabel("")
            self.status_lbl.setStyleSheet("color: #61afef; font-weight: bold;")
            form_mpu.addRow("", self.status_lbl)
            
            group_mpu.setLayout(form_mpu)
            layout.addWidget(group_mpu)
            layout.addStretch()

            self.pages.addWidget(page)

        def on_send_clicked(self):
            g_val = self.combo_g.currentData()
            dps_val = self.combo_dps.currentData()
            
            self.cmd_queue.put((g_val, dps_val))
            
            self.status_lbl.setText(f"[ BAŞARILI ] Konfigürasyon paketi (G: 0x{g_val:02X}, DPS: 0x{dps_val:02X}) iletildi!")
            QTimer.singleShot(3000, lambda: self.status_lbl.setText(""))

        def map_to_centered_degrees(self, raw_val):
            # VHDL koduna göre: FPGA 0-255 arası basıyor, 127 tam merkez.
            # Bunu grafikte sensörle (0 merkezli) eşleştirmek için -90 ile +90 arasına çekiyoruz.
            return (raw_val - 127.0) * (90.0 / 128.0)

        def update_from_shared_memory(self):
            vals = self.shared_mem[:]
            
            ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz = vals[0:15]
            hz = vals[15]
            blink = vals[16]
            packet_id = vals[17]
            
            sensor_roll = vals[18]
            sensor_pitch = vals[19]
            sensor_yaw = vals[20]
            
            if packet_id == self.last_packet_id:
                if hz == 0:
                    self.rx_label.setText("🔴 BAĞLANTI KOPTU VEYA BEKLENİYOR...")
                    self.rx_label.setStyleSheet("color: #e06c75; font-weight: bold; font-size: 16px; padding: 10px; background: #21252b; border-radius: 5px;")
                return
            
            self.last_packet_id = packet_id

            blink_color = "#98c379" if blink else "#21252b"
            self.rx_label.setText(f"🟢 FIFO RX AKTİF | Örnekleme Hızı: {hz:.1f} Hz")
            self.rx_label.setStyleSheet(f"color: #98c379; font-weight: bold; font-size: 16px; padding: 10px; background: #21252b; border-left: 10px solid {blink_color}; border-radius: 5px;")

            fpga_roll = self.map_to_centered_degrees(angx)
            fpga_pitch = self.map_to_centered_degrees(angy)
            fpga_yaw = self.map_to_centered_degrees(angz)

            for key in self.data.keys():
                self.data[key][:-1] = self.data[key][1:]
            
            self.data['ax'][-1], self.data['ay'][-1], self.data['az'][-1] = ax, ay, az
            self.data['gx'][-1], self.data['gy'][-1], self.data['gz'][-1] = gx, gy, gz
            self.data['f_ax'][-1], self.data['f_ay'][-1], self.data['f_az'][-1] = f_ax, f_ay, f_az
            self.data['f_gx'][-1], self.data['f_gy'][-1], self.data['f_gz'][-1] = f_gx, f_gy, f_gz
            
            self.data['sensor_roll'][-1] = sensor_roll
            self.data['sensor_pitch'][-1] = sensor_pitch
            self.data['sensor_yaw'][-1] = sensor_yaw
            
            self.data['fpga_roll'][-1] = fpga_roll
            self.data['fpga_pitch'][-1] = fpga_pitch
            self.data['fpga_yaw'][-1] = fpga_yaw

            current_page = self.pages.currentIndex()
            
            if current_page == 0:
                self.curve_sens_x.setData(self.data['sensor_roll'])
                self.curve_fpga_x.setData(self.data['fpga_roll'])
                
                self.curve_sens_y.setData(self.data['sensor_pitch'])
                self.curve_fpga_y.setData(self.data['fpga_pitch'])
                
                self.curve_sens_z.setData(self.data['sensor_yaw'])
                self.curve_fpga_z.setData(self.data['fpga_yaw'])
                
                # Kadranlar için 0-180 formatı lazım, o yüzden -90 to +90 derecelerine 90 ekliyoruz
                self.motor_view.update_angles(fpga_roll + 90, fpga_pitch + 90, fpga_yaw + 90)
            
            elif current_page == 1:
                self.c_ax.setData(self.data['ax'])
                self.c_fax.setData(self.data['f_ax'])
                self.c_ay.setData(self.data['ay'])
                self.c_fay.setData(self.data['f_ay'])
                self.c_az.setData(self.data['az'])
                self.c_faz.setData(self.data['f_az'])

                self.c_gx.setData(self.data['gx'])
                self.c_fgx.setData(self.data['f_gx'])
                self.c_gy.setData(self.data['gy'])
                self.c_fgy.setData(self.data['f_gy'])
                self.c_gz.setData(self.data['gz'])
                self.c_fgz.setData(self.data['f_gz'])

    app = QApplication(sys.argv)
    window = MainWindow(shared_array, command_queue)
    window.show()
    sys.exit(app.exec_())

# =========================================================
# 2. PROCESS: VPYTHON (3D Dronlar) ve SERİ PORT OKUMA
# =========================================================
def run_vpython_and_serial(shared_array, command_queue):
    import serial
    import struct
    import math
    import os
    import time
    if "QT_QPA_PLATFORM" in os.environ:
        del os.environ["QT_QPA_PLATFORM"]

    from vpython import canvas, box, cylinder, cone, vector, color, compound, label, wtext, rate

    SERIAL_PORT = '/dev/ttyUSB2'   
    BAUD_RATE = 1000000     

    try:
        ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=0.1)
    except Exception as e:
        print(f"Bağlantı Hatası: {e}")
        return

    scene = canvas(title="<b>AYDUO İHA - 3D Fiziksel Yönelim İkizi</b>", 
                   width=1200, height=600, background=color.gray(0.1))
    scene.camera.pos = vector(0, 15, 25)
    scene.camera.axis = vector(0, -10, -25)

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
    lbl_sensor = label(pos=vector(-8, 5, 0), text='SENSÖR REFERANSI', height=16, color=color.orange, box=False)

    drone_servo = create_drone(vector(8, 0, 0), color.cyan, color.white)
    lbl_servo = label(pos=vector(8, 5, 0), text='FPGA MOTOR ÇIKIŞI', height=16, color=color.cyan, box=False)

    telemetry_hud = wtext(text='<b>Bağlantı Kuruluyor...</b>', html=True)

    HEADER = b'\xAB\xCD'
    FOOTER = b'\xCD\xEF'
    PACKET_SIZE = 31 
    STRUCT_FORMAT = '>hhhhhhBBBhhhhhh' 
    buffer = bytearray()
    
    yaw_sensor_rad = 0.0
    last_hz_time = time.time()
    packet_counter = 0
    current_hz = 0.0
    blink_toggle = False
    global_packet_id = 0
    last_packet_time = time.time()

    GYRO_SENSITIVITY = {
        0x00: 131.0,
        0x08: 65.5,
        0x10: 32.8,
        0x18: 16.4,
    }
    current_gyro_sens = GYRO_SENSITIVITY[0x00]

    while True:
        rate(50) 
        
        while not command_queue.empty():
            g_val, dps_val = command_queue.get()
            current_gyro_sens = GYRO_SENSITIVITY.get(dps_val, 131.0)
            try:
                packet_data = bytes([0xDE, 0xEF, g_val, dps_val, 0xCE, 0xFA, 0xEA])
                ser.write(packet_data)
                time.sleep(0.01)
                ser.write(bytes([0x01]))
            except Exception as e:
                pass

        while ser.in_waiting: buffer.extend(ser.read(ser.in_waiting))
            
        while len(buffer) >= PACKET_SIZE:
            if buffer[0:2] == HEADER and buffer[PACKET_SIZE-2:PACKET_SIZE] == FOOTER:
                unpacked_data = struct.unpack(STRUCT_FORMAT, buffer[2:PACKET_SIZE-2])
                
                packet_counter += 1
                global_packet_id += 1 
                blink_toggle = not blink_toggle
                
                now = time.time()
                dt = now - last_packet_time
                if dt <= 0 or dt > 0.5:
                    dt = 0.02
                last_packet_time = now

                if now - last_hz_time >= 1.0: 
                    current_hz = packet_counter / (now - last_hz_time)
                    packet_counter = 0
                    last_hz_time = now
                
                _, _, _, _, _, _, servo_x, servo_y, servo_z, f_ax, f_ay, f_az, f_gx, f_gy, f_gz = unpacked_data
                
                # EKSİ İŞARETİ KALDIRILDI: FPGA mantığı ile 1:1 aynı yönde okuma yapacak
                hud_pitch = math.atan2(f_ay, f_az) if f_az != 0 else 0
                hud_roll  = math.atan2(f_ax, f_az) if f_az != 0 else 0
                
                yaw_sensor_rad += math.radians(f_gz / current_gyro_sens) * dt
                yaw_sensor_rad = yaw_sensor_rad % (2 * math.pi) 

                shared_array[0:15] = unpacked_data
                shared_array[15] = current_hz
                shared_array[16] = 1.0 if blink_toggle else 0.0
                shared_array[17] = global_packet_id 
                shared_array[18] = math.degrees(hud_roll)
                shared_array[19] = math.degrees(hud_pitch)
                shared_array[20] = math.degrees(yaw_sensor_rad)
                
                hedef_yukari = vector(f_ax, f_az, f_ay)
                
                if hedef_yukari.mag > 0:
                    hedef_yukari = hedef_yukari.norm()
                    baslangic_yukari = vector(0, 1, 0)
                    
                    drone_sensor.up = vector(0, 1, 0)
                    drone_sensor.axis = vector(1, 0, 0)
                    
                    rot_axis = baslangic_yukari.cross(hedef_yukari)
                    
                    if rot_axis.mag == 0:
                        if hedef_yukari.y < 0: 
                            drone_sensor.rotate(angle=math.pi, axis=vector(1,0,0))
                    else:
                        rot_angle = math.acos(baslangic_yukari.dot(hedef_yukari))
                        drone_sensor.rotate(angle=rot_angle, axis=rot_axis)
                    
                    drone_sensor.rotate(angle=yaw_sensor_rad, axis=hedef_yukari)

                # VHDL formülüne göre 127 merkez, 0-255 arası.
                pitch_servo_rad = math.radians((servo_y - 127.0) * (90.0 / 128.0))
                roll_servo_rad  = math.radians((servo_x - 127.0) * (90.0 / 128.0))
                yaw_servo_rad   = math.radians((servo_z - 127.0) * (90.0 / 128.0))
                
                sy = math.sin(roll_servo_rad)
                cy = math.cos(roll_servo_rad)
                sp = math.sin(pitch_servo_rad)
                cp = math.cos(pitch_servo_rad)
                
                hedef_yukari_servo = vector(-sy*cp, cy*cp, sp)
                
                if hedef_yukari_servo.mag > 0:
                    hedef_yukari_servo = hedef_yukari_servo.norm()
                    baslangic_yukari = vector(0, 1, 0)
                    
                    drone_servo.up = vector(0, 1, 0)
                    drone_servo.axis = vector(1, 0, 0)
                    
                    rot_axis_servo = baslangic_yukari.cross(hedef_yukari_servo)
                    
                    if rot_axis_servo.mag == 0:
                        if hedef_yukari_servo.y < 0:
                            drone_servo.rotate(angle=math.pi, axis=vector(1,0,0))
                    else:
                        rot_angle_servo = math.acos(baslangic_yukari.dot(hedef_yukari_servo))
                        drone_servo.rotate(angle=rot_angle_servo, axis=rot_axis_servo)
                        
                    drone_servo.rotate(angle=yaw_servo_rad, axis=hedef_yukari_servo)

                rx_color = "#50fa7b" if blink_toggle else "#1e2227" 

                telemetry_hud.text = f"""
                <div style='background-color:#282c34; padding:15px; color:#abb2bf; font-family:sans-serif;'>
                    <div style='float:left; border-right: 2px solid #3e4451; padding-right: 15px; margin-right: 15px;'>
                        <span style='color:{rx_color}; font-size:18px;'>●</span> <b style='color:#e5c07b;'>FIFO RX</b><br>
                        <span style='font-size:14px;'>Hız: <b style='color:#61afef;'>{current_hz:.1f} Hz</b></span>
                    </div>
                    
                    <div style='float:left;'>
                        <h3 style='color:#61afef; margin-top:0; margin-bottom:5px;'>Uçuş Telemetrisi</h3>
                        <b>ROLL:</b> {math.degrees(hud_roll):+06.1f}° | FPGA Çıkış: {servo_x} ({(servo_x-127)*(90/128):.1f}°)<br>
                        <b>PITCH:</b> {math.degrees(hud_pitch):+06.1f}° | FPGA Çıkış: {servo_y} ({(servo_y-127)*(90/128):.1f}°)<br>
                        <b>YAW:</b> {math.degrees(yaw_sensor_rad):+06.1f}° | FPGA Çıkış: {servo_z} ({(servo_z-127)*(90/128):.1f}°)
                    </div>
                    <div style='clear:both;'></div>
                </div>
                """
                buffer = buffer[PACKET_SIZE:]
            else:
                buffer.pop(0)

# =========================================================
# 3. ANA BAŞLATICI
# =========================================================
if __name__ == '__main__':
    try: mp.set_start_method('spawn', force=True)
    except RuntimeError: pass

    shared_array = mp.Array('d', 21)
    
    command_queue = mp.Queue()

    gui_process = mp.Process(target=run_pyqt_dashboard, args=(shared_array, command_queue))
    gui_process.start()

    time.sleep(2)
    try: webbrowser.open_new_tab('http://localhost:5050')
    except: pass

    run_vpython_and_serial(shared_array, command_queue)
    gui_process.join()
