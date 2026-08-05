`timescale 1ns / 1ps

module tb_motor_control();

    parameter DATA_WIDTH = 16;

    // Giriş Sinyalleri
    logic clk_i = 0;
    logic rst_n_i = 0;

    logic mpu_data_valid_in = 0;
    logic [7:0] g_value;
    logic [7:0] dps_value;

    // Sensör Verileri (SystemVerilog'da signed logic işimizi çok kolaylaştırır)
    logic signed [DATA_WIDTH-1:0] f_axi_i, f_ayi_i, f_azi_i;
    logic signed [DATA_WIDTH-1:0] f_gxi_i, f_gyi_i, f_gzi_i;

    logic pwm_valid_x = 0;
    logic pwm_valid_y = 0;
    logic pwm_valid_z = 0;

    // Çıkış Sinyalleri
    logic [7:0] angle_x;
    logic [7:0] angle_y;
    logic [7:0] angle_z;

    // Modülü Çağırma (DUT - Device Under Test)
    Motor_Control #(
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .mpu_data_valid_in(mpu_data_valid_in),
        .g_value(g_value),
        .dps_value(dps_value),
        .f_axi_i(f_axi_i),
        .f_ayi_i(f_ayi_i),
        .f_azi_i(f_azi_i),
        .f_gxi_i(f_gxi_i),
        .f_gyi_i(f_gyi_i),
        .f_gzi_i(f_gzi_i),
        .angle_x(angle_x),
        .angle_y(angle_y),
        .angle_z(angle_z),
        .pwm_valid_x(pwm_valid_x),
        .pwm_valid_y(pwm_valid_y),
        .pwm_valid_z(pwm_valid_z)
    );

    // Saat Sinyali (33.33 MHz için periyot ~30ns)
    always #15 clk_i = ~clk_i;

    initial begin
        // 1. İLK DEĞERLER VE RESET
        rst_n_i = 0;
        g_value = 8'h08;   // +-4g hassasiyet
        dps_value = 8'h10; // +-1000 dps hassasiyet
        
        f_axi_i = 0; f_ayi_i = 0; f_azi_i = 0;
        f_gxi_i = 0; f_gyi_i = 0; f_gzi_i = 0;

        #100;
        rst_n_i = 1;
        #100;

        // 2. DURUM: DÜZ DURUŞ (Hover / Stabil)
        // Sadece Z ekseninde yerçekimi ivmesi var, diğerleri 0
        f_azi_i = 16'd8192; // 1G ivme
        mpu_data_valid_in = 1; // Filtreden veri geldi
        #30;
        mpu_data_valid_in = 0;

        #100;
        // PWM modülleri yeni açıları talep ediyor
        pwm_valid_x = 1; pwm_valid_y = 1; pwm_valid_z = 1;
        #30;
        pwm_valid_x = 0; pwm_valid_y = 0; pwm_valid_z = 0;

        #500; // Sonuçları izlemek için bekle (Açılar 127 civarında kalmalı)

        // 3. DURUM: X VE Y EKSENİNDE BOZULMA (Eğilme Hareketi)
        // Sistem X ve Y'de ivmeleniyor ve Gyro dönüş algılıyor
        f_axi_i = 16'd2000;  
        f_ayi_i = -16'd1500; // Zıt yöne yatış
        f_gxi_i = 16'd500;   
        f_gyi_i = -16'd300;
        
        mpu_data_valid_in = 1;
        #30;
        mpu_data_valid_in = 0;

        #100;
        // PWM modüllerine güncel açıları yolla (PD kontrolcü burada tepki verecek)
        pwm_valid_x = 1; pwm_valid_y = 1; pwm_valid_z = 1;
        #30;
        pwm_valid_x = 0; pwm_valid_y = 0; pwm_valid_z = 0;

        #500;

        // 4. DURUM: Z EKSENİ (YAW) HAREKETİ
        // Yüksek bir Z gyro verisi vererek angle_pool'un toplanmasını test edelim
        f_gzi_i = 16'd1200;
        mpu_data_valid_in = 1;
        #30;
        mpu_data_valid_in = 0;
        
        #100;
        pwm_valid_z = 1;
        #30;
        pwm_valid_z = 0;

        #500;
        $display("Motor Kontrolcu simulasyonu tamamlandi :D");
        $stop;
    end
endmodule
