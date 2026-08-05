`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2026 11:35:28 AM
// Design Name: 
// Module Name: tx_tb
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


module tx_tb();

    reg clk_i;
    reg rst_n_i;
    reg tx_start;
    reg [7:0]tx_data;

    wire tx;
    wire tx_busy;

    reg [7:0]temp;

    uart_tx#(
        .CLK_FREQ(33333333),
        .BAUD_RATE(1000000),
        .DATA_WIDTH(8)
    )uart_tx_ins(
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx(tx),
        .tx_busy(tx_busy)
    );



    initial begin
        clk_i = 0 ;
        forever begin
            #15 clk_i = ~ clk_i ;
        end
    end



    initial begin
        rst_n_i     = 0 ;
        tx_start    = 0 ;
        tx_data     = 8'h00 ;
        temp        = 8'hf8 ;
        
        #100;
        rst_n_i     = 1 ; 
        #100;             

        for (int i = 0 ; i < 31 ; i++ ) begin
            $display("gönderilecek byte = %h \n", tx_data);
            wait(tx_busy == 0); 
            
            @(posedge clk_i);
            tx_start = 1;
            
            @(posedge clk_i);
            tx_start = 0 ; 
            
            tx_data = tx_data + 8'h08; 
        end
        
        wait(tx_busy == 1);
        wait(tx_busy == 0);
        
        #1000;

        $display("son veri 0x %h olmali", temp);
        $finish;
    end
endmodule
