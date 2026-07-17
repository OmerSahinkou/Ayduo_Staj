import customtkinter as ctk
from tkinter import messagebox
import serial
import time

# Arayüz Teması Ayarları
ctk.set_appearance_mode("Dark")  # "Light", "Dark" veya "System"
ctk.set_default_color_theme("blue")  # "blue", "green", "dark-blue"

# Seri port nesnesi
ser = None

def baglan():
    global ser
    port_adi = port_secim.get()
    try:
        # 115200 baud, 8-bit, No Parity, 1 Stop Bit (8N1)
        ser = serial.Serial(port_adi, 115200, timeout=1)
        # Portun hazır olması için kısa bir bekleme
        time.sleep(2)
        
        durum_label.configure(text="Durum: Bağlantı Başarılı", text_color="#2ecc71") # Yeşil renk
        slider.configure(state="normal")
        btn_baglan.configure(state="disabled")
    except Exception as e:
        messagebox.showerror("Bağlantı Hatası", f"Port açılamadı!\nLütfen yetkileri kontrol edin (Örn: sudo chmod a+rw {port_adi})\n\nDetay: {e}")

def aci_gonder(val):
    if ser and ser.is_open:
        # CustomTkinter slider'dan float döndürür, tam sayıya çeviriyoruz
        deger = int(float(val))
        
        # SG90 için 0-255 ham değerinin yaklaşık 0-180 dereceye dönüştürülmesi
        aci_derece = int((deger / 255.0) * 180)
        
        # Arayüz güncellenmesi
        lbl_aci.configure(text=f"Ham Değer: {deger}   |   Tahmini Açı: {aci_derece}°")
        
        # Veriyi bir liste içinde tek bir byte olarak ham (raw) gönderiyoruz
        ser.write(bytes([deger]))

def pencere_kapat():
    if ser and ser.is_open:
        ser.close()
    app.destroy()

# Ana Pencere Tasarımı
app = ctk.CTk()
app.title("FPGA - SG90 Servo Kontrol Paneli")
app.geometry("450x350")
app.resizable(False, False)
app.protocol("WM_DELETE_WINDOW", pencere_kapat)

# --- Başlık ---
title_font = ctk.CTkFont(family="Helvetica", size=20, weight="bold")
lbl_title = ctk.CTkLabel(app, text="SG90 Manuel Kontrol", font=title_font)
lbl_title.pack(pady=(20, 10))

# --- Bağlantı Çerçevesi (Frame) ---
frame_conn = ctk.CTkFrame(app, corner_radius=10)
frame_conn.pack(pady=10, padx=20, fill="x")

lbl_port = ctk.CTkLabel(frame_conn, text="Port Adresi:", font=ctk.CTkFont(size=14))
lbl_port.grid(row=0, column=0, padx=(15, 5), pady=15, sticky="w")

port_secim = ctk.CTkEntry(frame_conn, width=140, justify="center")
port_secim.insert(0, "/dev/ttyUSB2")
port_secim.grid(row=0, column=1, padx=5, pady=15)

btn_baglan = ctk.CTkButton(frame_conn, text="Bağlan", command=baglan, width=90, font=ctk.CTkFont(weight="bold"))
btn_baglan.grid(row=0, column=2, padx=(5, 15), pady=15)

durum_label = ctk.CTkLabel(frame_conn, text="Durum: Bağlı Değil", text_color="#e74c3c", font=ctk.CTkFont(weight="bold"))
durum_label.grid(row=1, column=0, columnspan=3, pady=(0, 10))

# --- Kontrol Çerçevesi (Frame) ---
frame_ctrl = ctk.CTkFrame(app, corner_radius=10)
frame_ctrl.pack(pady=10, padx=20, fill="x")

lbl_slider_title = ctk.CTkLabel(frame_ctrl, text="PWM Sinyal Genişliği (0 - 255)", font=ctk.CTkFont(weight="bold"))
lbl_slider_title.pack(pady=(15, 5))

# Slider nesnesi
slider = ctk.CTkSlider(frame_ctrl, from_=0, to=255, command=aci_gonder, width=350, state="disabled")
slider.set(0) # Başlangıç noktası
slider.pack(pady=10)

lbl_aci = ctk.CTkLabel(frame_ctrl, text="Ham Değer: 0   |   Tahmini Açı: 0°", font=ctk.CTkFont(size=14))
lbl_aci.pack(pady=(5, 15))

# Uygulamayı başlat
app.mainloop()
