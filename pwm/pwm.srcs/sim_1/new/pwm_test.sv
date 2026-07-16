// pwm_test_sv.sv
`timescale 1ns / 1ps

module pwm_test_sv();
    
    logic clk_i;
    logic rst_n_i;
    logic [7:0] servo_angle;
    logic pwm_out;
    
    localparam CLK_PERIOD = 20;      // 50MHz
    localparam SIM_PERIOD = 20_000_000;  // 20ms
    
    // ⭐ VHDL entity'yi instantiate et
    pwm_servo #(
        .CLK_FREQ(50_000_000)
    ) uut (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .servo_angle(servo_angle),
        .pwm_out(pwm_out)
    );
    
    // Clock
    initial begin
        clk_i = 0;
        forever #(CLK_PERIOD/2) clk_i = ~clk_i;
    end
    
    // Stimulus
    initial begin
        rst_n_i = 0;
        servo_angle = 8'h00;
        #100;
        
        rst_n_i = 1;
        
        // Test 1: -90°
        $display("=== Test 1: -90° (servo_angle = 0x00) ===");
        servo_angle = 8'h00;
        #(SIM_PERIOD);
        
        // Test 2: 0°
        $display("=== Test 2: 0° (servo_angle = 0x80) ===");
        servo_angle = 8'h80;
        #(SIM_PERIOD);
        
        // Test 3: +90°
        $display("=== Test 3: +90° (servo_angle = 0xFF) ===");
        servo_angle = 8'hFF;
        #(SIM_PERIOD);
        
        $display("=== Complete ===");
        $finish;
    end
    
    // Monitor
    initial begin
        $monitor("Time: %0tns | angle: 0x%02h | pwm: %b", 
                 $time, servo_angle, pwm_out);
    end
    
    // VCD dump
    initial begin
        $dumpfile("pwm_servo.vcd");
        $dumpvars(0, pwm_test_sv);
    end
    
endmodule