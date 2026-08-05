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


module rx_tb();

    reg clk_c;
    reg rst_n;

    wire [7:0]rx_data;
    wire rx_valid;

    reg tx_start;
    reg [7:0]tx_data;

    wire tx;
    wire tx_busy;

    reg [7:0] temp ;

    uart_rx#(
        .CLK_FREQ(50000000),
        .BAUD_RATE(1000000),
        .DATA_WIDTH(8)
    )uart_rx_inst(
        .clk_c(clk_c),
        .rst_n(rst_n),
        .rx(tx),
        .rx_data(rx_data),
        .rx_valid(rx_valid)
    );

    uart_tx#(
        .CLK_FREQ(50000000),
        .BAUD_RATE(1000000),
        .DATA_WIDTH(8)
    )uart_tx_ins(
        .clk_i(clk_c),
        .rst_n_i(rst_n),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx(tx),
        .tx_busy(tx_busy)
    );

    initial begin
        clk_c = 0 ;
        forever begin
            #10 clk_c = ~ clk_c ;
        end
    end


    initial  begin
        rst_n    =  0 ;
        tx_start =  0 ;
        tx_data  =  0 ;
        #1000;
        rst_n    =  1 ;
        #1000;

        for (int i = 0; i < 31; i++) begin
            temp = tx_data;              
            $display("gönderilecek veri : %h", temp);
            wait(tx_busy == 0);
            @(posedge clk_c);
            tx_start = 1;
            @(posedge clk_c);
            tx_start = 0;
            wait(rx_valid == 1);
            $display("Rx gelen veri : %h", rx_data);
            if (rx_data == temp) begin
                $display("SUCCESS");
            end else begin
                $display("Failed");
            end
            tx_data = tx_data + 8'h08;        

        end
        $finish;
    end
endmodule
