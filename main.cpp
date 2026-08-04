#include <iostream>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>
#include <cstdint>
#include <cmath>
#include <chrono>
#include <iomanip>

// Big-Endian (FPGA) verisini Little-Endian (PC) formatına çeviren yardımcı fonksiyon
int16_t parse_int16(const uint8_t* buffer, int index) {
    return (int16_t)((buffer[index] << 8) | buffer[index + 1]);
}

int main() {
    // Ubuntu Seri Port Ayarları
    const char* portName = "/dev/ttyUSB2";
    int fd = open(portName, O_RDWR | O_NOCTTY | O_SYNC);
    
    if (fd < 0) {
        std::cerr << "HATA: " << portName << " acilamadi! (sudo chmod 666 " << portName << " yaptin mi?)" << std::endl;
        return -1;
    }

    struct termios tty;
    tcgetattr(fd, &tty);
    cfsetospeed(&tty, B115200);
    cfsetispeed(&tty, B115200);
    
    tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8; 
    tty.c_cflag |= (CLOCAL | CREAD);
    tty.c_cflag &= ~(PARENB | PARODD | CSTOPB | CRTSCTS);
    tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
    tty.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
    tty.c_oflag &= ~OPOST;
    
    tcsetattr(fd, TCSANOW, &tty);

    std::cout << "\033[2J\033[H"; // Terminali temizle
    std::cout << "FPGA C++ Telemetri Baslatiliyor...\n";

    uint8_t buffer[256];
    int buf_len = 0;
    
    // Nanosaniye hassasiyetinde zamanlama (Yaw hesaplaması için)
    auto last_time = std::chrono::high_resolution_clock::now();
    double yaw_sensor_rad = 0.0;

    while (true) {
        uint8_t temp_buf[64];
        int n = read(fd, temp_buf, sizeof(temp_buf));
        
        if (n > 0) {
            for (int i = 0; i < n; i++) {
                buffer[buf_len++] = temp_buf[i];
            }
        }

        // Paket boyutu 31 bayt. Yeterli veri varsa işle.
        while (buf_len >= 31) {
            // Header: 0xAB 0xCD, Footer: 0xCD 0xEF
            if (buffer[0] == 0xAB && buffer[1] == 0xCD) {
                if (buffer[29] == 0xCD && buffer[30] == 0xEF) {
                    
                    // --- ZAMANLAMA (dt) ---
                    auto current_time = std::chrono::high_resolution_clock::now();
                    std::chrono::duration<double> elapsed = current_time - last_time;
                    double dt = elapsed.count();
                    last_time = current_time;

                    // --- VERİ ÇÖZÜMLEME ---
                    // Raw Data (İhtiyaç olursa)
                    // int16_t raw_ax = parse_int16(buffer, 2);
                    // ...

                    // Servo Çıkışları (Unsigned 8-bit)
                    uint8_t servo_x = buffer[14];
                    uint8_t servo_y = buffer[15];
                    uint8_t servo_z = buffer[16];

                    // Filtrelenmiş Veriler
                    int16_t f_ax = parse_int16(buffer, 17);
                    int16_t f_ay = parse_int16(buffer, 19);
                    int16_t f_az = parse_int16(buffer, 21);
                    int16_t f_gx = parse_int16(buffer, 23);
                    int16_t f_gy = parse_int16(buffer, 25);
                    int16_t f_gz = parse_int16(buffer, 27);

                    if (f_az == 0) f_az = 1; // Sıfıra bölünme koruması

                    // --- SENSÖR HESAPLAMALARI ---
                    double pitch_sensor = atan2(f_ay, f_az) * (180.0 / M_PI);
                    double roll_sensor  = atan2(-f_ax, f_az) * (180.0 / M_PI);
                    
                    // Gyro Z ile hassas Yaw entegrasyonu (1000 dps ölçeklemesi varsayımıyla)
                    if (abs(f_gz) > 15) {
                        yaw_sensor_rad += (f_gz * 0.001) * dt; 
                    }
                    double yaw_sensor = yaw_sensor_rad * (180.0 / M_PI);

                    // --- SERVO TAHMİNLERİ (0-255 -> Derece) ---
                    double pitch_servo = (servo_y - 128.0) * (90.0 / 128.0);
                    double roll_servo  = (servo_x - 128.0) * (90.0 / 128.0);
                    double yaw_servo   = (servo_z - 128.0) * (90.0 / 128.0);

                    // --- YÜKSEK HIZLI TERMİNAL HUD ÇİZİMİ ---
                    // \033[H imleci sol üst köşeye taşır (titremeyi engeller)
                    std::cout << "\033[H\n";
                    std::cout << "========================================================\n";
                    std::cout << "   FPGA C++ STAJ TEST PLATFORMU - GERCEK ZAMANLI HUD    \n";
                    std::cout << "========================================================\n\n";

                    std::cout << std::fixed << std::setprecision(1);
                    std::cout << "--- FIZIKSEL SENSOR EGIMI ---\n";
                    std::cout << "PITCH (Y): " << std::setw(6) << pitch_sensor << " derece\n";
                    std::cout << "ROLL  (X): " << std::setw(6) << roll_sensor  << " derece\n";
                    std::cout << "YAW   (Z): " << std::setw(6) << yaw_sensor   << " derece (C++ dt entegrasyonu)\n\n";

                    std::cout << "--- PID SERVO TEPKISI -------\n";
                    std::cout << "SERVO Y (Pitch): " << std::setw(3) << (int)servo_y << " (Tahmini " << -pitch_servo << " derece)\n";
                    std::cout << "SERVO X (Roll) : " << std::setw(3) << (int)servo_x << " (Tahmini " << -roll_servo  << " derece)\n";
                    std::cout << "SERVO Z (Yaw)  : " << std::setw(3) << (int)servo_z << " (Tahmini " << yaw_servo    << " derece)\n";
                    std::cout << "========================================================\n";
                    std::cout << "Yenileme: " << std::setw(4) << (1.0 / dt) << " Hz  | dt: " << dt << " s\n";

                    // İşlenen paketi buffer'dan at
                    for (int i = 0; i < buf_len - 31; i++) {
                        buffer[i] = buffer[i + 31];
                    }
                    buf_len -= 31;
                } else {
                    // Header doğru ama footer yanlış, buffer'ı 1 kaydır
                    for (int i = 0; i < buf_len - 1; i++) buffer[i] = buffer[i + 1];
                    buf_len--;
                }
            } else {
                // Header bulunamadı, buffer'ı 1 kaydır
                for (int i = 0; i < buf_len - 1; i++) buffer[i] = buffer[i + 1];
                buf_len--;
            }
        }
    }
    close(fd);
    return 0;
}
