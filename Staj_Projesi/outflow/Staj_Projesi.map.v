
//
// Verific Verilog Description of module top
//

module top (clk_c, rst_n, tx, button) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_c /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(13)
    input rst_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(14)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(15)
    input button /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(16)
    
    wire [1:0]n87_2;
    wire n174_2;
    wire n90;
    wire n178_2;
    wire n180_2;
    wire n182_2;
    wire [1:0]state;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(32)
    
    wire \button_sync[0] ;
    wire [7:0]tx_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(22)
    
    wire tx_start, clk_out_prev, button_clean;
    wire [7:0]\uart_tx_i/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(29)
    wire [2:0]\uart_tx_i/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(28)
    wire [21:0]\clk_divider_i/n8 ;
    
    wire \clk_divider_i/add_18/n2 ;
    wire [1:0]\uart_tx_i/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(32)
    wire [8:0]\uart_tx_i/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(27)
    
    wire tx_busy, \clk_divider_i/add_18/n40 , \clk_divider_i/add_18/n38 , 
        \clk_divider_i/add_18/n36 , \clk_divider_i/add_18/n34 , \clk_divider_i/add_18/n32 , 
        \clk_divider_i/add_18/n30 , \clk_divider_i/add_18/n28 , \clk_divider_i/add_18/n26 , 
        \clk_divider_i/add_18/n24 , \clk_divider_i/add_18/n22 , \clk_divider_i/add_18/n20 , 
        \clk_divider_i/add_18/n18 , \clk_divider_i/add_18/n16 , \clk_divider_i/add_18/n14 ;
    wire [21:0]\clk_divider_i/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(36)
    
    wire clk_out, \clk_divider_i/add_18/n12 , \clk_divider_i/add_18/n10 , 
        \clk_divider_i/add_18/n8 , \clk_divider_i/add_18/n6 , \clk_divider_i/add_18/n4 , 
        \button_sync[1] , \button_sync[2] , ceg_net44, \clk_c~O , ceg_net25, 
        \equal_5/n5 , ceg_net8, \uart_tx_i/n406 ;
    wire [2:0]\uart_tx_i/n160 ;
    
    wire ceg_net38, ceg_net47;
    wire [8:0]\uart_tx_i/n150 ;
    
    wire ceg_net15, \uart_tx_i/n139 , ceg_net35, \uart_tx_i/n140 , ceg_net36;
    wire [1:0]\uart_tx_i/n136 ;
    
    wire \clk_divider_i/n129 , \clk_divider_i/n6 , n184, n186, n188, 
        n190;
    wire [1:0]n87;
    
    wire n152, n153, n154, n155, n156, n157, n158, n159, n160, 
        n161, n162, n163, n164, n165, n166, n167, n168, n169, 
        n170, n171, n172, n173, n174, n175, n176, n177, n178, 
        n179, n180, n181, n182;
    
    EFX_LUT4 LUT__333 (.I0(state[0]), .I1(state[1]), .O(n87_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__333.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__334 (.I0(state[0]), .I1(button_clean), .O(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__334.LUTMASK = 16'h4444;
    EFX_FF \state[0]~FF  (.D(n87_2[0]), .CE(ceg_net44), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \state[0]~FF .CE_POLARITY = 1'b0;
    defparam \state[0]~FF .SR_POLARITY = 1'b0;
    defparam \state[0]~FF .D_POLARITY = 1'b1;
    defparam \state[0]~FF .SR_SYNC = 1'b0;
    defparam \state[0]~FF .SR_VALUE = 1'b0;
    defparam \state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \button_sync[0]~FF  (.D(button), .CE(1'b1), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(\button_sync[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \button_sync[0]~FF .CLK_POLARITY = 1'b1;
    defparam \button_sync[0]~FF .CE_POLARITY = 1'b1;
    defparam \button_sync[0]~FF .SR_POLARITY = 1'b0;
    defparam \button_sync[0]~FF .D_POLARITY = 1'b0;
    defparam \button_sync[0]~FF .SR_SYNC = 1'b0;
    defparam \button_sync[0]~FF .SR_VALUE = 1'b0;
    defparam \button_sync[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[0]~FF  (.D(n174_2), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[0]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[0]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[0]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start~FF  (.D(n90), .CE(1'b1), .CLK(\clk_c~O ), .SR(rst_n), 
           .Q(tx_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_start~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start~FF .CE_POLARITY = 1'b1;
    defparam \tx_start~FF .SR_POLARITY = 1'b0;
    defparam \tx_start~FF .D_POLARITY = 1'b1;
    defparam \tx_start~FF .SR_SYNC = 1'b0;
    defparam \tx_start~FF .SR_VALUE = 1'b0;
    defparam \tx_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_out_prev~FF  (.D(clk_out), .CE(1'b1), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(clk_out_prev)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \clk_out_prev~FF .CLK_POLARITY = 1'b1;
    defparam \clk_out_prev~FF .CE_POLARITY = 1'b1;
    defparam \clk_out_prev~FF .SR_POLARITY = 1'b0;
    defparam \clk_out_prev~FF .D_POLARITY = 1'b1;
    defparam \clk_out_prev~FF .SR_SYNC = 1'b0;
    defparam \clk_out_prev~FF .SR_VALUE = 1'b0;
    defparam \clk_out_prev~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \button_clean~FF  (.D(\equal_5/n5 ), .CE(ceg_net8), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(button_clean)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \button_clean~FF .CLK_POLARITY = 1'b1;
    defparam \button_clean~FF .CE_POLARITY = 1'b0;
    defparam \button_clean~FF .SR_POLARITY = 1'b0;
    defparam \button_clean~FF .D_POLARITY = 1'b0;
    defparam \button_clean~FF .SR_SYNC = 1'b0;
    defparam \button_clean~FF .SR_VALUE = 1'b0;
    defparam \button_clean~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[0]~FF  (.D(tx_data[0]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bit_idx[0]~FF  (.D(\uart_tx_i/n160 [0]), .CE(ceg_net38), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/state[0]~FF  (.D(\uart_tx_i/state [0]), .CE(ceg_net47), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/state[0]~FF .D_POLARITY = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[0]~FF  (.D(\uart_tx_i/n150 [0]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy~FF  (.D(\uart_tx_i/n139 ), .CE(ceg_net35), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \tx_busy~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy~FF .D_POLARITY = 1'b1;
    defparam \tx_busy~FF .SR_SYNC = 1'b0;
    defparam \tx_busy~FF .SR_VALUE = 1'b0;
    defparam \tx_busy~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\uart_tx_i/n140 ), .CE(ceg_net36), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[1]~FF  (.D(\uart_tx_i/n150 [1]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[2]~FF  (.D(\uart_tx_i/n150 [2]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[3]~FF  (.D(\uart_tx_i/n150 [3]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[4]~FF  (.D(\uart_tx_i/n150 [4]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[5]~FF  (.D(\uart_tx_i/n150 [5]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[6]~FF  (.D(\uart_tx_i/n150 [6]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[7]~FF  (.D(\uart_tx_i/n150 [7]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bitcounter[8]~FF  (.D(\uart_tx_i/n150 [8]), .CE(ceg_net15), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[1]~FF  (.D(tx_data[1]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[2]~FF  (.D(tx_data[2]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[3]~FF  (.D(tx_data[3]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[4]~FF  (.D(tx_data[4]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[5]~FF  (.D(tx_data[5]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[6]~FF  (.D(tx_data[6]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/data_buffer[7]~FF  (.D(tx_data[7]), .CE(\uart_tx_i/n406 ), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bit_idx[1]~FF  (.D(\uart_tx_i/n160 [1]), .CE(ceg_net38), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/bit_idx[2]~FF  (.D(\uart_tx_i/n160 [2]), .CE(ceg_net38), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_i/state[1]~FF  (.D(\uart_tx_i/n136 [1]), .CE(ceg_net47), 
           .CLK(\clk_c~O ), .SR(rst_n), .Q(\uart_tx_i/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \uart_tx_i/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_i/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_i/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_i/state[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_i/state[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_i/state[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_i/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[3]~FF  (.D(\clk_divider_i/n8 [3]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[3]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[3]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[2]~FF  (.D(\clk_divider_i/n8 [2]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[0]~FF  (.D(\clk_divider_i/bitcounter [0]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[0]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[0]~FF .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF  (.D(\clk_divider_i/n8 [1]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_out~FF  (.D(clk_out), .CE(\clk_divider_i/n6 ), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(clk_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_out~FF .CLK_POLARITY = 1'b1;
    defparam \clk_out~FF .CE_POLARITY = 1'b0;
    defparam \clk_out~FF .SR_POLARITY = 1'b0;
    defparam \clk_out~FF .D_POLARITY = 1'b0;
    defparam \clk_out~FF .SR_SYNC = 1'b1;
    defparam \clk_out~FF .SR_VALUE = 1'b0;
    defparam \clk_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[4]~FF  (.D(\clk_divider_i/n8 [4]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[4]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[4]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[5]~FF  (.D(\clk_divider_i/n8 [5]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[5]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[5]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[6]~FF  (.D(\clk_divider_i/n8 [6]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[6]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[6]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[7]~FF  (.D(\clk_divider_i/n8 [7]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[7]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[7]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[8]~FF  (.D(\clk_divider_i/n8 [8]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[8]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[8]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[9]~FF  (.D(\clk_divider_i/n8 [9]), .CE(1'b1), 
           .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[9]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[9]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[9]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[9]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[9]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[10]~FF  (.D(\clk_divider_i/n8 [10]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[10]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[10]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[10]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[10]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[10]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[11]~FF  (.D(\clk_divider_i/n8 [11]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[11]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[11]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[11]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[11]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[11]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[12]~FF  (.D(\clk_divider_i/n8 [12]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[12]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[12]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[12]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[12]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[12]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[13]~FF  (.D(\clk_divider_i/n8 [13]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[13]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[14]~FF  (.D(\clk_divider_i/n8 [14]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[14]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[14]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[14]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[14]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[14]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[15]~FF  (.D(\clk_divider_i/n8 [15]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[15]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[15]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[15]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[15]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[15]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[16]~FF  (.D(\clk_divider_i/n8 [16]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[16]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[17]~FF  (.D(\clk_divider_i/n8 [17]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[17]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[17]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[17]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[17]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[17]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[18]~FF  (.D(\clk_divider_i/n8 [18]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[18]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[18]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[18]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[18]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[18]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[19]~FF  (.D(\clk_divider_i/n8 [19]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[19]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[19]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[19]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[19]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[19]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[20]~FF  (.D(\clk_divider_i/n8 [20]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[20]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[20]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[20]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[20]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[20]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[20]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[21]~FF  (.D(\clk_divider_i/n8 [21]), 
           .CE(1'b1), .CLK(\clk_c~O ), .SR(\clk_divider_i/n129 ), .Q(\clk_divider_i/bitcounter [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[21]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[21]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[21]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[21]~FF .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[21]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[21]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[1]~FF  (.D(n178_2), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[1]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[1]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[2]~FF  (.D(n180_2), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[2]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[2]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[3]~FF  (.D(n182_2), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[3]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[3]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[3]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[4]~FF  (.D(n184), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[4]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[4]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[4]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[5]~FF  (.D(n186), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[5]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[5]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[5]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[6]~FF  (.D(n188), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[6]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[6]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[6]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data[7]~FF  (.D(n190), .CE(ceg_net25), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(tx_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \tx_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data[7]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data[7]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data[7]~FF .SR_SYNC = 1'b0;
    defparam \tx_data[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \button_sync[1]~FF  (.D(\button_sync[0] ), .CE(1'b1), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(\button_sync[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \button_sync[1]~FF .CLK_POLARITY = 1'b1;
    defparam \button_sync[1]~FF .CE_POLARITY = 1'b1;
    defparam \button_sync[1]~FF .SR_POLARITY = 1'b0;
    defparam \button_sync[1]~FF .D_POLARITY = 1'b1;
    defparam \button_sync[1]~FF .SR_SYNC = 1'b0;
    defparam \button_sync[1]~FF .SR_VALUE = 1'b0;
    defparam \button_sync[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \button_sync[2]~FF  (.D(\button_sync[1] ), .CE(1'b1), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(\button_sync[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \button_sync[2]~FF .CLK_POLARITY = 1'b1;
    defparam \button_sync[2]~FF .CE_POLARITY = 1'b1;
    defparam \button_sync[2]~FF .SR_POLARITY = 1'b0;
    defparam \button_sync[2]~FF .D_POLARITY = 1'b1;
    defparam \button_sync[2]~FF .SR_SYNC = 1'b0;
    defparam \button_sync[2]~FF .SR_VALUE = 1'b0;
    defparam \button_sync[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[1]~FF  (.D(n87[1]), .CE(ceg_net44), .CLK(\clk_c~O ), 
           .SR(rst_n), .Q(state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(110)
    defparam \state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \state[1]~FF .CE_POLARITY = 1'b0;
    defparam \state[1]~FF .SR_POLARITY = 1'b0;
    defparam \state[1]~FF .D_POLARITY = 1'b1;
    defparam \state[1]~FF .SR_SYNC = 1'b0;
    defparam \state[1]~FF .SR_VALUE = 1'b0;
    defparam \state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i1  (.I0(\clk_divider_i/bitcounter [1]), 
            .I1(\clk_divider_i/bitcounter [0]), .CI(1'b0), .O(\clk_divider_i/n8 [1]), 
            .CO(\clk_divider_i/add_18/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i1 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i21  (.I0(\clk_divider_i/bitcounter [21]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n40 ), .O(\clk_divider_i/n8 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i21 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i20  (.I0(\clk_divider_i/bitcounter [20]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n38 ), .O(\clk_divider_i/n8 [20]), 
            .CO(\clk_divider_i/add_18/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i20 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i19  (.I0(\clk_divider_i/bitcounter [19]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n36 ), .O(\clk_divider_i/n8 [19]), 
            .CO(\clk_divider_i/add_18/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i19 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i18  (.I0(\clk_divider_i/bitcounter [18]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n34 ), .O(\clk_divider_i/n8 [18]), 
            .CO(\clk_divider_i/add_18/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i18 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i17  (.I0(\clk_divider_i/bitcounter [17]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n32 ), .O(\clk_divider_i/n8 [17]), 
            .CO(\clk_divider_i/add_18/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i17 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i16  (.I0(\clk_divider_i/bitcounter [16]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n30 ), .O(\clk_divider_i/n8 [16]), 
            .CO(\clk_divider_i/add_18/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i16 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i15  (.I0(\clk_divider_i/bitcounter [15]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n28 ), .O(\clk_divider_i/n8 [15]), 
            .CO(\clk_divider_i/add_18/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i15 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i14  (.I0(\clk_divider_i/bitcounter [14]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n26 ), .O(\clk_divider_i/n8 [14]), 
            .CO(\clk_divider_i/add_18/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i14 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i13  (.I0(\clk_divider_i/bitcounter [13]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n24 ), .O(\clk_divider_i/n8 [13]), 
            .CO(\clk_divider_i/add_18/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i13 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i12  (.I0(\clk_divider_i/bitcounter [12]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n22 ), .O(\clk_divider_i/n8 [12]), 
            .CO(\clk_divider_i/add_18/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i12 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i11  (.I0(\clk_divider_i/bitcounter [11]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n20 ), .O(\clk_divider_i/n8 [11]), 
            .CO(\clk_divider_i/add_18/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i11 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i10  (.I0(\clk_divider_i/bitcounter [10]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n18 ), .O(\clk_divider_i/n8 [10]), 
            .CO(\clk_divider_i/add_18/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i10 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i9  (.I0(\clk_divider_i/bitcounter [9]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n16 ), .O(\clk_divider_i/n8 [9]), 
            .CO(\clk_divider_i/add_18/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i9 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i8  (.I0(\clk_divider_i/bitcounter [8]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n14 ), .O(\clk_divider_i/n8 [8]), 
            .CO(\clk_divider_i/add_18/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i8 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i7  (.I0(\clk_divider_i/bitcounter [7]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n12 ), .O(\clk_divider_i/n8 [7]), 
            .CO(\clk_divider_i/add_18/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i7 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i6  (.I0(\clk_divider_i/bitcounter [6]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n10 ), .O(\clk_divider_i/n8 [6]), 
            .CO(\clk_divider_i/add_18/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i6 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i5  (.I0(\clk_divider_i/bitcounter [5]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n8 ), .O(\clk_divider_i/n8 [5]), 
            .CO(\clk_divider_i/add_18/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i5 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i4  (.I0(\clk_divider_i/bitcounter [4]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n6 ), .O(\clk_divider_i/n8 [4]), 
            .CO(\clk_divider_i/add_18/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i4 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i3  (.I0(\clk_divider_i/bitcounter [3]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n4 ), .O(\clk_divider_i/n8 [3]), 
            .CO(\clk_divider_i/add_18/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i3 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i2  (.I0(\clk_divider_i/bitcounter [2]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n2 ), .O(\clk_divider_i/n8 [2]), 
            .CO(\clk_divider_i/add_18/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i2 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i2 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__335 (.I0(clk_out_prev), .I1(tx_busy), .I2(clk_out), 
            .O(n153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__335.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__336 (.I0(tx_data[0]), .I1(tx_data[1]), .I2(tx_data[2]), 
            .I3(tx_data[3]), .O(n154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__336.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__337 (.I0(state[0]), .I1(tx_data[4]), .I2(tx_data[5]), 
            .I3(tx_data[6]), .O(n155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__337.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__338 (.I0(tx_data[7]), .I1(n153), .I2(n154), .I3(n155), 
            .O(n156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__338.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__339 (.I0(clk_out_prev), .I1(clk_out), .O(n157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__339.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__340 (.I0(n156), .I1(n152), .I2(n157), .I3(state[1]), 
            .O(ceg_net44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    defparam LUT__340.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__341 (.I0(tx_data[0]), .I1(state[0]), .O(n174_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__341.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__342 (.I0(n153), .I1(state[0]), .I2(state[1]), .O(ceg_net25)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(32)
    defparam LUT__342.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__343 (.I0(state[0]), .I1(n153), .O(n90)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(100)
    defparam LUT__343.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__344 (.I0(\button_sync[0] ), .I1(\button_sync[1] ), .I2(\button_sync[2] ), 
            .O(\equal_5/n5 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(75)
    defparam LUT__344.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__345 (.I0(\button_sync[0] ), .I1(\button_sync[1] ), .I2(\button_sync[2] ), 
            .O(ceg_net8)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__345.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__346 (.I0(\uart_tx_i/state [0]), .I1(\uart_tx_i/state [1]), 
            .I2(tx_start), .O(\uart_tx_i/n406 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(36)
    defparam LUT__346.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__347 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/state [1]), 
            .O(\uart_tx_i/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__347.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__348 (.I0(\uart_tx_i/bitcounter [5]), .I1(\uart_tx_i/bitcounter [6]), 
            .I2(\uart_tx_i/bitcounter [7]), .I3(\uart_tx_i/bitcounter [8]), 
            .O(n158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__348.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__349 (.I0(\uart_tx_i/bit_idx [2]), .I1(\uart_tx_i/bit_idx [0]), 
            .I2(\uart_tx_i/bit_idx [1]), .I3(\uart_tx_i/state [0]), .O(n159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__349.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__350 (.I0(n159), .I1(\uart_tx_i/state [1]), .I2(n158), 
            .I3(\uart_tx_i/n406 ), .O(ceg_net38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__350.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__351 (.I0(tx_start), .I1(\uart_tx_i/state [0]), .I2(\uart_tx_i/state [1]), 
            .O(ceg_net15)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(21)
    defparam LUT__351.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__352 (.I0(\uart_tx_i/state [1]), .I1(\uart_tx_i/state [0]), 
            .I2(n158), .O(n160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__352.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__353 (.I0(n159), .I1(\uart_tx_i/state [1]), .I2(ceg_net15), 
            .I3(n160), .O(ceg_net47)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(21)
    defparam LUT__353.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__354 (.I0(\uart_tx_i/bitcounter [0]), .I1(n160), .O(\uart_tx_i/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__354.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__355 (.I0(\uart_tx_i/state [1]), .I1(tx_start), .O(\uart_tx_i/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__355.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__356 (.I0(\uart_tx_i/state [0]), .I1(\uart_tx_i/state [1]), 
            .O(\uart_tx_i/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__356.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__357 (.I0(n160), .I1(\uart_tx_i/n136 [1]), .O(ceg_net35)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(32)
    defparam LUT__357.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__358 (.I0(\uart_tx_i/data_buffer [6]), .I1(\uart_tx_i/data_buffer [2]), 
            .I2(\uart_tx_i/bit_idx [2]), .O(n161)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__358.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__359 (.I0(\uart_tx_i/data_buffer [7]), .I1(\uart_tx_i/data_buffer [3]), 
            .I2(\uart_tx_i/bit_idx [2]), .O(n162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__359.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__360 (.I0(n162), .I1(n161), .I2(\uart_tx_i/bit_idx [0]), 
            .I3(\uart_tx_i/bit_idx [1]), .O(n163)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf53f */ ;
    defparam LUT__360.LUTMASK = 16'hf53f;
    EFX_LUT4 LUT__361 (.I0(\uart_tx_i/data_buffer [1]), .I1(\uart_tx_i/data_buffer [5]), 
            .I2(\uart_tx_i/bit_idx [0]), .I3(\uart_tx_i/bit_idx [2]), .O(n164)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc0a */ ;
    defparam LUT__361.LUTMASK = 16'hfc0a;
    EFX_LUT4 LUT__362 (.I0(\uart_tx_i/data_buffer [4]), .I1(n164), .I2(\uart_tx_i/bit_idx [0]), 
            .I3(\uart_tx_i/bit_idx [1]), .O(n165)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1003 */ ;
    defparam LUT__362.LUTMASK = 16'h1003;
    EFX_LUT4 LUT__363 (.I0(\uart_tx_i/data_buffer [0]), .I1(tx_start), .I2(\uart_tx_i/state [0]), 
            .O(n166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__363.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__364 (.I0(n165), .I1(n163), .I2(n166), .I3(\uart_tx_i/state [1]), 
            .O(\uart_tx_i/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h44f0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__364.LUTMASK = 16'h44f0;
    EFX_LUT4 LUT__365 (.I0(\uart_tx_i/state [0]), .I1(n158), .I2(\uart_tx_i/state [1]), 
            .O(ceg_net36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__365.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__366 (.I0(\uart_tx_i/bitcounter [0]), .I1(\uart_tx_i/bitcounter [1]), 
            .I2(n160), .O(\uart_tx_i/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__366.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__367 (.I0(\uart_tx_i/bitcounter [0]), .I1(\uart_tx_i/bitcounter [1]), 
            .O(n167)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__367.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__368 (.I0(\uart_tx_i/bitcounter [2]), .I1(n167), .I2(n160), 
            .O(\uart_tx_i/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__368.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__369 (.I0(\uart_tx_i/bitcounter [2]), .I1(n167), .I2(\uart_tx_i/bitcounter [3]), 
            .I3(n160), .O(\uart_tx_i/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__369.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__370 (.I0(\uart_tx_i/bitcounter [0]), .I1(\uart_tx_i/bitcounter [1]), 
            .I2(\uart_tx_i/bitcounter [2]), .I3(\uart_tx_i/bitcounter [3]), 
            .O(n168)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__370.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__371 (.I0(\uart_tx_i/bitcounter [4]), .I1(n168), .I2(n160), 
            .O(\uart_tx_i/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__371.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__372 (.I0(\uart_tx_i/bitcounter [4]), .I1(n168), .I2(\uart_tx_i/bitcounter [5]), 
            .I3(n160), .O(\uart_tx_i/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__372.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__373 (.I0(\uart_tx_i/bitcounter [4]), .I1(\uart_tx_i/bitcounter [5]), 
            .I2(n168), .O(n169)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__373.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__374 (.I0(\uart_tx_i/bitcounter [6]), .I1(n169), .I2(n160), 
            .O(\uart_tx_i/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__374.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__375 (.I0(\uart_tx_i/bitcounter [4]), .I1(\uart_tx_i/bitcounter [5]), 
            .I2(\uart_tx_i/bitcounter [6]), .I3(n168), .O(n170)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__375.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__376 (.I0(\uart_tx_i/bitcounter [7]), .I1(n170), .I2(n160), 
            .O(\uart_tx_i/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__376.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__377 (.I0(\uart_tx_i/bitcounter [7]), .I1(n170), .I2(\uart_tx_i/bitcounter [8]), 
            .I3(n160), .O(\uart_tx_i/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__377.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__378 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/bit_idx [1]), 
            .I2(\uart_tx_i/state [1]), .O(\uart_tx_i/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__378.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__379 (.I0(\uart_tx_i/bit_idx [0]), .I1(\uart_tx_i/bit_idx [1]), 
            .I2(\uart_tx_i/bit_idx [2]), .I3(\uart_tx_i/state [1]), .O(\uart_tx_i/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__379.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__380 (.I0(\clk_divider_i/bitcounter [2]), .I1(\clk_divider_i/bitcounter [3]), 
            .I2(\clk_divider_i/bitcounter [4]), .O(n171)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__380.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__381 (.I0(\clk_divider_i/bitcounter [5]), .I1(\clk_divider_i/bitcounter [8]), 
            .I2(\clk_divider_i/bitcounter [9]), .O(n172)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__381.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__382 (.I0(\clk_divider_i/bitcounter [7]), .I1(\clk_divider_i/bitcounter [6]), 
            .I2(\clk_divider_i/bitcounter [8]), .I3(\clk_divider_i/bitcounter [9]), 
            .O(n173)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__382.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__383 (.I0(\clk_divider_i/bitcounter [10]), .I1(\clk_divider_i/bitcounter [11]), 
            .I2(\clk_divider_i/bitcounter [12]), .O(n174)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__383.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__384 (.I0(n172), .I1(n171), .I2(n173), .I3(n174), .O(n175)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__384.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__385 (.I0(\clk_divider_i/bitcounter [18]), .I1(\clk_divider_i/bitcounter [19]), 
            .O(n176)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__385.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__386 (.I0(\clk_divider_i/bitcounter [13]), .I1(\clk_divider_i/bitcounter [16]), 
            .I2(n176), .O(n177)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__386.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__387 (.I0(\clk_divider_i/bitcounter [15]), .I1(\clk_divider_i/bitcounter [14]), 
            .I2(\clk_divider_i/bitcounter [16]), .I3(\clk_divider_i/bitcounter [17]), 
            .O(n178)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__387.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__388 (.I0(n178), .I1(n176), .I2(\clk_divider_i/bitcounter [20]), 
            .I3(\clk_divider_i/bitcounter [21]), .O(n179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__388.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__389 (.I0(n175), .I1(n177), .I2(n179), .I3(rst_n), 
            .O(\clk_divider_i/n129 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(52)
    defparam LUT__389.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__390 (.I0(n175), .I1(n177), .I2(n179), .O(\clk_divider_i/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(43)
    defparam LUT__390.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__391 (.I0(tx_data[0]), .I1(tx_data[1]), .I2(state[0]), 
            .O(n178_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__391.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__392 (.I0(tx_data[0]), .I1(tx_data[1]), .O(n180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__392.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__393 (.I0(tx_data[2]), .I1(n180), .I2(state[0]), .O(n180_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__393.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__394 (.I0(tx_data[2]), .I1(n180), .I2(tx_data[3]), .I3(state[0]), 
            .O(n182_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__394.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__395 (.I0(tx_data[0]), .I1(tx_data[1]), .I2(tx_data[2]), 
            .I3(tx_data[3]), .O(n181)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__395.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__396 (.I0(tx_data[4]), .I1(n181), .I2(state[0]), .O(n184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__396.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__397 (.I0(tx_data[4]), .I1(n181), .I2(tx_data[5]), .I3(state[0]), 
            .O(n186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__397.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__398 (.I0(tx_data[4]), .I1(tx_data[5]), .I2(n181), .O(n182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__398.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__399 (.I0(tx_data[6]), .I1(n182), .I2(state[0]), .O(n188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6f6f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__399.LUTMASK = 16'h6f6f;
    EFX_LUT4 LUT__400 (.I0(tx_data[6]), .I1(n182), .I2(tx_data[7]), .I3(state[0]), 
            .O(n190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__400.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__401 (.I0(state[1]), .I1(state[0]), .O(n87[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(109)
    defparam LUT__401.LUTMASK = 16'h4444;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_c), .O(\clk_c~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_86c7a69a_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_86c7a69a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_86c7a69a_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_86c7a69a_0
// module not written out since it is a black box. 
//

