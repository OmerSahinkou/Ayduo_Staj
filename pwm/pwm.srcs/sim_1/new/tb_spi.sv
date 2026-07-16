`timescale 1ns / 1ps

module tb_spi();

    // ============================================================
    // Signals (SystemVerilog logic)
    // ============================================================
    logic clk_i;
    logic rst_i;
    logic start_trasfer_i;
    logic [7:0] data_buffer_i;
    logic miso_i;
    
    logic sclk_o;
    logic cs_o;
    logic data_valid;
    logic [7:0] rx_data;
    logic mosi_o;
    
    // Test variables
    int test_num = 0;
    int pass_count = 0;
    int fail_count = 0;
    
    // ============================================================
    // DUT Instantiation
    // ============================================================
    Spi_Mode_3 #(
        .CLK_FREQ(50_000_000),
        .SPI_FREQ(5_000_000),
        .DATA_WIDTH(8)
    )
    uut (
        .clk_i(clk_i),
        .rst_i(rst_i),
        .start_trasfer_i(start_trasfer_i),
        .mosi_o(mosi_o),
        .miso_i(miso_i),
        .sclk_o(sclk_o),
        .cs_o(cs_o),
        .data_valid(data_valid),
        .rx_data(rx_data),
        .data_buffer_i(data_buffer_i)
    );
    
    // ============================================================
    // Clock Generation (50 MHz)
    // ============================================================
    initial begin
        clk_i = 0;
        forever #10 clk_i = ~clk_i;
    end
    
    // ============================================================
    // MISO Slave Simulator
    // ============================================================
    logic [7:0] slave_tx_data;
    logic [3:0] bit_count;
    logic sclk_r1, sclk_r2;
    logic sclk_posedge;
    
    // Edge detection for SCLK
    always @(posedge clk_i) begin
        sclk_r1 <= sclk_o;
        sclk_r2 <= sclk_r1;
    end
    
    assign sclk_posedge = sclk_r2 & ~sclk_r1;
    
    // Slave: Send data MSB first on rising edge of SCLK
    always @(posedge sclk_posedge or posedge cs_o) begin
        if (cs_o) begin
            bit_count <= 0;
            miso_i <= 0;
        end else begin
            if (bit_count < 8) begin
                miso_i <= slave_tx_data[7 - bit_count];
                bit_count <= bit_count + 1;
            end
        end
    end
    
    // ============================================================
    // Verification Tasks
    // ============================================================
    
    task automatic test_init();
        $display("\n========================================");
        $display("    SPI Mode 3 Testbench (SystemVerilog)");
        $display("========================================");
        $display("CLK Frequency:  50 MHz");
        $display("SPI Frequency:  5 MHz");
        $display("Data Width:     8 bits");
        $display("Mode:           3 (CPOL=1, CPHA=1)");
        $display("========================================\n");
    endtask
    
    task automatic reset_dut();
        $display("[%0t] Asserting reset...", $time);
        rst_i = 0;
        data_buffer_i = 8'h00;
        start_trasfer_i = 0;
        miso_i = 0;
        slave_tx_data = 8'h00;
        bit_count = 0;
        
        #200;  // Hold reset
        rst_i = 1;
        #200;  // Wait after reset
        $display("[%0t] Reset complete\n", $time);
    endtask
    
    task automatic send_spi_byte(
        input logic [7:0] tx_data,
        input logic [7:0] expected_rx,
        input int test_id
    );
        test_num = test_id;
        $display("--- Test %0d ---", test_num);
        $display("[%0t] Sending: 0x%h, Expecting RX: 0x%h", $time, tx_data, expected_rx);
        
        slave_tx_data = expected_rx;
        data_buffer_i = tx_data;
        start_trasfer_i = 1;
        #20;
        start_trasfer_i = 0;
        
        // Wait for transfer to complete
        wait(data_valid);
        #50;
        
        // Verify results
        if (rx_data == expected_rx) begin
            $display("[%0t] ✓ PASS: RX Data = 0x%h (correct)", $time, rx_data);
            pass_count++;
        end else begin
            $display("[%0t] ✗ FAIL: RX Data = 0x%h (expected 0x%h)", $time, rx_data, expected_rx);
            fail_count++;
        end
        
        $display("[%0t] MOSI sent: 0x%h", $time, tx_data);
        
        #500;  // Inter-transfer delay
        $display("");
    endtask
    
    task automatic final_report();
        $display("\n========================================");
        $display("           FINAL TEST REPORT");
        $display("========================================");
        $display("Total Tests:  %0d", test_num);
        $display("Passed:       %0d", pass_count);
        $display("Failed:       %0d", fail_count);
        if (fail_count == 0) begin
            $display("Status:       ✓ ALL TESTS PASSED");
        end else begin
            $display("Status:       ✗ SOME TESTS FAILED");
        end
        $display("========================================\n");
    endtask
    
    // ============================================================
    // Main Test Sequence
    // ============================================================
    initial begin
        test_init();
        reset_dut();
        
        // Test 1: Send 0xBB, expect 0xAA from slave
        send_spi_byte(8'hBB, 8'hAA, 1);
        
        // Test 2: Send 0x55, expect 0x33
        send_spi_byte(8'h55, 8'h33, 2);
        
        // Test 3: Send 0xFF, expect 0xFF
        send_spi_byte(8'hFF, 8'hFF, 3);
        
        // Test 4: Send 0x00, expect 0x00
        send_spi_byte(8'h00, 8'h00, 4);
        
        // Test 5: Send 0xAA, expect 0x55
        send_spi_byte(8'hAA, 8'h55, 5);
        
        // Finish
        final_report();
        #1000;
        $finish;
    end
    
    // ============================================================
    // Waveform Dumping
    // ============================================================
    initial begin
        $dumpfile("tb_spi.vcd");
        $dumpvars(0, tb_spi);
    end
    
endmodule