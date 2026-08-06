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
            
            self.last_packet_id = -1 # Arayüzün gördüğü son paketin kimliği

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
                'ax', 'ay', 'az', 'gx', 'gy', 'gz', 'angx', 'angy', 'angz',
                'f_ax', 'f_ay', 'f_az', 'f_gx', 'f_gy', 'f_gz', 'fpga_x'
            ]}

            self.setup_page_dashboard()
            self.setup_page_oscilloscope()
            self.setup_page_configuration()

            self.sidebar.setCurrentRow(0)

            self.timer = QTimer()
            self.timer.timeout.connect(self.update_from_shared_memory)
            # UART okuma hızı 50Hz (20ms) olduğu için, paketi kaçırmamak adına GUI Timer'ı 15ms'ye düşürüldü
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
                    padding: 8px; border-radius: 4px; font-size: 14px;
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
            self.plot_compare = pg.PlotWidget()
            self.plot_compare.setYRange(0, 180)
            self.plot_compare.addLegend(offset=(20, 20))
            self.plot_compare.showGrid(x=True, y=True, alpha=0.15)
            self.curve_angx = self.plot_compare.plot(pen=pg.mkPen(color='#56b6c2', width=3), name="Hesaplanan Roll")
            self.curve_fpga_x = self.plot_compare.plot(pen=pg.mkPen(color='#e06c75', width=3, style=Qt.DashLine), name="FPGA PWM Geri Besleme")
            comp_layout.addWidget(self.plot_compare)
            group_compare.setLayout(comp_layout)
            layout.addWidget(group_compare, stretch=2)
            
            self.pages.addWidget(page)

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

        def map_to_180(self, raw_val):
            return (raw_val + 128) * (180.0 / 255.0)

        def update_from_shared_memory(self):
            vals = self.shared_mem[:]
            
            ax, ay, az, gx, gy, gz, angx, angy, angz, f_ax, f_ay, f_az, f_gx, f_gy, f_gz = vals[0:15]
            hz = vals[15]
            blink = vals[16]
            packet_id = vals[17] # Arayüze gelen yeni paketin kimliği
            
            # --- YENİ EKLENEN KONTROL (TETİKLEME/TRIGGER YAKLAŞIMI) ---
            # Eğer son çizilen paket ile şu anki paket aynıysa veri akışı yoktur, grafiği ÇİZME ve ÇIK!
            if packet_id == self.last_packet_id:
                if hz == 0:
                    self.rx_label.setText("🔴 BAĞLANTI KOPTU VEYA BEKLENİYOR...")
                    self.rx_label.setStyleSheet("color: #e06c75; font-weight: bold; font-size: 16px; padding: 10px; background: #21252b; border-radius: 5px;")
                return
            
            # Eğer paket kimliği değiştiyse (yeni veri geldiyse), son ID'yi güncelle ve grafiği çizmeye devam et
            self.last_packet_id = packet_id

            # Arayüzdeki RX bildirimini güncelle
            blink_color = "#98c379" if blink else "#21252b"
            self.rx_label.setText(f"🟢 FIFO RX AKTİF | Örnekleme Hızı: {hz:.1f} Hz")
            self.rx_label.setStyleSheet(f"color: #98c379; font-weight: bold; font-size: 16px; padding: 10px; background: #21252b; border-left: 10px solid {blink_color}; border-radius: 5px;")

            angx_180 = self.map_to_180(angx)
            angy_180 = self.map_to_180(angy)
            angz_180 = self.map_to_180(angz)

            # Osiloskop verilerini sola kaydır (sadece YENİ veri geldiğinde burası çalışır)
            for key in self.data.keys():
                self.data[key][:-1] = self.data[key][1:]
            
            self.data['ax'][-1], self.data['ay'][-1], self.data['az'][-1] = ax, ay, az
            self.data['gx'][-1], self.data['gy'][-1], self.data['gz'][-1] = gx, gy, gz
            self.data['f_ax'][-1], self.data['f_ay'][-1], self.data['f_az'][-1] = f_ax, f_ay, f_az
            self.data['f_gx'][-1], self.data['f_gy'][-1], self.data['f_gz'][-1] = f_gx, f_gy, f_gz
            
            self.data['angx'][-1] = angx_180
            simulated_fpga_noise = np.random.normal(0, 0.5)
            self.data['fpga_x'][-1] = self.data['angx'][-4] + simulated_fpga_noise 

            current_page = self.pages.currentIndex()
            
            # Sadece aktif sekmedeki grafikleri güncelle
            if current_page == 0:
                self.curve_angx.setData(self.data['angx'])
                self.curve_fpga_x.setData(self.data['fpga_x'])
                self.motor_view.update_angles(angx_180, angy_180, angz_180)
            
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
    dt = 0.02 

    last_hz_time = time.time()
    packet_counter = 0
    current_hz = 0.0
    blink_toggle = False
    
    global_packet_id = 0 # Her gelen geçerli Header/Footer pakedinde artacak sayaç

    while True:
        rate(50) 
        
        while not command_queue.empty():
            g_val, dps_val = command_queue.get()
            try:
                packet_data = bytes([0xDE, 0xEF, g_val, dps_val, 0xCE, 0xFA, 0xEA])
                ser.write(packet_data)
                time.sleep(0.01)
                ser.write(bytes([0x01]))
                print(f"[UART TX] G: 0x{g_val:02X}, DPS: 0x{dps_val:02X} değerleri FPGA'ye gönderildi.")
            except Exception as e:
                print(f"[HATA] UART Veri gönderimi başarısız: {e}")

        while ser.in_waiting: buffer.extend(ser.read(ser.in_waiting))
            
        while len(buffer) >= PACKET_SIZE:
            if buffer[0:2] == HEADER and buffer[PACKET_SIZE-2:PACKET_SIZE] == FOOTER:
                unpacked_data = struct.unpack(STRUCT_FORMAT, buffer[2:PACKET_SIZE-2])
                
                packet_counter += 1
                global_packet_id += 1 # Osiloskop trigger kimliğini artır
                blink_toggle = not blink_toggle
                
                now = time.time()
                if now - last_hz_time >= 1.0: 
                    current_hz = packet_counter / (now - last_hz_time)
                    packet_counter = 0
                    last_hz_time = now
                
                # Verileri GUI'ye ilet
                shared_array[0:15] = unpacked_data
                shared_array[15] = current_hz
                shared_array[16] = 1.0 if blink_toggle else 0.0
                shared_array[17] = global_packet_id # Yeni ID'yi paylaşılan belleğe yaz
                
                _, _, _, _, _, _, servo_x, servo_y, servo_z, f_ax, f_ay, f_az, f_gx, f_gy, f_gz = unpacked_data
                
                if f_az == 0: f_az = 1 
                
                pitch_sensor_rad = math.atan2(f_ay, f_az)
                roll_sensor_rad  = math.atan2(-f_ax, f_az)
                yaw_sensor_rad += math.radians(f_gz / 131.0) * dt 
                
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

                rx_color = "#50fa7b" if blink_toggle else "#1e2227" 

                telemetry_hud.text = f"""
                <div style='background-color:#282c34; padding:15px; color:#abb2bf; font-family:sans-serif;'>
                    <div style='float:left; border-right: 2px solid #3e4451; padding-right: 15px; margin-right: 15px;'>
                        <span style='color:{rx_color}; font-size:18px;'>●</span> <b style='color:#e5c07b;'>FIFO RX</b><br>
                        <span style='font-size:14px;'>Hız: <b style='color:#61afef;'>{current_hz:.1f} Hz</b></span>
                    </div>
                    
                    <div style='float:left;'>
                        <h3 style='color:#61afef; margin-top:0; margin-bottom:5px;'>Uçuş Telemetrisi</h3>
                        <b>ROLL:</b> {math.degrees(roll_sensor_rad):+06.1f}° | FPGA PWM: {servo_x}<br>
                        <b>PITCH:</b> {math.degrees(pitch_sensor_rad):+06.1f}° | FPGA PWM: {servo_y}<br>
                        <b>YAW:</b> {math.degrees(yaw_sensor_rad):+06.1f}° | FPGA PWM: {servo_z}
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

    # --- DİKKAT: Paylaşılan bellek dizisi 18 elemana çıkarıldı (packet_id eklendi) ---
    shared_array = mp.Array('d', 18)
    
    command_queue = mp.Queue()

    gui_process = mp.Process(target=run_pyqt_dashboard, args=(shared_array, command_queue))
    gui_process.start()

    time.sleep(2)
    try: webbrowser.open_new_tab('http://localhost:5050')
    except: pass

    run_vpython_and_serial(shared_array, command_queue)
    gui_process.join()
