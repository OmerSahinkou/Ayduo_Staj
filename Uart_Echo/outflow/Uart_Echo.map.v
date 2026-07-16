
//
// Verific Verilog Description of module uart_echo
//

module uart_echo (clk_c, rst_n, rx, tx) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_c /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(12)
    input rst_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(13)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(14)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(15)
    
    
    wire tx_start_sig, state;
    wire [7:0]data_bus;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(21)
    wire [1:0]\uart_rx_i/state ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(30)
    wire [2:0]\uart_rx_i/bit_idx ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(33)
    wire [8:0]\uart_rx_i/bitcounter ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(32)
    
    wire data_ready;
    wire [7:0]\uart_rx_i/data_buffer ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(34)
    wire [7:0]\uart_tx_i/data_buffer ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(29)
    wire [2:0]\uart_tx_i/bit_idx ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(28)
    wire [1:0]\uart_tx_i/state ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(32)
    wire [8:0]\uart_tx_i/bitcounter ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(27)
    
    wire tx_busy, ceg_net1, ceg_net47, \uart_rx_i/n499 , ceg_net74;
    wire [2:0]\uart_rx_i/n170 ;
    
    wire ceg_net55;
    wire [8:0]\uart_rx_i/n157 ;
    
    wire ceg_net34, ceg_net53, \clk_c~O , \uart_rx_i/n522 , \uart_rx_i/n521 , 
        \uart_rx_i/n520 , \uart_rx_i/n523 , \uart_rx_i/n524 , \uart_rx_i/n525 , 
        \uart_rx_i/n526 , \uart_rx_i/n527 ;
    wire [1:0]\uart_rx_i/n167 ;
    
    wire \uart_tx_i/n404 ;
    wire [2:0]\uart_tx_i/n160 ;
    
    wire ceg_net61, ceg_net75;
    wire [8:0]\uart_tx_i/n150 ;
    
    wire ceg_net24, \uart_tx_i/n139 , ceg_net58, \uart_tx_i/n140 , ceg_net59;
    wire [1:0]\uart_tx_i/n136 ;
    
    wire n116, n117, n118, n119, n120, n121, n122, n123, n124, 
        n125, n126, n127, n128, n129, n130, n131, n132, n133, 
        n134, n135, n136, n137, n138, n139, n140, n141;
    
    EFX_LUT4 LUT__194 (.I0(state), .I1(data_ready), .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(22)
    defparam LUT__194.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__195 (.I0(data_ready), .I1(tx_busy), .I2(state), .O(ceg_net47)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(23)
    defparam LUT__195.LUTMASK = 16'hc5c5;
    EFX_FF \tx_start_sig~FF  (.D(state), .CE(ceg_net1), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(79)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state~FF  (.D(state), .CE(ceg_net47), .CLK(\clk_c~O ), .SR(rst_n), 
           .Q(state)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(79)
    defparam \state~FF .CLK_POLARITY = 1'b1;
    defparam \state~FF .CE_POLARITY = 1'b0;
    defparam \state~FF .SR_POLARITY = 1'b0;
    defparam \state~FF .D_POLARITY = 1'b0;
    defparam \state~FF .SR_SYNC = 1'b0;
    defparam \state~FF .SR_VALUE = 1'b0;
    defparam \state~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[0]~FF  (.D(\uart_rx_i/data_buffer [0]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[0]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[0]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[0]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[0]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[0]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/state[0]~FF  (.D(\uart_rx_i/state [0]), .CE(ceg_net74), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/state[0]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_i/state[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/state[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bit_idx[0]~FF  (.D(\uart_rx_i/n170 [0]), .CE(ceg_net55), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bit_idx[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[0]~FF  (.D(\uart_rx_i/n157 [0]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_ready~FF  (.D(\uart_rx_i/state [1]), .CE(ceg_net53), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(data_ready)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_ready~FF .CLK_POLARITY = 1'b1;
    defparam \data_ready~FF .CE_POLARITY = 1'b0;
    defparam \data_ready~FF .SR_POLARITY = 1'b0;
    defparam \data_ready~FF .D_POLARITY = 1'b1;
    defparam \data_ready~FF .SR_SYNC = 1'b1;
    defparam \data_ready~FF .SR_VALUE = 1'b0;
    defparam \data_ready~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[0]~FF  (.D(rx), .CE(\uart_rx_i/n522 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[1]~FF  (.D(\uart_rx_i/n157 [1]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[2]~FF  (.D(\uart_rx_i/n157 [2]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[3]~FF  (.D(\uart_rx_i/n157 [3]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[4]~FF  (.D(\uart_rx_i/n157 [4]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[5]~FF  (.D(\uart_rx_i/n157 [5]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[6]~FF  (.D(\uart_rx_i/n157 [6]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[7]~FF  (.D(\uart_rx_i/n157 [7]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bitcounter[8]~FF  (.D(\uart_rx_i/n157 [8]), .CE(ceg_net34), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bitcounter[8]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[1]~FF  (.D(\uart_rx_i/data_buffer [1]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[1]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[1]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[1]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[1]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[1]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[2]~FF  (.D(\uart_rx_i/data_buffer [2]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[2]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[2]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[2]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[2]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[2]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[3]~FF  (.D(\uart_rx_i/data_buffer [3]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[3]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[3]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[3]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[3]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[3]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[4]~FF  (.D(\uart_rx_i/data_buffer [4]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[4]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[4]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[4]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[4]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[4]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[5]~FF  (.D(\uart_rx_i/data_buffer [5]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[5]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[5]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[5]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[5]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[5]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[6]~FF  (.D(\uart_rx_i/data_buffer [6]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[6]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[6]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[6]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[6]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[6]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[6]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_bus[7]~FF  (.D(\uart_rx_i/data_buffer [7]), .CE(\uart_rx_i/n499 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(data_bus[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \data_bus[7]~FF .CLK_POLARITY = 1'b1;
    defparam \data_bus[7]~FF .CE_POLARITY = 1'b0;
    defparam \data_bus[7]~FF .SR_POLARITY = 1'b0;
    defparam \data_bus[7]~FF .D_POLARITY = 1'b1;
    defparam \data_bus[7]~FF .SR_SYNC = 1'b1;
    defparam \data_bus[7]~FF .SR_VALUE = 1'b0;
    defparam \data_bus[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[1]~FF  (.D(rx), .CE(\uart_rx_i/n521 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[2]~FF  (.D(rx), .CE(\uart_rx_i/n520 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[3]~FF  (.D(rx), .CE(\uart_rx_i/n523 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[4]~FF  (.D(rx), .CE(\uart_rx_i/n524 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[5]~FF  (.D(rx), .CE(\uart_rx_i/n525 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[6]~FF  (.D(rx), .CE(\uart_rx_i/n526 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/data_buffer[7]~FF  (.D(rx), .CE(\uart_rx_i/n527 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/data_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bit_idx[1]~FF  (.D(\uart_rx_i/n170 [1]), .CE(ceg_net55), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bit_idx[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/bit_idx[2]~FF  (.D(\uart_rx_i/n170 [2]), .CE(ceg_net55), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/bit_idx[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_i/state[1]~FF  (.D(\uart_rx_i/n167 [1]), .CE(ceg_net74), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_rx_i/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(99)
    defparam \uart_rx_i/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_i/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_i/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_i/state[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_i/state[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_i/state[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_i/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[0]~FF  (.D(data_bus[0]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bit_idx[0]~FF  (.D(\uart_tx_i/n160 [0]), .CE(ceg_net61), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/state[0]~FF  (.D(\uart_tx_i/state [0]), .CE(ceg_net75), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/state[0]~FF .D_POLARITY = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[0]~FF  (.D(\uart_tx_i/n150 [0]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy~FF  (.D(\uart_tx_i/n139 ), .CE(ceg_net58), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \tx_busy~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy~FF .D_POLARITY = 1'b1;
    defparam \tx_busy~FF .SR_SYNC = 1'b0;
    defparam \tx_busy~FF .SR_VALUE = 1'b0;
    defparam \tx_busy~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\uart_tx_i/n140 ), .CE(ceg_net59), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[1]~FF  (.D(\uart_tx_i/n150 [1]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[2]~FF  (.D(\uart_tx_i/n150 [2]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[3]~FF  (.D(\uart_tx_i/n150 [3]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[4]~FF  (.D(\uart_tx_i/n150 [4]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[5]~FF  (.D(\uart_tx_i/n150 [5]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[6]~FF  (.D(\uart_tx_i/n150 [6]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[7]~FF  (.D(\uart_tx_i/n150 [7]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[8]~FF  (.D(\uart_tx_i/n150 [8]), .CE(ceg_net24), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[1]~FF  (.D(data_bus[1]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[2]~FF  (.D(data_bus[2]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[3]~FF  (.D(data_bus[3]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[4]~FF  (.D(data_bus[4]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[5]~FF  (.D(data_bus[5]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[6]~FF  (.D(data_bus[6]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[7]~FF  (.D(data_bus[7]), .CE(\uart_tx_i/n404 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bit_idx[1]~FF  (.D(\uart_tx_i/n160 [1]), .CE(ceg_net61), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bit_idx[2]~FF  (.D(\uart_tx_i/n160 [2]), .CE(ceg_net61), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/state[1]~FF  (.D(\uart_tx_i/n136 [1]), .CE(ceg_net75), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(97)
    defparam \uart_tx_i/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/state[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/state[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/state[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__196 (.I0(\uart_rx_i/bitcounter [5]), .I1(\uart_rx_i/bitcounter [6]), 
            .I2(\uart_rx_i/bitcounter [7]), .I3(\uart_rx_i/bitcounter [8]), 
            .O(n116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__196.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__197 (.I0(\uart_rx_i/state [0]), .I1(\uart_rx_i/state [1]), 
            .I2(n116), .O(\uart_rx_i/n499 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__197.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__198 (.I0(\uart_rx_i/state [0]), .I1(\uart_rx_i/state [1]), 
            .O(n117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__198.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__199 (.I0(\uart_rx_i/bit_idx [0]), .I1(\uart_rx_i/bit_idx [1]), 
            .I2(\uart_rx_i/bit_idx [2]), .O(n118)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__199.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__200 (.I0(\uart_rx_i/state [1]), .I1(n118), .I2(\uart_rx_i/state [0]), 
            .I3(n116), .O(n119)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__200.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__201 (.I0(n117), .I1(rx), .I2(n119), .I3(rst_n), .O(ceg_net74)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__201.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__202 (.I0(\uart_rx_i/bit_idx [0]), .I1(\uart_rx_i/state [1]), 
            .O(\uart_rx_i/n170 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(97)
    defparam LUT__202.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__203 (.I0(n118), .I1(n116), .I2(rx), .I3(\uart_rx_i/state [1]), 
            .O(n120)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__203.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__204 (.I0(n120), .I1(\uart_rx_i/state [0]), .I2(rst_n), 
            .O(ceg_net55)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__204.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__205 (.I0(n116), .I1(n117), .O(n121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__205.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__206 (.I0(\uart_rx_i/bitcounter [0]), .I1(n121), .O(\uart_rx_i/n157 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__206.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__207 (.I0(rst_n), .I1(rx), .I2(n117), .O(ceg_net34)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__207.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__208 (.I0(n117), .I1(\uart_rx_i/n499 ), .I2(rst_n), .O(ceg_net53)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(30)
    defparam LUT__208.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__209 (.I0(\uart_rx_i/state [0]), .I1(\uart_rx_i/bit_idx [0]), 
            .I2(n116), .O(n122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__209.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__210 (.I0(\uart_rx_i/bit_idx [1]), .I1(\uart_rx_i/bit_idx [2]), 
            .I2(\uart_rx_i/state [1]), .I3(n122), .O(\uart_rx_i/n522 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__210.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__211 (.I0(\uart_rx_i/bitcounter [0]), .I1(\uart_rx_i/bitcounter [1]), 
            .I2(n121), .O(\uart_rx_i/n157 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__211.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__212 (.I0(\uart_rx_i/bitcounter [0]), .I1(\uart_rx_i/bitcounter [1]), 
            .O(n123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__212.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__213 (.I0(\uart_rx_i/bitcounter [2]), .I1(n123), .I2(n121), 
            .O(\uart_rx_i/n157 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__213.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__214 (.I0(\uart_rx_i/bitcounter [2]), .I1(n123), .I2(\uart_rx_i/bitcounter [3]), 
            .I3(n121), .O(\uart_rx_i/n157 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__214.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__215 (.I0(\uart_rx_i/bitcounter [0]), .I1(\uart_rx_i/bitcounter [1]), 
            .I2(\uart_rx_i/bitcounter [2]), .I3(\uart_rx_i/bitcounter [3]), 
            .O(n124)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__215.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__216 (.I0(n117), .I1(n116), .I2(\uart_rx_i/bitcounter [4]), 
            .I3(n124), .O(\uart_rx_i/n157 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'habba */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(97)
    defparam LUT__216.LUTMASK = 16'habba;
    EFX_LUT4 LUT__217 (.I0(\uart_rx_i/bitcounter [4]), .I1(n124), .I2(\uart_rx_i/bitcounter [5]), 
            .I3(n121), .O(\uart_rx_i/n157 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__217.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__218 (.I0(\uart_rx_i/bitcounter [4]), .I1(\uart_rx_i/bitcounter [5]), 
            .O(n125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__218.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__219 (.I0(n124), .I1(n125), .I2(\uart_rx_i/bitcounter [6]), 
            .I3(n121), .O(\uart_rx_i/n157 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__219.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__220 (.I0(\uart_rx_i/bitcounter [6]), .I1(n124), .I2(n125), 
            .O(n126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__220.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__221 (.I0(n117), .I1(n116), .I2(\uart_rx_i/bitcounter [7]), 
            .I3(n126), .O(\uart_rx_i/n157 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'habba */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(97)
    defparam LUT__221.LUTMASK = 16'habba;
    EFX_LUT4 LUT__222 (.I0(\uart_rx_i/bitcounter [7]), .I1(n126), .I2(\uart_rx_i/bitcounter [8]), 
            .I3(n121), .O(\uart_rx_i/n157 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(83)
    defparam LUT__222.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__223 (.I0(\uart_rx_i/state [0]), .I1(\uart_rx_i/bit_idx [0]), 
            .I2(n116), .O(n127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__223.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__224 (.I0(\uart_rx_i/bit_idx [1]), .I1(\uart_rx_i/bit_idx [2]), 
            .I2(\uart_rx_i/state [1]), .I3(n127), .O(\uart_rx_i/n521 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__224.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__225 (.I0(\uart_rx_i/bit_idx [2]), .I1(\uart_rx_i/bit_idx [1]), 
            .I2(\uart_rx_i/state [1]), .I3(n122), .O(\uart_rx_i/n520 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__225.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__226 (.I0(\uart_rx_i/bit_idx [2]), .I1(\uart_rx_i/bit_idx [1]), 
            .I2(\uart_rx_i/state [1]), .I3(n127), .O(\uart_rx_i/n523 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__226.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__227 (.I0(\uart_rx_i/bit_idx [1]), .I1(\uart_rx_i/bit_idx [2]), 
            .I2(\uart_rx_i/state [1]), .I3(n122), .O(\uart_rx_i/n524 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__227.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__228 (.I0(\uart_rx_i/bit_idx [1]), .I1(\uart_rx_i/bit_idx [2]), 
            .I2(\uart_rx_i/state [1]), .I3(n127), .O(\uart_rx_i/n525 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__228.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__229 (.I0(\uart_rx_i/bit_idx [1]), .I1(\uart_rx_i/bit_idx [2]), 
            .I2(\uart_rx_i/state [1]), .I3(n122), .O(\uart_rx_i/n526 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__229.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__230 (.I0(\uart_rx_i/state [0]), .I1(\uart_rx_i/state [1]), 
            .I2(n116), .I3(n118), .O(\uart_rx_i/n527 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(30)
    defparam LUT__230.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__231 (.I0(\uart_rx_i/bit_idx [0]), .I1(\uart_rx_i/bit_idx [1]), 
            .I2(\uart_rx_i/state [1]), .O(\uart_rx_i/n170 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(97)
    defparam LUT__231.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__232 (.I0(\uart_rx_i/bit_idx [0]), .I1(\uart_rx_i/bit_idx [1]), 
            .I2(\uart_rx_i/bit_idx [2]), .I3(\uart_rx_i/state [1]), .O(\uart_rx_i/n170 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(97)
    defparam LUT__232.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__233 (.I0(rx), .I1(\uart_rx_i/state [1]), .I2(\uart_rx_i/state [0]), 
            .O(\uart_rx_i/n167 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c1c */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_tx.vhdl(97)
    defparam LUT__233.LUTMASK = 16'h1c1c;
    EFX_LUT4 LUT__234 (.I0(\uart_tx_i/state [1]), .I1(tx_start_sig), .O(\uart_tx_i/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(96)
    defparam LUT__234.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__235 (.I0(\uart_tx_i/state [0]), .I1(\uart_tx_i/n139 ), 
            .O(\uart_tx_i/n404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(44)
    defparam LUT__235.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__236 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/state [1]), 
            .O(\uart_tx_i/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(96)
    defparam LUT__236.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__237 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/bit_idx [1]), 
            .I2(\uart_tx_i/bit_idx [2]), .I3(\uart_tx_i/state [1]), .O(n128)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__237.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__238 (.I0(\uart_tx_i/bitcounter [5]), .I1(\uart_tx_i/bitcounter [6]), 
            .I2(\uart_tx_i/bitcounter [7]), .I3(\uart_tx_i/bitcounter [8]), 
            .O(n129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__238.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__239 (.I0(n129), .I1(n128), .I2(\uart_tx_i/n139 ), .I3(\uart_tx_i/state [0]), 
            .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff07 */ ;
    defparam LUT__239.LUTMASK = 16'hff07;
    EFX_LUT4 LUT__240 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/bit_idx [1]), 
            .I2(\uart_tx_i/bit_idx [2]), .I3(\uart_tx_i/state [1]), .O(n130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__240.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__241 (.I0(\uart_tx_i/state [1]), .I1(\uart_tx_i/state [0]), 
            .I2(n129), .O(n131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__241.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__242 (.I0(n130), .I1(\uart_tx_i/n139 ), .I2(\uart_tx_i/state [0]), 
            .I3(n131), .O(ceg_net75)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff01 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(24)
    defparam LUT__242.LUTMASK = 16'hff01;
    EFX_LUT4 LUT__243 (.I0(\uart_tx_i/bitcounter [0]), .I1(n131), .O(\uart_tx_i/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__243.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__244 (.I0(tx_start_sig), .I1(\uart_tx_i/state [0]), .I2(\uart_tx_i/state [1]), 
            .O(ceg_net24)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_echo.vhdl(24)
    defparam LUT__244.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__245 (.I0(\uart_tx_i/state [0]), .I1(\uart_tx_i/state [1]), 
            .O(\uart_tx_i/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(96)
    defparam LUT__245.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__246 (.I0(n131), .I1(\uart_tx_i/n136 [1]), .O(ceg_net58)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(32)
    defparam LUT__246.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__247 (.I0(\uart_tx_i/data_buffer [1]), .I1(\uart_tx_i/data_buffer [3]), 
            .I2(\uart_tx_i/bit_idx [0]), .I3(\uart_tx_i/bit_idx [1]), .O(n132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc0a */ ;
    defparam LUT__247.LUTMASK = 16'hfc0a;
    EFX_LUT4 LUT__248 (.I0(\uart_tx_i/data_buffer [6]), .I1(n132), .I2(\uart_tx_i/bit_idx [0]), 
            .I3(\uart_tx_i/bit_idx [2]), .O(n133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1003 */ ;
    defparam LUT__248.LUTMASK = 16'h1003;
    EFX_LUT4 LUT__249 (.I0(\uart_tx_i/data_buffer [4]), .I1(\uart_tx_i/data_buffer [2]), 
            .I2(\uart_tx_i/bit_idx [1]), .O(n134)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__249.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__250 (.I0(\uart_tx_i/data_buffer [7]), .I1(\uart_tx_i/data_buffer [5]), 
            .I2(\uart_tx_i/bit_idx [1]), .O(n135)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__250.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__251 (.I0(n135), .I1(n134), .I2(\uart_tx_i/bit_idx [0]), 
            .I3(\uart_tx_i/bit_idx [2]), .O(n136)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf53f */ ;
    defparam LUT__251.LUTMASK = 16'hf53f;
    EFX_LUT4 LUT__252 (.I0(\uart_tx_i/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\uart_tx_i/state [0]), .O(n137)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__252.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__253 (.I0(n133), .I1(n136), .I2(n137), .I3(\uart_tx_i/state [1]), 
            .O(\uart_tx_i/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h44f0 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(96)
    defparam LUT__253.LUTMASK = 16'h44f0;
    EFX_LUT4 LUT__254 (.I0(\uart_tx_i/state [0]), .I1(n129), .I2(\uart_tx_i/state [1]), 
            .O(ceg_net59)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__254.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__255 (.I0(\uart_tx_i/bitcounter [0]), .I1(\uart_tx_i/bitcounter [1]), 
            .I2(n131), .O(\uart_tx_i/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__255.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__256 (.I0(\uart_tx_i/bitcounter [0]), .I1(\uart_tx_i/bitcounter [1]), 
            .O(n138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__256.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__257 (.I0(\uart_tx_i/bitcounter [2]), .I1(n138), .I2(n131), 
            .O(\uart_tx_i/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__257.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__258 (.I0(\uart_tx_i/bitcounter [2]), .I1(n138), .I2(\uart_tx_i/bitcounter [3]), 
            .I3(n131), .O(\uart_tx_i/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__258.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__259 (.I0(\uart_tx_i/bitcounter [0]), .I1(\uart_tx_i/bitcounter [1]), 
            .I2(\uart_tx_i/bitcounter [2]), .I3(\uart_tx_i/bitcounter [3]), 
            .O(n139)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__259.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__260 (.I0(\uart_tx_i/bitcounter [4]), .I1(n139), .I2(n131), 
            .O(\uart_tx_i/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__260.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__261 (.I0(\uart_tx_i/bitcounter [4]), .I1(n139), .I2(\uart_tx_i/bitcounter [5]), 
            .I3(n131), .O(\uart_tx_i/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__261.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__262 (.I0(\uart_tx_i/bitcounter [4]), .I1(\uart_tx_i/bitcounter [5]), 
            .I2(n139), .O(n140)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__262.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__263 (.I0(\uart_tx_i/bitcounter [6]), .I1(n140), .I2(n131), 
            .O(\uart_tx_i/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__263.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__264 (.I0(\uart_tx_i/bitcounter [4]), .I1(\uart_tx_i/bitcounter [5]), 
            .I2(\uart_tx_i/bitcounter [6]), .I3(n139), .O(n141)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__264.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__265 (.I0(\uart_tx_i/bitcounter [7]), .I1(n141), .I2(n131), 
            .O(\uart_tx_i/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__265.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__266 (.I0(\uart_tx_i/bitcounter [7]), .I1(n141), .I2(\uart_tx_i/bitcounter [8]), 
            .I3(n131), .O(\uart_tx_i/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(66)
    defparam LUT__266.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__267 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/bit_idx [1]), 
            .I2(\uart_tx_i/state [1]), .O(\uart_tx_i/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(96)
    defparam LUT__267.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__268 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/bit_idx [1]), 
            .I2(\uart_tx_i/bit_idx [2]), .I3(\uart_tx_i/state [1]), .O(\uart_tx_i/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Uart_Echo/uart_rx.vhd(96)
    defparam LUT__268.LUTMASK = 16'h7800;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_c), .O(\clk_c~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_fc3b4c55_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_fc3b4c55_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_fc3b4c55_0
// module not written out since it is a black box. 
//

