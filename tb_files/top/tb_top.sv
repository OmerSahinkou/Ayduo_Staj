`timescale 1ns / 1ps

module tb_top();

    parameter CLK_FREQ = 33_333_333;
    parameter BAUD_RATE = 1_000_000;
    parameter BIT_PERIOD_NS = (1_000_000_000 / BAUD_RATE);

    logic clk_i = 0;
    logic rst_n_i = 0;
    logic switch_in = 0;
    logic rx = 1;
    logic miso_i = 0;

    logic pwm_out_0, pwm_out_1, pwm_out_2;
    logic tx;
    logic spi_cs_n_o, mosi_o, sclk_o;
    
    integer bit_cnt = 7;
    logic [7:0] dummy_spi_byte = 8'h12;

    top #(
        .SQRT_DATA(34),
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) dut (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .switch_in(switch_in),
        .pwm_out_0(pwm_out_0),
        .pwm_out_1(pwm_out_1),
        .pwm_out_2(pwm_out_2),
        .rx(rx),
        .tx(tx),
        .spi_cs_n_o(spi_cs_n_o),
        .mosi_o(mosi_o),
        .miso_i(miso_i),
        .sclk_o(sclk_o)
    );

    always #15 clk_i = ~clk_i;

    always @(negedge sclk_o or posedge spi_cs_n_o) begin
        if (spi_cs_n_o) begin
            bit_cnt <= 7;
            dummy_spi_byte <= 8'h12;
        end else begin
            miso_i <= dummy_spi_byte[bit_cnt];
            if (bit_cnt == 0) begin
                bit_cnt <= 7;
                dummy_spi_byte <= dummy_spi_byte + 8'h34;
            end else begin
                bit_cnt <= bit_cnt - 1;
            end
        end
    end

    task send_uart_byte(input logic [7:0] data_in);
        integer i;
        begin
            rx = 0; 
            #(BIT_PERIOD_NS);
            for (i = 0; i < 8; i++) begin
                rx = data_in[i];
                #(BIT_PERIOD_NS);
            end
            rx = 1; 
            #(BIT_PERIOD_NS);
        end
    endtask

    initial begin
        rst_n_i = 0;
        switch_in = 1;
        #200;
        rst_n_i = 1;
        #500;
        
        switch_in = 0; 
        
        #10000;
        
        send_uart_byte(8'hDE);
        send_uart_byte(8'hEF);
        send_uart_byte(8'h18); 
        send_uart_byte(8'h18); 
        send_uart_byte(8'hCE);
        send_uart_byte(8'hFA);
        send_uart_byte(8'hEA);
        
        #5000;
        
        send_uart_byte(8'h01);
        
        #500000;
        
        $display("Top modul senaryo testi tamamlandi.");
        $stop;
    end
endmodule
