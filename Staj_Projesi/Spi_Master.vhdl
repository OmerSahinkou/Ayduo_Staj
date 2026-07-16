`timescale 1ns / 1ps

module tb_spi();

    reg clk_i;
    reg rst_n_i;
    reg [7:0] tx_data_i;
    reg tx_start_i;
    
    wire [7:0] rx_data_o;
    wire busy_o;
    
    wire spi_sclk_o;
    wire spi_mosi_o;
    reg spi_miso_i;
    wire spi_cs_n_o;
    
    // UUT (Unit Under Test) Instantiation
    Spi_Master #(
        .CLK_FREQ(50_000_000),
        .SCLK_FREQ(8_000_000),
        .DATA_WIDTH(8)
    )
    Spi_Master_uut
    (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .tx_data_i(tx_data_i),  // DÜZELTİLDİ: rst_n_i yerine tx_data_i
        .tx_start_i(tx_start_i),
        .rx_data_o(rx_data_o),
        .busy_o(busy_o),
        .spi_sclk_o(spi_sclk_o),
        .spi_mosi_o(spi_mosi_o),
        .spi_miso_i(spi_miso_i),
        .spi_cs_n_o(spi_cs_n_o)
    );
    
    // Clock Generation
    initial begin
        clk_i = 0; // DÜZELTİLDİ: Clock başlangıç değeri atandı
        forever begin
            #10 clk_i = ~clk_i; // 50 MHz clock için yarı periyot 10ns olmalı (#10). (1/50MHz = 20ns periyot)
        end 
    end
    
    // Test Stimulus
    initial begin
        // Initialize inputs using blocking assignments for initial state
        rst_n_i = 0;
        tx_start_i = 0;
        spi_miso_i = 1;
        tx_data_i = 8'h00;
        
        // Hold reset
        #50;
        rst_n_i = 1; // Release reset
        #50;
        
        // Prepare to send data
        tx_data_i = 8'hA8;
        
        // --- CRITICAL FIXES FOR SYNCHRONOUS SIGNALS ---
        // 1. DÜZELTME: Senkron sinyallere clock ile aynı anda <= operatörü ile değer atamalısın
        // Yarış durumu (race condition) oluşmasını engeller.
        
        @(posedge clk_i);
        tx_start_i <= 1'b1;  // DÜZELTİLDİ: <= operatörü kullanıldı
        @(posedge clk_i);
        tx_start_i <= 1'b0;  // DÜZELTİLDİ: <= operatörü kullanıldı
        
        // --- CRITICAL FIXES FOR WAITING ---
        // 2. DÜZELTME: 'wait' yerine edge trigger (@) kullanarak simülasyonun kilitlenmesini (hang) engelle.
        // wait(busy_o == 1) ifadedeki değişiklik anını kaçırabilir, @(posedge ...) ise tam o anı bekler.
        
        @(posedge busy_o); // DÜZELTİLDİ: wait(busy_o == 1) yerine posedge beklendi
        $display("SPI Transmission Started (busy_o is 1)");
        
        @(negedge busy_o); // DÜZELTİLDİ: wait(busy_o == 0) yerine negedge beklendi
        $display("SPI Transmission Finished (busy_o is 0)");
        
        #500;
        $finish;
    end
    
endmodule