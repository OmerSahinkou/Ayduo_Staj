`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2026 10:53:59 AM
// Design Name: 
// Module Name: spi_master_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module spi_master_test();
    reg clk_i;
    reg rst_i;
    reg start_trasfer_i;
    reg miso_i;               
    reg [7:0] data_buffer_i;  

    wire mosi_o;
    wire sclk_o;
    wire data_valid;
    wire [7:0] rx_data;       

    reg [7:0] test_veri ; 

    int i;
    Spi_Mode_3 #(
        .CLK_FREQ(50000000),
        .SPI_FREQ(1000000),
        .DATA_WIDTH(8)
    ) Spi_Mode_3_ins (
        .clk_i (clk_i),
        .rst_i (rst_i),
        .start_trasfer_i (start_trasfer_i),
        .mosi_o (mosi_o),
        .miso_i (miso_i),
        .sclk_o (sclk_o),
        .data_valid (data_valid),
        .rx_data (rx_data),
        .data_buffer_i (data_buffer_i)
    );

    initial begin
        clk_i = 0;
        forever begin
            #5 clk_i = ~clk_i;
        end
    end

    initial begin
        rst_i = 0;
        start_trasfer_i = 0;
        data_buffer_i = 8'h00;
        miso_i = 0;
        test_veri = 8'hA6;
        #50;
        rst_i = 1;              
        #50;
        
        data_buffer_i = 8'hAA; 
        start_trasfer_i = 1;
        #10;
        start_trasfer_i = 0;   

        for (i = 7; i >= 0; i = i - 1) begin
        @(negedge sclk_o);
        miso_i = test_veri[i];
        end
        @(posedge data_valid);
        #500;
        if(rx_data == test_veri) begin
            $display("[BAŞARILI] Gelen Veri Doğru: %h", rx_data);
        end else begin
            $display("[HATA] Gelen Veri Yanliş: %h (beklenen : %h)", rx_data, test_veri);
        end
        
        $finish;
    end
endmodule
