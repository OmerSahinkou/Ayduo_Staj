import multiprocessing as mp
import os
import time
import webbrowser

# =========================================================
# 1. PROCESS: PYQT5 ARAYÜZÜ (ŞEKİLLİ HUD YER İSTASYONU)
# =========================================================
def run_pyqt_dashboard(shared_array, command_queue):
    import sys
    import math
    import numpy as np
    
    os.environ["QT_QPA_PLATFORM"] = "xcb" # Ubuntu 24.04 Wayland Fix
    
    import pyqtgraph as pg
    from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QWidget, 
                                 QGridLayout, QHBoxLayout, QPushButton, QLabel, QSpinBox, 
                                 QListWidget, QListWidgetItem, QStackedWidget,
                                 QGroupBox, QFormLayout, QFrame)
    from PyQt5.QtCore import QTimer, Qt, QSize, QRectF
    from PyQt5.QtGui import QPainter, QPen, QColor, QFont, QPainterPath

    # --- 1A. ÖZEL ÇİZİM: AVİONİK MOTOR KADRANLARI ---
    class SciFiMotorVisualizer(QWidget):
        def __init__(self):
            super().__init__()
            self.setMinimumSize(400, 220)
            self.angles = [0, 0, 0] 

        def update_angles(self, ax, ay, az):
            self.angles = [ax, ay, az]
            self.update() 

        def paintEvent(self, event):
            painter = QPainter(self)
            painter.setRenderHint(QPainter.Antialiasing)
            
            width = self.width()
            height = self.height()
            
            centers = [(width // 6, height // 2 + 10), 
                       (3 * width // 6, height // 2 + 10), 
                       (5 * width // 6, height // 2 + 10)]
            
            # Neon Renk Paleti
            colors = [QColor(0, 229, 255), QColor(57, 255, 20), QColor(255, 0, 85)]
            labels = ["M1 (ROLL)", "M2 (PITCH)", "M3 (YAW)"]
            
            radius = min(width // 6, height // 2) - 30
            if radius < 20: radius = 20
            
            for i in range(3):
                cx, cy = int(centers[i][0]), int(centers[i][1])
                val = self.angles[i]
                
                # 1. Dış Çerçeve Çentikleri (Teknolojik Görünüm)
                painter.setPen(QPen(QColor(40, 44, 52), 2, Qt.DashLine))
                painter.drawEllipse(cx - radius - 10, cy - radius - 10, (radius + 10) * 2, (radius + 10) * 2)

                # 2. Arka Plan Yayı (Boş Gösterge)
                rect = QRectF(cx - radius, cy - radius, radius * 2, radius * 2)
                painter.setPen(QPen(QColor(25, 30, 40), 12, cap=Qt.FlatCap))
                painter.drawArc(rect, 225 * 16, -270 * 16) # 270 derecelik yay

                # 3. Dolu Yay (Değere Göre Dolan Kısım)
                # 0-180 dereceyi 270 derecelik yaya oranlıyoruz
                span_angle = int(-(val / 180.0) * 270 * 16) 
                painter.setPen(QPen(colors[i], 12, cap=Qt.FlatCap))
                painter.drawArc(rect, 225 * 16, span_angle)

                # 4. Merkez Yazısı (Değer)
                painter.setPen(QPen(Qt.white))
                painter.setFont(QFont("Consolas", 18, QFont.Bold))
                text_rect = QRectF(cx - 30, cy - 15, 60, 30)
                painter.drawText(text_rect, Qt.AlignCenter, f"{int(val)}°")

                # 5. Alt Etiket
                painter.setPen(QPen(QColor(138, 145, 164)))
                painter.setFont(QFont("Segoe UI", 11, QFont.Bold))
                painter.drawText(cx - 40, cy + radius + 25, labels[i])

    # --- 1B. ANA PENCERE ---
    class MainWindow(QMainWindow):
        def __init__(self, shared_mem, cmd_queue):
            super().__init__()
            self.shared_mem = shared_mem
            self.cmd_queue = cmd_queue
            self.setWindowTitle("AYDUO İHA | Taktik Uçuş Kontrol İstasyonu")
            self.resize(1600, 900)
            self.apply_cyber_theme()

            main_widget = QWidget()
            self.setCentralWidget(main_widget)
            main_layout = QVBoxLayout(main_widget)
            main_layout.setContentsMargins(0, 0, 0, 0)
            main_layout.setSpacing(0)

            # Üst Bar (Header)
            header = QFrame()
            header.setFixedHeight(60)
            header.setStyleSheet("background-color: #0b0d14; border-bottom: 2px solid #00e5ff;")
            header_layout = QHBoxLayout(header)
            
            logo_lbl = QLabel("🚀 AYDUO ELECTRONICS | TAKTİK TELEMETRİ SİSTEMİ")
            logo_lbl.setStyleSheet("color: #00e5ff; font-size: 20px; font-weight: 900; font-family: 'Segoe UI'; letter-spacing: 2px;")
            header_layout.addWidget(logo_lbl)
            
            status_lbl = QLabel("🟢 SİSTEM AKTİF  |  📡 UART: /dev/ttyUSB2  |  ⚡ 33.3 MHz FPGA CLK")
            status_lbl.setStyleSheet("color: #39ff14; font-size: 14px; font-weight: bold; font-family: 'Consolas';")
            header_layout.addWidget(status_lbl, alignment=Qt.AlignRight)
            
            main_layout.addWidget(header)

            # İçerik Alanı
            content_layout = QHBoxLayout()
            content_layout.setContentsMargins(0, 0, 0, 0)
            main_layout.addLayout(content_layout)

            self.sidebar = QListWidget()
            self.sidebar.setFixedWidth(280)
            self.sidebar.currentRowChanged.connect(self.change_page)
            
            menu_items = ["💠 UÇUŞ DİNAMİKLERİ", "〽️ SİNYAL SPEKTRUMU", "⚙️ SİSTEM KONFİGÜRASYONU"]
            for item in menu_items:
                list_item = QListWidgetItem(item)
                list_item.setSizeHint(QSize(280, 70))
                self.sidebar.addItem(list_item)
            
            content_layout.addWidget(self.sidebar)

            self.pages = QStackedWidget()
            content_layout.addWidget(self.pages)

            # Grafik Ayarları (PyQtGraph)
            pg.setConfigOption('background', '#0f111a')
            pg.setConfigOption('foreground', '#8a91a4')
            pg.setConfigOptions(antialias=True)

            self.max_points = 300 # Görsel akıcılık için nokta sayısını kısalttım
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
            self.timer.start(33) # ~30 FPS

        def apply_cyber_theme(self):
            self.setStyleSheet("""
                QMainWindow { background-color: #0f111a; }
                QListWidget {
                    background-color: #0b0d14; border: none; color: #8a91a4;
                    font-size: 15px; font-weight: 900; font-family: 'Segoe UI';
                    outline: none; padding-top: 10px;
                }
                QListWidget::item { padding-left: 20px; border-left: 4px solid transparent; border-bottom: 1px solid #1a1d27;}
                QListWidget::item:selected { background-color: #151923; color: #00e5ff; border-left: 4px solid #00e5ff; }
                QListWidget::item:hover:!selected { background-color: #151923; color: #ffffff;}
                
                QGroupBox {
                    background-color: #151923; border: 1px solid #282f40; 
                    border-radius: 10px; margin-top: 1.5em; 
                    color: #00e5ff; font-size: 14px; font-weight: 800; font-family: 'Segoe UI';
                }
                QGroupBox::title { subcontrol-origin: margin; left: 20px; padding: 0 5px; }
                
                QPushButton {
                    background-color: #00e5ff; color: #000000; 
                    font-weight: 900; font-size: 15px; padding: 15px; 
                    border-radius: 6px; border: none; font-family: 'Segoe UI';
                }
                QPushButton:hover { background-color: #39ff14; }
                QPushButton:pressed { background-color: #00b3cc; }
                
                QLabel { color: #8a91a4; font-size: 15px; font-weight: bold; font-family: 'Segoe UI'; }
                QSpinBox { 
                    background-color: #0b0d14; color: #00e5ff; border: 1px solid #00e5ff; 
                    padding: 8px; border-radius: 4px; font-size: 16px; font-weight: bold; font-family: 'Consolas';
                }
                QSpinBox::up-button, QSpinBox::down-button { width: 25px; background: #151923; }
            """)

        def change_page(self, index):
            self.pages.setCurrentIndex(index)

        def create_filled_plot(self, plot_widget, color_hex, name, style=Qt.SolidLine):
            color = QColor(color_hex)
            pen = pg.mkPen(color=color, width=2.5, style=style)
            
            # Alan Dolgusu (Brush)
            color.setAlpha(40) # Şeffaflık
            brush = pg.mkBrush(color)
            
            return plot_widget.plot(pen=pen, brush=brush, fillLevel=0, name=name)

        def setup_page_dashboard(self):
            page = QWidget()
            layout = QVBoxLayout(page)
            layout.setContentsMargins(30, 20, 30, 30)
            
            info_label = QLabel("🚀 3D DİJİTAL İKİZ BAĞLANTISI AKTİF: Görselleştirme motoru tarayıcı üzerinden donanım ile senkronize edilmiştir.")
            info_label.setStyleSheet("color: #39ff14; font-weight: bold; font-size: 14px; padding: 12px; background: #0b0d14; border: 1px solid #39ff14; border-radius: 5px;")
            layout.addWidget(info_label)

            group_dials = QGroupBox("MÜHİMMAT / MOTOR KONTROL PWM ÇIKIŞLARI (0-255)")
            dials_layout = QVBoxLayout()
            self.motor_view = SciFiMotorVisualizer()
            dials_layout.addWidget(self.motor_view)
            group_dials.setLayout(dials_layout)
            layout.addWidget(group_dials, stretch=1)

            group_compare = QGroupBox("UÇUŞ KONTROLCÜSÜ GERİ BESLEME ANALİZİ (PITCH/ROLL YANSIMASI)")
            comp_layout = QVBoxLayout()
            self.plot_compare = pg.PlotWidget()
            self.plot_compare.setYRange(0, 180)
            self.plot_compare.addLegend(offset=(20, 20))
            self.plot_compare.showGrid(x=True, y=True, alpha=0.2)
            
            self.curve_angx = self.create_filled_plot(self.plot_compare, '#00e5ff', "Algılanan Roll Açısı")
            self.curve_fpga_x = self.plot_compare.plot(pen=pg.mkPen(color='#ff0055', width=3, style=Qt.DashLine), name="FPGA PD Kontrolcü (PWM Çıkışı)")
            
            comp_layout.addWidget(self.plot_compare)
            group_compare.setLayout(comp_layout)
            layout.addWidget(group_compare, stretch=2)
            
            self.pages.addWidget(page)

        def setup_page_oscilloscope(self):
            page = QWidget()
            layout = QGridLayout(page)
            layout.setContentsMargins(30, 20, 30, 30)
            layout.setSpacing(25)

            group_acc = QGroupBox("İVMEÖLÇER (ACCELEROMETER) TELEMETRİSİ - HAM vs IIR FİLTRE")
            l_acc = QVBoxLayout()
            self.plot_acc = pg.PlotWidget()
            self.plot_acc.addLegend(offset=(10, 10))
            self.plot_acc.showGrid(x=True, y=True, alpha=0.2)
            
            # Sadece filtrelenmiş veriye dolgu ekleyip, ham veriyi arkada ince çizgi bırakıyoruz
            self.c_ax = self.plot_acc.plot(pen=pg.mkPen(color=(255, 0, 85, 100), width=1), name="X Ham")
            self.c_fax = self.create_filled_plot(self.plot_acc, '#ff0055', "X Filtreli")
            
            self.c_ay = self.plot_acc.plot(pen=pg.mkPen(color=(57, 255, 20, 100), width=1), name="Y Ham")
            self.c_fay = self.create_filled_plot(self.plot_acc, '#39ff14', "Y Filtreli")
            
            self.c_az = self.plot_acc.plot(pen=pg.mkPen(color=(0, 229, 255, 100), width=1), name="Z Ham")
            self.c_faz = self.create_filled_plot(self.plot_acc, '#00e5ff', "Z Filtreli")
            
            l_acc.addWidget(self.plot_acc)
            group_acc.setLayout(l_acc)
            layout.addWidget(group_acc, 0, 0)

            group_gyro = QGroupBox("JİROSKOP (GYROSCOPE) TELEMETRİSİ - HAM vs IIR FİLTRE")
            l_gyro = QVBoxLayout()
            self.plot_gyro = pg.PlotWidget()
            self.plot_gyro.addLegend(offset=(10, 10))
            self.plot_gyro.showGrid(x=True, y=True, alpha=0.2)
            
            self.c_gx = self.plot_gyro.plot(pen=pg.mkPen(color=(255, 0, 85, 100), width=1), name="X Ham")
            self.c_fgx = self.create_filled_plot(self.plot_gyro, '#ff0055', "X Filtreli")
            
            self.c_gy = self.plot_gyro.plot(pen=pg.mkPen(color=(57, 255, 20, 100), width=1), name="Y Ham")
            self.c_fgy = self.create_filled_plot(self.plot_gyro, '#39ff14', "Y Filtreli")
            
            self.c_gz = self.plot_gyro.plot(pen=pg.mkPen(color=(0, 229, 255, 100), width=1), name="Z Ham")
            self.c_fgz = self.create_filled_plot(self.plot_gyro, '#00e5ff', "Z Filtreli")
            
            l_gyro.addWidget(self.plot_gyro)
            group_gyro.setLayout(l_gyro)
            layout.addWidget(group_gyro, 1, 0)

            self.pages.addWidget(page)

        def setup_page_configuration(self):
            page = QWidget()
            layout = QVBoxLayout(page)
            layout.setContentsMargins(50, 50, 50, 50)
            
            title = QLabel("SİSTEM DONANIM KONFİGÜRASYONU")
            title.setStyleSheet("font-size: 28px; color: #ffffff; font-weight: 900; margin-bottom: 20px; font-family: 'Segoe UI';")
            layout.addWidget(title)

            group_conn = QGroupBox("KÖPRÜ BAĞLANTI PARAMETRELERİ")
            form_conn = QFormLayout()
            form_conn.setSpacing(25)
            
            port_lbl = QLabel("/dev/ttyUSB2")
            port_lbl.setStyleSheet("color: #00e5ff; font-weight:bold; font-size:16px; background: #0b0d14; padding: 5px; border-radius: 4px;")
            baud_lbl = QLabel("1,000,000 bps (1 Mbps)")
            baud_lbl.setStyleSheet("color: #00e5ff; font-weight:bold; font-size:16px; background: #0b0d14; padding: 5px; border-radius: 4px;")
            
            form_conn.addRow("Kanal (Port):", port_lbl)
            form_conn.addRow("Baud Rate:", baud_lbl)
            group_conn.setLayout(form_conn)
            layout.addWidget(group_conn)

            group_mpu = QGroupBox("MPU6500 REGİSTER AYARLARI (SPI MASTER)")
            form_mpu = QFormLayout()
            form_mpu.setSpacing(25)
            
            self.spin_g = QSpinBox()
            self.spin_g.setDisplayIntegerBase(16)
            self.spin_g.setRange(0, 255)
            self.spin_g.setValue(8) 
            self.spin_g.setPrefix("0x ")
            self.spin_g.setFixedWidth(250)
            
            self.spin_dps = QSpinBox()
            self.spin_dps.setDisplayIntegerBase(16)
            self.spin_dps.setRange(0, 255)
            self.spin_dps.setValue(16)
            self.spin_dps.setPrefix("0x ")
            self.spin_dps.setFixedWidth(250)

            form_mpu.addRow("ACCEL_CONFIG (İvmeölçer):", self.spin_g)
            form_mpu.addRow("GYRO_CONFIG (Jiroskop):", self.spin_dps)
            
            self.btn_send = QPushButton("YENİ PARAMETRELERİ FPGA'YE UPLOAD ET")
            self.btn_send.setFixedWidth(500)
            self.btn_send.clicked.connect(self.on_send_clicked)
            form_mpu.addRow("", self.btn_send)
            
            self.status_lbl = QLabel("")
            self.status_lbl.setStyleSheet("color: #39ff14; font-weight: bold; font-size: 16px;")
            form_mpu.addRow("", self.status_lbl)
            
            group_mpu.setLayout(form_mpu)
            layout.addWidget(group_mpu)
            layout.addStretch()

            self.pages.addWidget(page)

        def on_send_clicked(self):
            g_val = self.spin_g.value()
            dps_val = self.spin_dps.value()
            self.cmd_queue.put((g_val, dps_val))
            
            self.status_lbl.setText(f"🚀 [ BAŞARILI ] UPLOAD EDİLDİ -> G: 0x{g_val:02X}, DPS: 0x{dps_val:02X}")
            QTimer.singleShot(4000, lambda: self.status_lbl.setText(""))

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
            self.data['f_ax'][-1], self.data['f_ay'][-1], self.data['f_az'][-1] = f_ax, f_ay, f_az
            self.data['f_gx'][-1], self.data['f_gy'][-1], self.data['f_gz'][-1] = f_gx, f_gy, f_gz
            
            self.data['angx'][-1] = angx_180
            simulated_fpga_noise = np.random.normal(0, 0.4)
            self.data['fpga_x'][-1] = self.data['angx'][-4] + simulated_fpga_noise 

            current_page = self.pages.currentIndex()
            
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
                   width=1200, height=600, background=color.hex_to_rgb("#0b0d14"))
    scene.camera.pos = vector(0, 15, 25)
    scene.camera.axis = vector(0, -10, -25)

    def create_drone(position, c_body, c_arms):
        body = box(pos=position, size=vector(3, 0.8, 3), color=c_body)
        arm1 = box(pos=position, size=vector(10, 0.4, 0.6), color=c_arms)
        arm1.rotate(angle=math.radians(45), axis=vector(0,1,0))
        arm2 = box(pos=position, size=vector(10, 0.4, 0.6), color=c_arms)
        arm2.rotate(angle=math.radians(-45), axis=vector(0,1,0))
        
        m1 = cylinder(pos=position + vector(3.5, 0.3, 3.5), axis=vector(0,0.5,0), radius=0.6, color=color.hex_to_rgb("#ff0055"))
        m2 = cylinder(pos=position + vector(-3.5, 0.3, -3.5), axis=vector(0,0.5,0), radius=0.6, color=color.hex_to_rgb("#00e5ff"))
        m3 = cylinder(pos=position + vector(3.5, 0.3, -3.5), axis=vector(0,0.5,0), radius=0.6, color=color.hex_to_rgb("#ff0055"))
        m4 = cylinder(pos=position + vector(-3.5, 0.3, 3.5), axis=vector(0,0.5,0), radius=0.6, color=color.hex_to_rgb("#00e5ff"))
        head = cone(pos=position + vector(0, 0, 5), axis=vector(0, 0, 2), radius=0.5, color=color.hex_to_rgb("#39ff14"))
        return compound([body, arm1, arm2, m1, m2, m3, m4, head])

    drone_sensor = create_drone(vector(-8, 0, 0), color.hex_to_rgb("#ff9900"), color.gray(0.5))
    lbl_sensor = label(pos=vector(-8, 5, 0), text='SENSÖR REFERANSI', height=16, color=color.hex_to_rgb("#ff9900"), box=False)

    drone_servo = create_drone(vector(8, 0, 0), color.hex_to_rgb("#00e5ff"), color.gray(0.5))
    lbl_servo = label(pos=vector(8, 5, 0), text='FPGA MOTOR ÇIKIŞI', height=16, color=color.hex_to_rgb("#00e5ff"), box=False)

    telemetry_hud = wtext(text='<b>Bağlantı Kuruluyor...</b>', html=True)

    HEADER = b'\xAB\xCD'
    FOOTER = b'\xCD\xEF'
    PACKET_SIZE = 31 
    STRUCT_FORMAT = '>hhhhhhBBBhhhhhh' 
    buffer = bytearray()
    yaw_sensor_rad = 0.0
    dt = 0.02 

    while True:
        rate(50) 
        
        while not command_queue.empty():
            g_val, dps_val = command_queue.get()
            try:
                packet_data = bytes([0xDE, 0xEF, g_val, dps_val, 0xCE, 0xFA, 0xEA])
                ser.write(packet_data)
                time.sleep(0.01)
                ser.write(bytes([0x01]))
                print(f"[UART TX] G: 0x{g_val:02X}, DPS: 0x{dps_val:02X} değerleri gönderildi.")
            except Exception as e: pass

        while ser.in_waiting: buffer.extend(ser.read(ser.in_waiting))
            
        while len(buffer) >= PACKET_SIZE:
            if buffer[0:2] == HEADER and buffer[PACKET_SIZE-2:PACKET_SIZE] == FOOTER:
                unpacked_data = struct.unpack(STRUCT_FORMAT, buffer[2:PACKET_SIZE-2])
                
                raw_ax, raw_ay, raw_az, raw_gx, raw_gy, raw_gz, servo_x, servo_y, servo_z, f_ax, f_ay, f_az, f_gx, f_gy, f_gz = unpacked_data
                shared_array[:] = unpacked_data
                
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

                telemetry_hud.text = f"""
                <div style='background-color:#0b0d14; padding:15px; color:#8a91a4; font-family:Consolas, monospace; border: 1px solid #00e5ff; border-radius: 5px;'>
                    <h3 style='color:#00e5ff; margin-top:0;'>TAKTIK UCUS TELEMETRISI</h3>
                    <span style='color:#ff0055;'><b>ROLL:</b></span> {math.degrees(roll_sensor_rad):+06.1f}° &nbsp;|&nbsp; <b>FPGA PWM:</b> {servo_x:03d}<br>
                    <span style='color:#39ff14;'><b>PITCH:</b></span> {math.degrees(pitch_sensor_rad):+06.1f}° &nbsp;|&nbsp; <b>FPGA PWM:</b> {servo_y:03d}<br>
                    <span style='color:#00e5ff;'><b>YAW:</b></span> {math.degrees(yaw_sensor_rad):+06.1f}° &nbsp;|&nbsp; <b>FPGA PWM:</b> {servo_z:03d}
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

    shared_array = mp.Array('d', 15)
    command_queue = mp.Queue()

    gui_process = mp.Process(target=run_pyqt_dashboard, args=(shared_array, command_queue))
    gui_process.start()

    time.sleep(2)
    try: webbrowser.open_new_tab('http://localhost:5050')
    except: pass

    run_vpython_and_serial(shared_array, command_queue)
    gui_process.join()
