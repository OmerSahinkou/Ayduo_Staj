import tkinter as tk
from tkinter import messagebox
import serial
import time

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
        durum_label.config(text="Bağlandı!", fg="green")
        slider.config(state="normal")
        btn_baglan.config(state="disabled")
    except Exception as e:
        messagebox.showerror("Bağlantı Hatası", f"Port açılamadı!\n{e}")

def aci_gonder(val):
    if ser and ser.is_open:
        # Slider'dan gelen değeri 0-255 arası tam sayıya çevir
        deger = int(val)
        
        # Arayüz güncellenmesi
        lbl_aci.config(text=f"Gönderilen Ham Değer: {deger}")
        
        # KRİTİK: Veriyi bir liste içinde tek bir byte olarak ham (raw) gönderiyoruz
        # Python'ın bytes([deger]) komutu, string dönüşümü yapmadan 
        # doğrudan 8-bitlik veriyi (0x00 - 0xFF) UART hattına basar.
        ser.write(bytes([deger]))

def pencere_kapat():
    if ser and ser.is_open:
        ser.close()
    pencere.destroy()

# Arayüz tasarımı
pencere = tk.Tk()
pencere.title("FPGA Servo Kontrol - Manuel")
pencere.geometry("400x250")
pencere.protocol("WM_DELETE_WINDOW", pencere_kapat)

tk.Label(pencere, text="Port Adresi (Örn: /dev/ttyUSB2):").pack(pady=(15, 0))

port_secim = tk.Entry(pencere, justify="center", width=20)
port_secim.insert(0, "/dev/ttyUSB2")
port_secim.pack(pady=5)

btn_baglan = tk.Button(pencere, text="Bağlan", command=baglan, width=15)
btn_baglan.pack(pady=5)

durum_label = tk.Label(pencere, text="Bağlı Değil", fg="red")
durum_label.pack()

# Slider 0-255 arası
slider = tk.Scale(pencere, from_=0, to=255, orient="horizontal", length=300, command=aci_gonder, state="disabled")
slider.pack(pady=10)

lbl_aci = tk.Label(pencere, text="Değer: Bekleniyor...", font=("Arial", 11))
lbl_aci.pack()

pencere.mainloop()
