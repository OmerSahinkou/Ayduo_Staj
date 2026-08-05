`timescale 1ns / 1ps

module tb_pwm_servo();

reg clk_i ;
reg rst_n_i;
reg [7:0] servo_angle; // 8 bit olarak düzeltildi
wire pwm_out;
wire pwm_valid;

pwm_serv#(.CLK_FREQ(33333333)) pwm_serv_inst(
    .clk_i(clk_i),
    .rst_n_i(rst_n_i),
    .servo_angle(servo_angle),
    .pwm_out(pwm_out),
    .pwm_valid(pwm_valid)
);

// Saat üretici
initial begin
    clk_i = 0 ;
    forever begin
        #15 clk_i = ~clk_i ;
    end
end

// Kontrol bloğu
initial begin
    rst_n_i = 0 ;
    servo_angle = 0 ;
    #50;
    rst_n_i = 1; // Reset bırakıldı
    #50;
    
    for (int i = 0 ; i < 31 ; i++ ) begin
        @(posedge clk_i);
        wait(pwm_valid == 1); // Geçerli sinyali bekle
        $display("%h\n",servo_angle);
        servo_angle <= servo_angle + 8'h08; 
        @(posedge clk_i); // Sonsuz döngüye girmemesi için saat kenarı atla
    end

    $finish;
end

endmodule
