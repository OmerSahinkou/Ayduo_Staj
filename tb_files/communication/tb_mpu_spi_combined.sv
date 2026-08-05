`timescale 1ns / 1ps

module tb_mpu_spi_combined();

    logic clk_i = 0;
    logic rst_n_i = 0;
    logic switch_out = 0;
    
    logic start_transfer;
    logic [7:0] mosi_data, rx_data;
    logic data_valid_spi;
    
    logic spi_cs_n_o, mosi_o, sclk_o;
    logic miso_i = 0;
    
    logic mpu_data_valid;
    logic [15:0] ax_o, ay_o, az_o, gx_o, gy_o, gz_o;

    integer bit_cnt = 7;
    logic [7:0] dummy_spi_byte = 8'hA5;

    Spi_Mode_3 #(
        .CLK_FREQ(33_333_333),
        .SPI_FREQ(1_000_000),
        .DATA_WIDTH(8)
    ) spi_inst (
        .clk_i(clk_i), .rst_i(rst_n_i),
        .start_trasfer_i(start_transfer),
        .mosi_o(mosi_o), .miso_i(miso_i), .sclk_o(sclk_o),
        .data_valid(data_valid_spi),
        .rx_data(rx_data),
        .data_buffer_i(mosi_data)
    );

    MPU6500_Controller mpu_inst (
        .clk_i(clk_i), .rst_i(rst_n_i),
        .switch_out(switch_out),
        .data_valid_i(data_valid_spi),
        .rx_data_i(rx_data),
        .g_value(8'h08), .dps_value(8'h10),
        .Conf_sig(1'b0),
        .start_transfer_o(start_transfer),
        .mosi_data_o(mosi_data),
        .spi_cs_n_o(spi_cs_n_o),
        .data_valid_out(mpu_data_valid),
        .ax_o(ax_o), .ay_o(ay_o), .az_o(az_o),
        .gx_o(gx_o), .gy_o(gy_o), .gz_o(gz_o)
    );

    always #15 clk_i = ~clk_i;

    always @(negedge sclk_o or posedge spi_cs_n_o) begin
        if (spi_cs_n_o) begin
            bit_cnt <= 7;
            dummy_spi_byte <= 8'hA5;
        end else begin
            miso_i <= dummy_spi_byte[bit_cnt];
            if (bit_cnt == 0) begin
                bit_cnt <= 7;
                dummy_spi_byte <= dummy_spi_byte + 8'h11;
            end else begin
                bit_cnt <= bit_cnt - 1;
            end
        end
    end

    initial begin
        rst_n_i = 0;
        #200;
        rst_n_i = 1;
        
        wait(mpu_data_valid == 1'b1);
        #1000;
        
        $display("SPI okumasi basarili, eksen verileri alindi.");
        $stop;
    end
endmodule
