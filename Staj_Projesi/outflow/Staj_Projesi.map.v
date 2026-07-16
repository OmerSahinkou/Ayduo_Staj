
//
// Verific Verilog Description of module top
//

module top (clk_i, rst_n_i, pwm_out, rx, tx) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(11)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(12)
    output pwm_out /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(13)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(14)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(15)
    
    wire n67;
    wire n55;
    wire [7:0]rx_buffer;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(89)
    wire [19:0]\Inst_pwm_servo/n55 ;
    
    wire \Inst_pwm_servo/add_19/n2 , tx_start_sig, clk_out_last;
    wire [7:0]angle_reg;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(77)
    wire [3:0]\Inst_uart_rx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(28)
    wire [1:0]\Inst_uart_rx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(26)
    wire [8:0]\Inst_uart_rx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(27)
    wire [7:0]rx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(83)
    
    wire rx_valid;
    wire [7:0]\Inst_uart_rx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(29)
    
    wire \Inst_uart_rx/rx_sync1 , \Inst_uart_rx/rx_sync2 , \Inst_pwm_servo/n5 , 
        \Inst_pwm_servo/n6 , \Inst_pwm_servo/n7 , \Inst_pwm_servo/n8 , 
        \Inst_pwm_servo/n9 , \Inst_pwm_servo/n10 , \Inst_pwm_servo/n11 , 
        \Inst_pwm_servo/n12 , \Inst_pwm_servo/n13 , \Inst_pwm_servo/n14 , 
        \Inst_pwm_servo/n15 , \Inst_pwm_servo/n16 , \Inst_pwm_servo/n17 , 
        \Inst_pwm_servo/n18 , \Inst_pwm_servo/n19 , \Inst_pwm_servo/n20 , 
        \Inst_pwm_servo/n21 ;
    wire [19:0]\Inst_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(19)
    
    wire \Inst_pwm_servo/add_19/n4 ;
    wire [18:0]\Inst_clk_divider/n8 ;
    
    wire \Inst_clk_divider/add_18/n2 ;
    wire [19:0]\Inst_pwm_servo/counterInst_pwm_servo/counter[18]_q ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(19)
    
    wire \Inst_clk_divider/add_18/n34 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(29)
    
    wire \Inst_clk_divider/add_18/n32 , \Inst_clk_divider/add_18/n30 , \Inst_clk_divider/add_18/n28 , 
        \Inst_clk_divider/add_18/n26 , \Inst_clk_divider/add_18/n24 , \Inst_clk_divider/add_18/n22 , 
        \Inst_clk_divider/add_18/n20 , \Inst_clk_divider/add_18/n18 , \Inst_pwm_servo/add_19/n6 , 
        \Inst_clk_divider/add_18/n16 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(32)
    wire [8:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(27)
    
    wire \Inst_clk_divider/add_18/n14 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(28)
    
    wire tx_busy_sig, \Inst_clk_divider/add_18/n12 , \clk_i~O , \Inst_clk_divider/add_18/n10 , 
        \Inst_clk_divider/add_18/n8 , \Inst_clk_divider/add_18/n6 , \Inst_clk_divider/add_18/n4 , 
        \Inst_pwm_servo/add_19/n36 , \Inst_pwm_servo/add_19/n34 , \Inst_pwm_servo/add_19/n32 , 
        \Inst_pwm_servo/add_19/n30 , \Inst_pwm_servo/add_19/n28 , \Inst_pwm_servo/add_19/n26 , 
        \Inst_pwm_servo/add_19/n24 , \Inst_pwm_servo/add_19/n22 , \Inst_pwm_servo/add_19/n20 , 
        \Inst_pwm_servo/add_19/n18 ;
    wire [18:0]\Inst_clk_divider/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(36)
    
    wire clk_out, \Inst_pwm_servo/add_19/n16 , \Inst_pwm_servo/add_19/n14 , 
        \Inst_pwm_servo/add_19/n12 , \Inst_pwm_servo/add_19/n10 , \Inst_pwm_servo/add_19/n8 ;
    wire [3:0]\Inst_uart_rx/n169 ;
    
    wire ceg_net36, ceg_net59, \Inst_uart_rx/n533 , \Inst_uart_rx/n500 , 
        ceg_net40, \Inst_uart_rx/n558 , \Inst_uart_rx/n321 , \Inst_uart_rx/n326 , 
        \Inst_uart_rx/n331 , \Inst_uart_rx/n336 , \Inst_uart_rx/n341 , 
        \Inst_uart_rx/n346 , \Inst_uart_rx/n351 , \Inst_uart_rx/n356 , 
        \Inst_uart_rx/n513 , \Inst_uart_rx/n556 , \Inst_uart_rx/n537 , 
        \Inst_uart_rx/n560 , \Inst_uart_rx/n541 , \Inst_uart_rx/n543 , 
        \Inst_uart_rx/n545 ;
    wire [1:0]\Inst_uart_rx/n166 ;
    wire [19:0]\Inst_pwm_servo/n76 ;
    
    wire \Inst_uart_tx/n404 , ceg_net60;
    wire [8:0]\Inst_uart_tx/n150 ;
    
    wire ceg_net11;
    wire [2:0]\Inst_uart_tx/n160 ;
    
    wire ceg_net46, \Inst_uart_tx/n139 , ceg_net43, \Inst_uart_tx/n140 , 
        ceg_net44;
    wire [1:0]\Inst_uart_tx/n136 ;
    
    wire \Inst_clk_divider/n114 , \Inst_clk_divider/n6 , n287, n288, 
        n289, n290, n291, n292, n293, n294, n295, n296, n297, 
        n298, n299, n300, n301, n302, n303, n304, n305, n306, 
        n307, n308, n309, n310, n311, n312, n313, n314, n315, 
        n316, n317, n318, n319, n320, n321, n322, n323, n324, 
        n325, n326, n327, n328, n329, n330, n331, n332, n333, 
        n334, n335, n336, n337, n338, n339, n340, n341, n342, 
        n343, n344, n345, n346, n347, n348, n349, n350, n351, 
        n352, n353, n354, n355, n356, n357, n358, n359, n360, 
        n361, n362, n363, n364, n365, n366, n367, n368, n369, 
        n370, n371, n372, n373, n374, n375, n376, n377, n378, 
        n379, n380;
    wire [19:0]\Inst_pwm_servo/counterInst_pwm_servo/counter[19]_q ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(19)
    
    wire n321_q, n329_q, n333_q, n335_q, n341_q, n342_q, n343_q, 
        n345_q, n347_q, n353_q, n354_q, n356_q, n358_q;
    
    EFX_LUT4 LUT__627 (.I0(clk_out_last), .I1(clk_out), .O(n55)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(166)
    defparam LUT__627.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__628 (.I0(tx_busy_sig), .I1(n55), .O(n67)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(173)
    defparam LUT__628.LUTMASK = 16'h4444;
    EFX_FF \rx_buffer[0]~FF  (.D(rx_data_sig[0]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(n67), .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_out_last~FF  (.D(clk_out), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(clk_out_last)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \clk_out_last~FF .CLK_POLARITY = 1'b1;
    defparam \clk_out_last~FF .CE_POLARITY = 1'b1;
    defparam \clk_out_last~FF .SR_POLARITY = 1'b0;
    defparam \clk_out_last~FF .D_POLARITY = 1'b1;
    defparam \clk_out_last~FF .SR_SYNC = 1'b0;
    defparam \clk_out_last~FF .SR_VALUE = 1'b0;
    defparam \clk_out_last~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[0]~FF  (.D(rx_buffer[0]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bit_idx[0]~FF  (.D(\Inst_uart_rx/n169 [0]), .CE(ceg_net36), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/state[0]~FF  (.D(\Inst_uart_rx/state [0]), .CE(ceg_net59), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[0]~FF  (.D(\Inst_uart_rx/bitcounter [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[0]~FF  (.D(\Inst_uart_rx/data_buffer [0]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[0]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_valid~FF  (.D(\Inst_uart_rx/state [1]), .CE(ceg_net40), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_valid~FF .CLK_POLARITY = 1'b1;
    defparam \rx_valid~FF .CE_POLARITY = 1'b0;
    defparam \rx_valid~FF .SR_POLARITY = 1'b0;
    defparam \rx_valid~FF .D_POLARITY = 1'b1;
    defparam \rx_valid~FF .SR_SYNC = 1'b1;
    defparam \rx_valid~FF .SR_VALUE = 1'b0;
    defparam \rx_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[0]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n558 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/rx_sync1~FF  (.D(rx), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(\Inst_uart_rx/rx_sync1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/rx_sync1~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync1~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/rx_sync1~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/rx_sync2~FF  (.D(\Inst_uart_rx/rx_sync1 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/rx_sync2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/rx_sync2~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/rx_sync2~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[1]~FF  (.D(\Inst_uart_rx/n321 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[2]~FF  (.D(\Inst_uart_rx/n326 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[3]~FF  (.D(\Inst_uart_rx/n331 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[4]~FF  (.D(\Inst_uart_rx/n336 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[5]~FF  (.D(\Inst_uart_rx/n341 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[6]~FF  (.D(\Inst_uart_rx/n346 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[7]~FF  (.D(\Inst_uart_rx/n351 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[8]~FF  (.D(\Inst_uart_rx/n356 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_uart_rx/n533 ), .Q(\Inst_uart_rx/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[1]~FF  (.D(\Inst_uart_rx/data_buffer [1]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[1]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[2]~FF  (.D(\Inst_uart_rx/data_buffer [2]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[2]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[3]~FF  (.D(\Inst_uart_rx/data_buffer [3]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[3]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[4]~FF  (.D(\Inst_uart_rx/data_buffer [4]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[4]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[5]~FF  (.D(\Inst_uart_rx/data_buffer [5]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[5]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[6]~FF  (.D(\Inst_uart_rx/data_buffer [6]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[6]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[7]~FF  (.D(\Inst_uart_rx/data_buffer [7]), .CE(\Inst_uart_rx/n500 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \rx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[7]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[1]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n513 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[1]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[2]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n556 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[2]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[3]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n537 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[3]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[4]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n560 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[5]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n541 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[6]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n543 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[7]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n545 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[7]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bit_idx[1]~FF  (.D(\Inst_uart_rx/n169 [1]), .CE(ceg_net36), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bit_idx[2]~FF  (.D(\Inst_uart_rx/n169 [2]), .CE(ceg_net36), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/state[1]~FF  (.D(\Inst_uart_rx/n166 [1]), .CE(ceg_net59), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(99)
    defparam \Inst_uart_rx/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/state[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[4]~FF  (.D(\Inst_pwm_servo/n76 [4]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[3]~FF  (.D(\Inst_pwm_servo/n76 [3]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[5]~FF  (.D(\Inst_pwm_servo/n76 [5]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[6]~FF  (.D(\Inst_pwm_servo/n76 [6]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[2]~FF  (.D(\Inst_pwm_servo/n76 [2]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[1]~FF  (.D(\Inst_pwm_servo/n76 [1]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[0]~FF  (.D(\Inst_pwm_servo/n76 [0]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_3_brt_4  (.D(\Inst_pwm_servo/counter [18]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counterInst_pwm_servo/counter[18]_q [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_3_brt_4 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_4 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_4 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_4 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_4 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_4 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_4 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[7]~FF  (.D(\Inst_pwm_servo/n76 [7]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[8]~FF  (.D(\Inst_pwm_servo/n76 [8]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[9]~FF  (.D(\Inst_pwm_servo/n76 [9]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[10]~FF  (.D(\Inst_pwm_servo/n76 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[11]~FF  (.D(\Inst_pwm_servo/n76 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[12]~FF  (.D(\Inst_pwm_servo/n76 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[13]~FF  (.D(\Inst_pwm_servo/n76 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[14]~FF  (.D(\Inst_pwm_servo/n76 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[15]~FF  (.D(\Inst_pwm_servo/n76 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[16]~FF  (.D(\Inst_pwm_servo/n76 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[17]~FF  (.D(\Inst_pwm_servo/n76 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[18]~FF  (.D(\Inst_pwm_servo/n76 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[19]~FF  (.D(\Inst_pwm_servo/n76 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \Inst_pwm_servo/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[0]~FF  (.D(angle_reg[0]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net60), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n150 [0]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n160 [0]), .CE(ceg_net46), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n139 ), .CE(ceg_net43), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_busy_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \tx_busy_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_busy_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_busy_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n140 ), .CE(ceg_net44), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n150 [1]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n150 [2]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n150 [3]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n150 [4]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n150 [5]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[6]~FF  (.D(\Inst_uart_tx/n150 [6]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[7]~FF  (.D(\Inst_uart_tx/n150 [7]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[8]~FF  (.D(\Inst_uart_tx/n150 [8]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[1]~FF  (.D(angle_reg[1]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[2]~FF  (.D(angle_reg[2]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[3]~FF  (.D(angle_reg[3]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[4]~FF  (.D(angle_reg[4]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[5]~FF  (.D(angle_reg[5]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[6]~FF  (.D(angle_reg[6]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[7]~FF  (.D(angle_reg[7]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n160 [1]), .CE(ceg_net46), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n160 [2]), .CE(ceg_net46), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net60), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(95)
    defparam \Inst_uart_tx/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[3]~FF  (.D(\Inst_clk_divider/n8 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[2]~FF  (.D(\Inst_clk_divider/n8 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[0]~FF  (.D(\Inst_clk_divider/bitcounter [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[1]~FF  (.D(\Inst_clk_divider/n8 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_out~FF  (.D(clk_out), .CE(\Inst_clk_divider/n6 ), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(clk_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \clk_out~FF .CLK_POLARITY = 1'b1;
    defparam \clk_out~FF .CE_POLARITY = 1'b0;
    defparam \clk_out~FF .SR_POLARITY = 1'b0;
    defparam \clk_out~FF .D_POLARITY = 1'b0;
    defparam \clk_out~FF .SR_SYNC = 1'b1;
    defparam \clk_out~FF .SR_VALUE = 1'b0;
    defparam \clk_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[4]~FF  (.D(\Inst_clk_divider/n8 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[5]~FF  (.D(\Inst_clk_divider/n8 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[6]~FF  (.D(\Inst_clk_divider/n8 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[7]~FF  (.D(\Inst_clk_divider/n8 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[8]~FF  (.D(\Inst_clk_divider/n8 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[9]~FF  (.D(\Inst_clk_divider/n8 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[10]~FF  (.D(\Inst_clk_divider/n8 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[11]~FF  (.D(\Inst_clk_divider/n8 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[12]~FF  (.D(\Inst_clk_divider/n8 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[13]~FF  (.D(\Inst_clk_divider/n8 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[14]~FF  (.D(\Inst_clk_divider/n8 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[15]~FF  (.D(\Inst_clk_divider/n8 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[16]~FF  (.D(\Inst_clk_divider/n8 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[17]~FF  (.D(\Inst_clk_divider/n8 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[17]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_clk_divider/bitcounter[18]~FF  (.D(\Inst_clk_divider/n8 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_clk_divider/n114 ), .Q(\Inst_clk_divider/bitcounter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(50)
    defparam \Inst_clk_divider/bitcounter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_clk_divider/bitcounter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_clk_divider/bitcounter[18]~FF .SR_SYNC = 1'b1;
    defparam \Inst_clk_divider/bitcounter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_clk_divider/bitcounter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[1]~FF  (.D(rx_data_sig[1]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[2]~FF  (.D(rx_data_sig[2]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[3]~FF  (.D(rx_data_sig[3]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[4]~FF  (.D(rx_data_sig[4]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[5]~FF  (.D(rx_data_sig[5]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[6]~FF  (.D(rx_data_sig[6]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_buffer[7]~FF  (.D(rx_data_sig[7]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_buffer[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \rx_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \rx_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \rx_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[1]~FF  (.D(rx_buffer[1]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[2]~FF  (.D(rx_buffer[2]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[3]~FF  (.D(rx_buffer[3]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[4]~FF  (.D(rx_buffer[4]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[5]~FF  (.D(rx_buffer[5]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[6]~FF  (.D(rx_buffer[6]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[7]~FF  (.D(rx_buffer[7]), .CE(n55), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    defparam \angle_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i1  (.I0(\Inst_pwm_servo/counter [1]), 
            .I1(\Inst_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo/n55 [1]), 
            .CO(\Inst_pwm_servo/add_19/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i2  (.I0(\Inst_pwm_servo/counter [2]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n2 ), .O(\Inst_pwm_servo/n55 [2]), 
            .CO(\Inst_pwm_servo/add_19/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i1  (.I0(\Inst_clk_divider/bitcounter [1]), 
            .I1(\Inst_clk_divider/bitcounter [0]), .CI(1'b0), .O(\Inst_clk_divider/n8 [1]), 
            .CO(\Inst_clk_divider/add_18/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i18  (.I0(\Inst_clk_divider/bitcounter [18]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n34 ), .O(\Inst_clk_divider/n8 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i17  (.I0(\Inst_clk_divider/bitcounter [17]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n32 ), .O(\Inst_clk_divider/n8 [17]), 
            .CO(\Inst_clk_divider/add_18/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i16  (.I0(\Inst_clk_divider/bitcounter [16]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n30 ), .O(\Inst_clk_divider/n8 [16]), 
            .CO(\Inst_clk_divider/add_18/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i15  (.I0(\Inst_clk_divider/bitcounter [15]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n28 ), .O(\Inst_clk_divider/n8 [15]), 
            .CO(\Inst_clk_divider/add_18/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i14  (.I0(\Inst_clk_divider/bitcounter [14]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n26 ), .O(\Inst_clk_divider/n8 [14]), 
            .CO(\Inst_clk_divider/add_18/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i13  (.I0(\Inst_clk_divider/bitcounter [13]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n24 ), .O(\Inst_clk_divider/n8 [13]), 
            .CO(\Inst_clk_divider/add_18/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i12  (.I0(\Inst_clk_divider/bitcounter [12]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n22 ), .O(\Inst_clk_divider/n8 [12]), 
            .CO(\Inst_clk_divider/add_18/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i11  (.I0(\Inst_clk_divider/bitcounter [11]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n20 ), .O(\Inst_clk_divider/n8 [11]), 
            .CO(\Inst_clk_divider/add_18/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i10  (.I0(\Inst_clk_divider/bitcounter [10]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n18 ), .O(\Inst_clk_divider/n8 [10]), 
            .CO(\Inst_clk_divider/add_18/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i9  (.I0(\Inst_clk_divider/bitcounter [9]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n16 ), .O(\Inst_clk_divider/n8 [9]), 
            .CO(\Inst_clk_divider/add_18/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i3  (.I0(\Inst_pwm_servo/counter [3]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n4 ), .O(\Inst_pwm_servo/n55 [3]), 
            .CO(\Inst_pwm_servo/add_19/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i8  (.I0(\Inst_clk_divider/bitcounter [8]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n14 ), .O(\Inst_clk_divider/n8 [8]), 
            .CO(\Inst_clk_divider/add_18/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i7  (.I0(\Inst_clk_divider/bitcounter [7]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n12 ), .O(\Inst_clk_divider/n8 [7]), 
            .CO(\Inst_clk_divider/add_18/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i6  (.I0(\Inst_clk_divider/bitcounter [6]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n10 ), .O(\Inst_clk_divider/n8 [6]), 
            .CO(\Inst_clk_divider/add_18/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i5  (.I0(\Inst_clk_divider/bitcounter [5]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n8 ), .O(\Inst_clk_divider/n8 [5]), 
            .CO(\Inst_clk_divider/add_18/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i4  (.I0(\Inst_clk_divider/bitcounter [4]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n6 ), .O(\Inst_clk_divider/n8 [4]), 
            .CO(\Inst_clk_divider/add_18/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i3  (.I0(\Inst_clk_divider/bitcounter [3]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n4 ), .O(\Inst_clk_divider/n8 [3]), 
            .CO(\Inst_clk_divider/add_18/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_clk_divider/add_18/i2  (.I0(\Inst_clk_divider/bitcounter [2]), 
            .I1(1'b0), .CI(\Inst_clk_divider/add_18/n2 ), .O(\Inst_clk_divider/n8 [2]), 
            .CO(\Inst_clk_divider/add_18/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(44)
    defparam \Inst_clk_divider/add_18/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_clk_divider/add_18/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i19  (.I0(\Inst_pwm_servo/counter [19]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n36 ), .O(\Inst_pwm_servo/n55 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i18  (.I0(\Inst_pwm_servo/counter [18]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n34 ), .O(\Inst_pwm_servo/n55 [18]), 
            .CO(\Inst_pwm_servo/add_19/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i17  (.I0(\Inst_pwm_servo/counter [17]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n32 ), .O(\Inst_pwm_servo/n55 [17]), 
            .CO(\Inst_pwm_servo/add_19/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i16  (.I0(\Inst_pwm_servo/counter [16]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n30 ), .O(\Inst_pwm_servo/n55 [16]), 
            .CO(\Inst_pwm_servo/add_19/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i15  (.I0(\Inst_pwm_servo/counter [15]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n28 ), .O(\Inst_pwm_servo/n55 [15]), 
            .CO(\Inst_pwm_servo/add_19/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i14  (.I0(\Inst_pwm_servo/counter [14]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n26 ), .O(\Inst_pwm_servo/n55 [14]), 
            .CO(\Inst_pwm_servo/add_19/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i13  (.I0(\Inst_pwm_servo/counter [13]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n24 ), .O(\Inst_pwm_servo/n55 [13]), 
            .CO(\Inst_pwm_servo/add_19/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i12  (.I0(\Inst_pwm_servo/counter [12]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n22 ), .O(\Inst_pwm_servo/n55 [12]), 
            .CO(\Inst_pwm_servo/add_19/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i11  (.I0(\Inst_pwm_servo/counter [11]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n20 ), .O(\Inst_pwm_servo/n55 [11]), 
            .CO(\Inst_pwm_servo/add_19/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i10  (.I0(\Inst_pwm_servo/counter [10]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n18 ), .O(\Inst_pwm_servo/n55 [10]), 
            .CO(\Inst_pwm_servo/add_19/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i9  (.I0(\Inst_pwm_servo/counter [9]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n16 ), .O(\Inst_pwm_servo/n55 [9]), 
            .CO(\Inst_pwm_servo/add_19/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i8  (.I0(\Inst_pwm_servo/counter [8]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n14 ), .O(\Inst_pwm_servo/n55 [8]), 
            .CO(\Inst_pwm_servo/add_19/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i7  (.I0(\Inst_pwm_servo/counter [7]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n12 ), .O(\Inst_pwm_servo/n55 [7]), 
            .CO(\Inst_pwm_servo/add_19/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i6  (.I0(\Inst_pwm_servo/counter [6]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n10 ), .O(\Inst_pwm_servo/n55 [6]), 
            .CO(\Inst_pwm_servo/add_19/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i5  (.I0(\Inst_pwm_servo/counter [5]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n8 ), .O(\Inst_pwm_servo/n55 [5]), 
            .CO(\Inst_pwm_servo/add_19/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_19/i4  (.I0(\Inst_pwm_servo/counter [4]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_19/n6 ), .O(\Inst_pwm_servo/n55 [4]), 
            .CO(\Inst_pwm_servo/add_19/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_19/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_19/i4 .I1_POLARITY = 1'b1;
    EFX_MULT \Inst_pwm_servo/mult_3  (.CLK(\clk_i~O ), .CEA(n55), .RSTA(rst_n_i), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            rx_buffer}), .B({18'b010000010001101011}), .O({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, \Inst_pwm_servo/n5 , \Inst_pwm_servo/n6 , 
            \Inst_pwm_servo/n7 , \Inst_pwm_servo/n8 , \Inst_pwm_servo/n9 , 
            \Inst_pwm_servo/n10 , \Inst_pwm_servo/n11 , \Inst_pwm_servo/n12 , 
            \Inst_pwm_servo/n13 , \Inst_pwm_servo/n14 , \Inst_pwm_servo/n15 , 
            \Inst_pwm_servo/n16 , \Inst_pwm_servo/n17 , \Inst_pwm_servo/n18 , 
            \Inst_pwm_servo/n19 , \Inst_pwm_servo/n20 , \Inst_pwm_servo/n21 , 
            Open_11, Open_12, Open_13, Open_14, Open_15, Open_16, 
            Open_17, Open_18})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b1, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b0, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(29)
    defparam \Inst_pwm_servo/mult_3 .WIDTH = 18;
    defparam \Inst_pwm_servo/mult_3 .A_REG = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .B_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .O_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .RSTA_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .RSTA_SYNC = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .RSTA_VALUE = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .CEB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .RSTB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .RSTB_SYNC = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .RSTB_VALUE = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .CEO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .RSTO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_3 .RSTO_SYNC = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .RSTO_VALUE = 1'b0;
    defparam \Inst_pwm_servo/mult_3 .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__629 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(97)
    defparam LUT__629.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__630 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__630.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__631 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(n287), .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__631.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__632 (.I0(\Inst_uart_rx/rx_sync2 ), .I1(\Inst_uart_rx/state [1]), 
            .I2(\Inst_uart_rx/state [0]), .O(\Inst_uart_rx/n166 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(97)
    defparam LUT__632.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__633 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [6]), 
            .I2(\Inst_uart_rx/bitcounter [7]), .I3(\Inst_uart_rx/bitcounter [5]), 
            .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__633.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__634 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(n289), .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__634.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__635 (.I0(n288), .I1(n290), .I2(\Inst_uart_rx/n166 [1]), 
            .I3(rst_n_i), .O(ceg_net36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__635.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__636 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [1]), 
            .I2(n287), .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__636.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__637 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/state [1]), 
            .I2(\Inst_uart_rx/rx_sync2 ), .I3(rst_n_i), .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__637.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__638 (.I0(\Inst_uart_rx/state [0]), .I1(n291), .I2(n290), 
            .I3(n292), .O(ceg_net59)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(30)
    defparam LUT__638.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__639 (.I0(\Inst_uart_rx/state [1]), .I1(\Inst_uart_rx/state [0]), 
            .I2(n290), .I3(rst_n_i), .O(\Inst_uart_rx/n533 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf1ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__639.LUTMASK = 16'hf1ff;
    EFX_LUT4 LUT__640 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/state [1]), 
            .I2(n290), .O(\Inst_uart_rx/n500 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__640.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__641 (.I0(n290), .I1(\Inst_uart_rx/state [0]), .I2(\Inst_uart_rx/state [1]), 
            .I3(rst_n_i), .O(ceg_net40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(26)
    defparam LUT__641.LUTMASK = 16'h7c00;
    EFX_LUT4 LUT__642 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/n169 [0]), 
            .I2(n290), .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__642.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__643 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n293), .O(\Inst_uart_rx/n558 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__643.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__644 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .O(\Inst_uart_rx/n321 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__644.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__645 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .O(\Inst_uart_rx/n326 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__645.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__646 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .I3(\Inst_uart_rx/bitcounter [3]), 
            .O(\Inst_uart_rx/n331 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__646.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__647 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .I3(\Inst_uart_rx/bitcounter [3]), 
            .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__647.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__648 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(n294), .O(\Inst_uart_rx/n336 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__648.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__649 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(n294), .I2(\Inst_uart_rx/bitcounter [5]), 
            .O(\Inst_uart_rx/n341 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__649.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__650 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [5]), 
            .I2(n294), .I3(\Inst_uart_rx/bitcounter [6]), .O(\Inst_uart_rx/n346 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__650.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__651 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [5]), 
            .I2(\Inst_uart_rx/bitcounter [6]), .I3(n294), .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__651.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__652 (.I0(\Inst_uart_rx/bitcounter [7]), .I1(n295), .O(\Inst_uart_rx/n351 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__652.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__653 (.I0(\Inst_uart_rx/bitcounter [7]), .I1(n295), .I2(\Inst_uart_rx/bitcounter [8]), 
            .O(\Inst_uart_rx/n356 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__653.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__654 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(n290), .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__654.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__655 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n296), .O(\Inst_uart_rx/n513 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__655.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__656 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(n293), .O(\Inst_uart_rx/n556 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__656.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__657 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(n296), .O(\Inst_uart_rx/n537 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__657.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__658 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n293), .O(\Inst_uart_rx/n560 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__658.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__659 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n296), .O(\Inst_uart_rx/n541 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__659.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__660 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [0]), 
            .I2(n287), .I3(n290), .O(\Inst_uart_rx/n543 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__660.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__661 (.I0(n287), .I1(n296), .O(\Inst_uart_rx/n545 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(122)
    defparam LUT__661.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__662 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/state [1]), .O(\Inst_uart_rx/n169 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(97)
    defparam LUT__662.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__663 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(97)
    defparam LUT__663.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__664 (.I0(\Inst_pwm_servo/counter [1]), .I1(\Inst_pwm_servo/counter [0]), 
            .I2(\Inst_pwm_servo/counter [2]), .I3(\Inst_pwm_servo/counter [3]), 
            .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__664.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__665 (.I0(\Inst_pwm_servo/counter [6]), .I1(\Inst_pwm_servo/counter [7]), 
            .I2(\Inst_pwm_servo/counter [8]), .I3(\Inst_pwm_servo/counter [9]), 
            .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__665.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__666 (.I0(\Inst_pwm_servo/counter [4]), .I1(n297), .I2(\Inst_pwm_servo/counter [5]), 
            .I3(n298), .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__666.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__667 (.I0(n299), .I1(\Inst_pwm_servo/counter [10]), .I2(\Inst_pwm_servo/counter [11]), 
            .I3(\Inst_pwm_servo/counter [12]), .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__667.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__668 (.I0(\Inst_pwm_servo/counter [14]), .I1(\Inst_pwm_servo/counter [15]), 
            .I2(\Inst_pwm_servo/counter [16]), .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__668.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__669 (.I0(n300), .I1(\Inst_pwm_servo/counter [13]), .I2(n301), 
            .I3(\Inst_pwm_servo/counter [17]), .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__669.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__670 (.I0(n302), .I1(\Inst_pwm_servo/counter [18]), .I2(\Inst_pwm_servo/counter [19]), 
            .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__670.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__671 (.I0(n303), .I1(\Inst_pwm_servo/n55 [4]), .O(\Inst_pwm_servo/n76 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__671.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__672 (.I0(n303), .I1(\Inst_pwm_servo/n55 [3]), .O(\Inst_pwm_servo/n76 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__672.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__673 (.I0(n303), .I1(\Inst_pwm_servo/n55 [5]), .O(\Inst_pwm_servo/n76 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__673.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__674 (.I0(n303), .I1(\Inst_pwm_servo/n55 [6]), .O(\Inst_pwm_servo/n76 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__674.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__675 (.I0(n303), .I1(\Inst_pwm_servo/n55 [2]), .O(\Inst_pwm_servo/n76 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__675.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__676 (.I0(n303), .I1(\Inst_pwm_servo/n55 [1]), .O(\Inst_pwm_servo/n76 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__676.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__677 (.I0(\Inst_pwm_servo/counter [0]), .I1(n303), .O(\Inst_pwm_servo/n76 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__677.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__678 (.I0(\Inst_pwm_servo/n20 ), .I1(\Inst_pwm_servo/n21 ), 
            .I2(\Inst_pwm_servo/n19 ), .I3(\Inst_pwm_servo/n18 ), .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__678.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__679 (.I0(\Inst_pwm_servo/n17 ), .I1(\Inst_pwm_servo/counter [4]), 
            .I2(n304), .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6969 */ ;
    defparam LUT__679.LUTMASK = 16'h6969;
    EFX_LUT4 LUT__680 (.I0(\Inst_pwm_servo/n20 ), .I1(\Inst_pwm_servo/n21 ), 
            .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__680.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__681 (.I0(n306), .I1(\Inst_pwm_servo/n19 ), .I2(\Inst_pwm_servo/n18 ), 
            .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__681.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__682 (.I0(\Inst_pwm_servo/counter [0]), .I1(\Inst_pwm_servo/counter [1]), 
            .I2(\Inst_pwm_servo/n21 ), .I3(\Inst_pwm_servo/n20 ), .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3107 */ ;
    defparam LUT__682.LUTMASK = 16'h3107;
    EFX_LUT4 LUT__683 (.I0(\Inst_pwm_servo/counter [2]), .I1(n308), .I2(n306), 
            .I3(\Inst_pwm_servo/n19 ), .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bb0 */ ;
    defparam LUT__683.LUTMASK = 16'h0bb0;
    EFX_LUT4 LUT__684 (.I0(n308), .I1(\Inst_pwm_servo/counter [2]), .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__684.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__685 (.I0(\Inst_pwm_servo/counter [3]), .I1(n309), .I2(n310), 
            .I3(n307), .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__685.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__686 (.I0(\Inst_pwm_servo/n17 ), .I1(n304), .I2(\Inst_pwm_servo/n16 ), 
            .I3(\Inst_pwm_servo/n15 ), .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__686.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__687 (.I0(\Inst_pwm_servo/n17 ), .I1(n304), .I2(\Inst_pwm_servo/counter [5]), 
            .I3(\Inst_pwm_servo/n16 ), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h040b */ ;
    defparam LUT__687.LUTMASK = 16'h040b;
    EFX_LUT4 LUT__688 (.I0(\Inst_pwm_servo/counter [4]), .I1(\Inst_pwm_servo/n17 ), 
            .I2(n304), .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__688.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__689 (.I0(n312), .I1(\Inst_pwm_servo/counter [6]), .I2(n313), 
            .I3(n314), .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__689.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__690 (.I0(\Inst_pwm_servo/n17 ), .I1(n304), .I2(\Inst_pwm_servo/n16 ), 
            .I3(\Inst_pwm_servo/counter [5]), .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;
    defparam LUT__690.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__691 (.I0(\Inst_pwm_servo/n15 ), .I1(\Inst_pwm_servo/n16 ), 
            .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__691.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__692 (.I0(\Inst_pwm_servo/n14 ), .I1(\Inst_pwm_servo/counter [7]), 
            .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__692.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__693 (.I0(\Inst_pwm_servo/n17 ), .I1(n304), .I2(n317), 
            .I3(n318), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4fb0 */ ;
    defparam LUT__693.LUTMASK = 16'h4fb0;
    EFX_LUT4 LUT__694 (.I0(\Inst_pwm_servo/counter [6]), .I1(n316), .I2(n312), 
            .I3(n319), .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1700 */ ;
    defparam LUT__694.LUTMASK = 16'h1700;
    EFX_LUT4 LUT__695 (.I0(n311), .I1(n305), .I2(n315), .I3(n320), .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__695.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__696 (.I0(\Inst_pwm_servo/n14 ), .I1(\Inst_pwm_servo/n15 ), 
            .I2(\Inst_pwm_servo/n16 ), .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__696.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__697 (.I0(\Inst_pwm_servo/n17 ), .I1(n304), .I2(n322), 
            .I3(\Inst_pwm_servo/n13 ), .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__697.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__698 (.I0(\Inst_pwm_servo/n17 ), .I1(n304), .I2(n317), 
            .I3(\Inst_pwm_servo/n14 ), .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__698.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__699 (.I0(\Inst_pwm_servo/n13 ), .I1(\Inst_pwm_servo/n17 ), 
            .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__699.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__700 (.I0(\Inst_pwm_servo/n16 ), .I1(\Inst_pwm_servo/n14 ), 
            .I2(\Inst_pwm_servo/n15 ), .I3(\Inst_pwm_servo/n13 ), .O(n326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__700.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__701 (.I0(n304), .I1(n325), .I2(n326), .I3(\Inst_pwm_servo/n12 ), 
            .O(n327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf807 */ ;
    defparam LUT__701.LUTMASK = 16'hf807;
    EFX_LUT4 LUT__702 (.I0(\Inst_pwm_servo/counter [9]), .I1(n327), .I2(\Inst_pwm_servo/counter [7]), 
            .I3(n324), .O(n328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__702.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__703 (.I0(n323), .I1(\Inst_pwm_servo/counter [8]), .I2(n328), 
            .O(n329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__703.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__704 (.I0(n325), .I1(n304), .I2(n326), .I3(\Inst_pwm_servo/n12 ), 
            .O(n330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__704.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__705 (.I0(\Inst_pwm_servo/n11 ), .I1(n330), .O(n331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__705.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__706 (.I0(\Inst_pwm_servo/counter [9]), .I1(n327), .I2(n323), 
            .I3(\Inst_pwm_servo/counter [8]), .O(n332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__706.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__707 (.I0(n331), .I1(\Inst_pwm_servo/counter [10]), .I2(n332), 
            .O(n333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__707.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__708 (.I0(\Inst_pwm_servo/n11 ), .I1(n330), .I2(\Inst_pwm_servo/n10 ), 
            .O(n334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__708.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__709 (.I0(\Inst_pwm_servo/counter [11]), .I1(n334), .I2(\Inst_pwm_servo/counter [10]), 
            .I3(n331), .O(n335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heee0 */ ;
    defparam LUT__709.LUTMASK = 16'heee0;
    EFX_LUT4 LUT__710 (.I0(n321_q), .I1(n329_q), .I2(n333_q), .I3(n335_q), 
            .O(n336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__710.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__711 (.I0(\Inst_pwm_servo/n8 ), .I1(\Inst_pwm_servo/n9 ), 
            .O(n337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__711.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__712 (.I0(\Inst_pwm_servo/n10 ), .I1(\Inst_pwm_servo/n11 ), 
            .I2(\Inst_pwm_servo/n12 ), .O(n338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__712.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__713 (.I0(n325), .I1(n304), .I2(n326), .I3(n338), .O(n339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__713.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__714 (.I0(n337), .I1(n339), .O(n340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__714.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__715 (.I0(\Inst_pwm_servo/n7 ), .I1(n340), .I2(\Inst_pwm_servo/n6 ), 
            .I3(\Inst_pwm_servo/counter [15]), .O(n341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he100 */ ;
    defparam LUT__715.LUTMASK = 16'he100;
    EFX_LUT4 LUT__716 (.I0(n337), .I1(n339), .I2(\Inst_pwm_servo/n7 ), 
            .I3(\Inst_pwm_servo/counter [14]), .O(n342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__716.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__717 (.I0(n334), .I1(\Inst_pwm_servo/counter [11]), .O(n343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__717.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__718 (.I0(\Inst_pwm_servo/n8 ), .I1(\Inst_pwm_servo/counter [13]), 
            .O(n344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__718.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__719 (.I0(\Inst_pwm_servo/counter [12]), .I1(\Inst_pwm_servo/n9 ), 
            .I2(n344), .I3(n339), .O(n345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcb2f */ ;
    defparam LUT__719.LUTMASK = 16'hcb2f;
    EFX_LUT4 LUT__720 (.I0(n341_q), .I1(n342_q), .I2(n343_q), .I3(n345_q), 
            .O(n346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0002 */ ;
    defparam LUT__720.LUTMASK = 16'h0002;
    EFX_LUT4 LUT__721 (.I0(\Inst_pwm_servo/counter [15]), .I1(\Inst_pwm_servo/n6 ), 
            .I2(\Inst_pwm_servo/n7 ), .I3(n342), .O(n347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007d */ ;
    defparam LUT__721.LUTMASK = 16'h007d;
    EFX_LUT4 LUT__722 (.I0(\Inst_pwm_servo/n8 ), .I1(\Inst_pwm_servo/counter [12]), 
            .O(n348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__722.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__723 (.I0(\Inst_pwm_servo/n9 ), .I1(\Inst_pwm_servo/counter [13]), 
            .I2(n348), .I3(n339), .O(n349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__723.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__724 (.I0(\Inst_pwm_servo/n9 ), .I1(\Inst_pwm_servo/counter [13]), 
            .I2(\Inst_pwm_servo/n8 ), .I3(\Inst_pwm_servo/counter [12]), 
            .O(n350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32f3 */ ;
    defparam LUT__724.LUTMASK = 16'h32f3;
    EFX_LUT4 LUT__725 (.I0(\Inst_pwm_servo/n8 ), .I1(\Inst_pwm_servo/n9 ), 
            .I2(n339), .I3(n350), .O(n351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__725.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__726 (.I0(n337), .I1(n339), .I2(\Inst_pwm_servo/counter [14]), 
            .I3(\Inst_pwm_servo/n7 ), .O(n352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0807 */ ;
    defparam LUT__726.LUTMASK = 16'h0807;
    EFX_LUT4 LUT__727 (.I0(n349), .I1(n340), .I2(n351), .I3(n352), .O(n353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__727.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__728 (.I0(\Inst_pwm_servo/n7 ), .I1(n340), .I2(\Inst_pwm_servo/counter [15]), 
            .I3(\Inst_pwm_servo/n6 ), .O(n354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;
    defparam LUT__728.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__729 (.I0(n337), .I1(n339), .I2(\Inst_pwm_servo/n7 ), 
            .I3(\Inst_pwm_servo/n6 ), .O(n355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__729.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__730 (.I0(\Inst_pwm_servo/counter [17]), .I1(\Inst_pwm_servo/counter [16]), 
            .I2(\Inst_pwm_servo/n5 ), .I3(n355), .O(n356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haccf */ ;
    defparam LUT__730.LUTMASK = 16'haccf;
    EFX_LUT4 LUT__731 (.I0(n353_q), .I1(n347_q), .I2(n354_q), .I3(n356_q), 
            .O(n357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__731.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__732 (.I0(\Inst_pwm_servo/counter [16]), .I1(\Inst_pwm_servo/n5 ), 
            .I2(n355), .I3(\Inst_pwm_servo/counter [17]), .O(n358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40fd */ ;
    defparam LUT__732.LUTMASK = 16'h40fd;
    EFX_LUT4 LUT__733 (.I0(\Inst_pwm_servo/counterInst_pwm_servo/counter[18]_q [18]), 
            .I1(\Inst_pwm_servo/counterInst_pwm_servo/counter[19]_q [19]), 
            .I2(n358_q), .O(n359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__733.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__734 (.I0(n336), .I1(n346), .I2(n357), .I3(n359), .O(pwm_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__734.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__735 (.I0(n303), .I1(\Inst_pwm_servo/n55 [7]), .O(\Inst_pwm_servo/n76 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__735.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__736 (.I0(n303), .I1(\Inst_pwm_servo/n55 [8]), .O(\Inst_pwm_servo/n76 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__736.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__737 (.I0(n303), .I1(\Inst_pwm_servo/n55 [9]), .O(\Inst_pwm_servo/n76 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__737.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__738 (.I0(n303), .I1(\Inst_pwm_servo/n55 [10]), .O(\Inst_pwm_servo/n76 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__738.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__739 (.I0(n303), .I1(\Inst_pwm_servo/n55 [11]), .O(\Inst_pwm_servo/n76 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__739.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__740 (.I0(n303), .I1(\Inst_pwm_servo/n55 [12]), .O(\Inst_pwm_servo/n76 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__740.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__741 (.I0(n303), .I1(\Inst_pwm_servo/n55 [13]), .O(\Inst_pwm_servo/n76 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__741.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__742 (.I0(n303), .I1(\Inst_pwm_servo/n55 [14]), .O(\Inst_pwm_servo/n76 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__742.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__743 (.I0(n303), .I1(\Inst_pwm_servo/n55 [15]), .O(\Inst_pwm_servo/n76 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__743.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__744 (.I0(n303), .I1(\Inst_pwm_servo/n55 [16]), .O(\Inst_pwm_servo/n76 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__744.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__745 (.I0(n303), .I1(\Inst_pwm_servo/n55 [17]), .O(\Inst_pwm_servo/n76 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__745.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__746 (.I0(n303), .I1(\Inst_pwm_servo/n55 [18]), .O(\Inst_pwm_servo/n76 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__746.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__747 (.I0(n303), .I1(\Inst_pwm_servo/n55 [19]), .O(\Inst_pwm_servo/n76 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(43)
    defparam LUT__747.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__748 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(n360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__748.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__749 (.I0(tx_start_sig), .I1(n360), .O(\Inst_uart_tx/n404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(107)
    defparam LUT__749.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__750 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(\Inst_uart_tx/bitcounter [6]), 
            .I2(\Inst_uart_tx/bitcounter [7]), .I3(\Inst_uart_tx/bitcounter [8]), 
            .O(n361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__750.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__751 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__751.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__752 (.I0(n362), .I1(\Inst_uart_tx/state [1]), .I2(\Inst_uart_tx/state [0]), 
            .O(n363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__752.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__753 (.I0(n363), .I1(n361), .I2(\Inst_uart_tx/n404 ), 
            .O(ceg_net60)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(79)
    defparam LUT__753.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__754 (.I0(n360), .I1(n361), .O(n364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__754.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__755 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n364), .O(\Inst_uart_tx/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__755.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__756 (.I0(tx_start_sig), .I1(n360), .O(ceg_net11)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(79)
    defparam LUT__756.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__757 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__757.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__758 (.I0(n362), .I1(n361), .I2(tx_start_sig), .I3(\Inst_uart_tx/state [1]), 
            .O(n365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbb0f */ ;
    defparam LUT__758.LUTMASK = 16'hbb0f;
    EFX_LUT4 LUT__759 (.I0(\Inst_uart_tx/state [0]), .I1(n365), .O(ceg_net46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__759.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__760 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__760.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__761 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__761.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__762 (.I0(n364), .I1(\Inst_uart_tx/n136 [1]), .O(ceg_net43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(32)
    defparam LUT__762.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__763 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__763.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__764 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(n366), .I3(\Inst_uart_tx/bit_idx [0]), .O(n367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__764.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__765 (.I0(\Inst_uart_tx/data_buffer [4]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__765.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__766 (.I0(\Inst_uart_tx/data_buffer [3]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(n368), .O(n369)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__766.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__767 (.I0(n369), .I1(n367), .I2(\Inst_uart_tx/bit_idx [2]), 
            .O(n370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__767.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__768 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__768.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__769 (.I0(n371), .I1(n370), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__769.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__770 (.I0(\Inst_uart_tx/state [0]), .I1(n361), .I2(\Inst_uart_tx/state [1]), 
            .O(ceg_net44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__770.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__771 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n364), .O(\Inst_uart_tx/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__771.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__772 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__772.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__773 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n372), .I2(n364), 
            .O(\Inst_uart_tx/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__773.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__774 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n372), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n364), .O(\Inst_uart_tx/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__774.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__775 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n372), .O(n373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__775.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__776 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n373), .I2(n364), 
            .O(\Inst_uart_tx/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__776.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__777 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n373), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(n364), .O(\Inst_uart_tx/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__777.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__778 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .O(n374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__778.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__779 (.I0(n373), .I1(n374), .I2(\Inst_uart_tx/bitcounter [6]), 
            .I3(n364), .O(\Inst_uart_tx/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__779.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__780 (.I0(\Inst_uart_tx/bitcounter [6]), .I1(n373), .I2(n374), 
            .O(n375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__780.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__781 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n375), .I2(n364), 
            .O(\Inst_uart_tx/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__781.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__782 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n375), .I2(\Inst_uart_tx/bitcounter [8]), 
            .I3(n364), .O(\Inst_uart_tx/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(66)
    defparam LUT__782.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__783 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__783.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__784 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(94)
    defparam LUT__784.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__785 (.I0(\Inst_clk_divider/bitcounter [5]), .I1(\Inst_clk_divider/bitcounter [6]), 
            .I2(\Inst_clk_divider/bitcounter [7]), .I3(\Inst_clk_divider/bitcounter [8]), 
            .O(n376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__785.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__786 (.I0(\Inst_clk_divider/bitcounter [2]), .I1(\Inst_clk_divider/bitcounter [3]), 
            .I2(\Inst_clk_divider/bitcounter [4]), .O(n377)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__786.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__787 (.I0(n377), .I1(n376), .I2(\Inst_clk_divider/bitcounter [9]), 
            .I3(\Inst_clk_divider/bitcounter [10]), .O(n378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__787.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__788 (.I0(\Inst_clk_divider/bitcounter [13]), .I1(\Inst_clk_divider/bitcounter [14]), 
            .I2(\Inst_clk_divider/bitcounter [15]), .O(n379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__788.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__789 (.I0(\Inst_clk_divider/bitcounter [11]), .I1(n378), 
            .I2(\Inst_clk_divider/bitcounter [12]), .I3(n379), .O(n380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__789.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__790 (.I0(n380), .I1(\Inst_clk_divider/bitcounter [16]), 
            .I2(\Inst_clk_divider/bitcounter [17]), .I3(\Inst_clk_divider/bitcounter [18]), 
            .O(\Inst_clk_divider/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Led_Test.v(43)
    defparam LUT__790.LUTMASK = 16'h0bff;
    EFX_LUT4 LUT__791 (.I0(rst_n_i), .I1(\Inst_clk_divider/n6 ), .O(\Inst_clk_divider/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(136)
    defparam LUT__791.LUTMASK = 16'h8888;
    EFX_FF \pwm_out_3~FF_brt_3_brt_5  (.D(\Inst_pwm_servo/counter [19]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counterInst_pwm_servo/counter[19]_q [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_3_brt_5 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_5 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_5 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_5 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_5 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_5 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_6  (.D(n321), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n321_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_0_brt_6 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_6 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_6 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_7  (.D(n329), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n329_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_0_brt_7 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_7 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_7 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_8  (.D(n333), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n333_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_0_brt_8 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_8 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_8 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_8 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_8 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_8 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_9  (.D(n335), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n335_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_0_brt_9 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_9 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_9 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_9 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_9 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_9 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_9 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_1_brt_10  (.D(n341), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n341_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_1_brt_10 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_10 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_10 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_10 .D_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_10 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_10 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_10 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_1_brt_11  (.D(n342), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n342_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_1_brt_11 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_11 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_11 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_1_brt_12  (.D(n343), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n343_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_1_brt_12 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_12 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_12 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_12 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_12 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_12 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_12 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_1_brt_13  (.D(n345), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n345_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_1_brt_13 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_13 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_13 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_13 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_13 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_13 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_13 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_2_brt_14  (.D(n347), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n347_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_2_brt_14 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_14 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_14 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_14 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_14 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_14 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_14 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_2_brt_15  (.D(n353), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n353_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_2_brt_15 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_15 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_15 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_15 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_15 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_15 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_15 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_2_brt_16  (.D(n354), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n354_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_2_brt_16 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_16 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_16 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_16 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_16 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_16 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_16 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_2_brt_17  (.D(n356), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n356_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_2_brt_17 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_17 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_17 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_17 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_17 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_17 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_17 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_3_brt_18  (.D(n358), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n358_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(52)
    defparam \pwm_out_3~FF_brt_3_brt_18 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_18 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_18 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_18 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_18 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_18 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_18 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_2f5fbb7a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_2f5fbb7a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2f5fbb7a_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_2f5fbb7a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2f5fbb7a_10
// module not written out since it is a black box. 
//

