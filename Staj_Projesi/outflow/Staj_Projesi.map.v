
//
// Verific Verilog Description of module top_servo
//

module top_servo (clk_i, rst_n_i, pwm_out, rx, tx) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(31)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(32)
    output pwm_out /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(33)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(34)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(35)
    
    wire n53;
    wire [7:0]angle_reg;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(86)
    
    wire tx_start_sig;
    wire [3:0]\Inst_uart_rx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(48)
    wire [14:0]\Inst_pwm_servo/n24 ;
    
    wire \Inst_pwm_servo/add_6/n8 ;
    wire [1:0]\Inst_uart_rx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(46)
    wire [8:0]\Inst_uart_rx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(47)
    wire [7:0]rx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(90)
    
    wire rx_valid;
    wire [7:0]\Inst_uart_rx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(49)
    
    wire \Inst_uart_rx/rx_sync1 , \Inst_uart_rx/rx_sync2 , \Inst_pwm_servo/add_6/n6 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(49)
    wire [19:0]\Inst_pwm_servo/n42 ;
    
    wire \Inst_pwm_servo/add_20/n36 , \Inst_pwm_servo/add_20/n34 , \Inst_pwm_servo/add_20/n32 , 
        \Inst_pwm_servo/add_20/n30 , \Inst_pwm_servo/add_20/n28 , \Inst_pwm_servo/add_20/n26 , 
        \Inst_pwm_servo/add_20/n24 , \Inst_pwm_servo/add_6/n10 , \Inst_pwm_servo/add_20/n22 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    wire [8:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(47)
    
    wire \Inst_pwm_servo/add_20/n20 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(48)
    
    wire tx_busy_sig, \Inst_pwm_servo/add_20/n18 , \Inst_pwm_servo/add_20/n16 , 
        \Inst_pwm_servo/add_20/n14 , \Inst_pwm_servo/add_20/n12 , \Inst_pwm_servo/add_20/n10 , 
        \Inst_pwm_servo/add_20/n8 , \Inst_pwm_servo/add_20/n6 , \Inst_pwm_servo/add_20/n4 , 
        \Inst_pwm_servo/n23 , \Inst_pwm_servo/add_6/n28 , \Inst_pwm_servo/add_6/n26 , 
        \Inst_pwm_servo/add_6/n24 , \Inst_pwm_servo/add_6/n22 , \Inst_pwm_servo/add_6/n20 , 
        \Inst_pwm_servo/add_6/n18 ;
    wire [19:0]\Inst_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_pwm_servo/add_20/n2 , \Inst_pwm_servo/add_6/n12 , \Inst_pwm_servo/add_6/n16 ;
    wire [19:0]\Inst_pwm_servo/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo/pulse_width[3] , \Inst_pwm_servo/pulse_width[4] , 
        \Inst_pwm_servo/pulse_width[8] , \Inst_pwm_servo/pulse_width[14] ;
    wire [15:0]\Inst_pwm_servo/n6 ;
    
    wire \Inst_pwm_servo/add_6/n14 , \clk_i~O ;
    wire [3:0]\Inst_uart_rx/n169 ;
    
    wire ceg_net36, ceg_net61;
    wire [8:0]\Inst_uart_rx/n156 ;
    
    wire \Inst_uart_rx/n495 , ceg_net40, \Inst_uart_rx/n522 , n319, 
        \Inst_uart_rx/n526 , \Inst_uart_rx/n543 , \Inst_uart_rx/n530 , 
        \Inst_uart_rx/n532 , \Inst_uart_rx/n546 , \Inst_uart_rx/n547 , 
        \Inst_uart_rx/n548 ;
    wire [1:0]\Inst_uart_rx/n166 ;
    
    wire \Inst_uart_tx/n406 , ceg_net62;
    wire [8:0]\Inst_uart_tx/n150 ;
    
    wire ceg_net11;
    wire [2:0]\Inst_uart_tx/n160 ;
    
    wire ceg_net46, \Inst_uart_tx/n139 , ceg_net43, \Inst_uart_tx/n140 , 
        ceg_net44;
    wire [1:0]\Inst_uart_tx/n136 ;
    wire [19:0]\Inst_pwm_servo/n63 ;
    
    wire \Inst_pwm_servo/n85 , n258, n259, n260, n261, n262, n263, 
        n264, n265, n266, n267, n268, n269, n270, n271, n272, 
        n273, n274, n275, n276, n277, n278, n279, n280, n281, 
        n282, n283, n284, n285, n286, n287, n288, n289, n290, 
        n291, n292, n293, n294, n295, n296, n297, n298, n299, 
        n300, n301, n302, n303, n304, n305, n306, n307, n308, 
        n309, n310, n311, n312, n313, n314, n315, n316, n317, 
        n318;
    
    EFX_LUT4 LUT__547 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__547.LUTMASK = 16'h4444;
    EFX_FF \angle_reg[0]~FF  (.D(rx_data_sig[0]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(n53), .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bit_idx[0]~FF  (.D(\Inst_uart_rx/n169 [0]), .CE(ceg_net36), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/state[0]~FF  (.D(\Inst_uart_rx/state [0]), .CE(ceg_net61), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[0]~FF  (.D(\Inst_uart_rx/n156 [0]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[0]~FF  (.D(\Inst_uart_rx/data_buffer [0]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[0]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_valid~FF  (.D(\Inst_uart_rx/state [1]), .CE(ceg_net40), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(rx_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_valid~FF .CLK_POLARITY = 1'b1;
    defparam \rx_valid~FF .CE_POLARITY = 1'b0;
    defparam \rx_valid~FF .SR_POLARITY = 1'b0;
    defparam \rx_valid~FF .D_POLARITY = 1'b1;
    defparam \rx_valid~FF .SR_SYNC = 1'b1;
    defparam \rx_valid~FF .SR_VALUE = 1'b0;
    defparam \rx_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[0]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n522 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/rx_sync1~FF  (.D(rx), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(\Inst_uart_rx/rx_sync1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/rx_sync1~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync1~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/rx_sync1~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/rx_sync1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/rx_sync2~FF  (.D(\Inst_uart_rx/rx_sync1 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/rx_sync2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/rx_sync2~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/rx_sync2~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/rx_sync2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[1]~FF  (.D(\Inst_uart_rx/n156 [1]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[2]~FF  (.D(\Inst_uart_rx/n156 [2]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[3]~FF  (.D(\Inst_uart_rx/n156 [3]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[4]~FF  (.D(\Inst_uart_rx/n156 [4]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[5]~FF  (.D(\Inst_uart_rx/n156 [5]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[6]~FF  (.D(\Inst_uart_rx/n156 [6]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[7]~FF  (.D(\Inst_uart_rx/n156 [7]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bitcounter[8]~FF  (.D(\Inst_uart_rx/n156 [8]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[1]~FF  (.D(\Inst_uart_rx/data_buffer [1]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[1]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[2]~FF  (.D(\Inst_uart_rx/data_buffer [2]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[2]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[3]~FF  (.D(\Inst_uart_rx/data_buffer [3]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[3]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[4]~FF  (.D(\Inst_uart_rx/data_buffer [4]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[4]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[5]~FF  (.D(\Inst_uart_rx/data_buffer [5]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[5]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[6]~FF  (.D(\Inst_uart_rx/data_buffer [6]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[6]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_sig[7]~FF  (.D(\Inst_uart_rx/data_buffer [7]), .CE(\Inst_uart_rx/n495 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(rx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \rx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_sig[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_sig[7]~FF .SR_POLARITY = 1'b0;
    defparam \rx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_sig[7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[1]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n526 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[1]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[2]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n543 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[2]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[3]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n530 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[3]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[4]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n532 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[5]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n546 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[6]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n547 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[7]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n548 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[7]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bit_idx[1]~FF  (.D(\Inst_uart_rx/n169 [1]), .CE(ceg_net36), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/bit_idx[2]~FF  (.D(\Inst_uart_rx/n169 [2]), .CE(ceg_net36), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/state[1]~FF  (.D(\Inst_uart_rx/n166 [1]), .CE(ceg_net61), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_rx/state[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[0]~FF  (.D(angle_reg[0]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net62), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n150 [0]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n160 [0]), .CE(ceg_net46), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n139 ), .CE(ceg_net43), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_busy_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \tx_busy_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_busy_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_busy_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n140 ), .CE(ceg_net44), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n150 [1]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n150 [2]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n150 [3]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n150 [4]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n150 [5]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[6]~FF  (.D(\Inst_uart_tx/n150 [6]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[7]~FF  (.D(\Inst_uart_tx/n150 [7]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[8]~FF  (.D(\Inst_uart_tx/n150 [8]), .CE(ceg_net11), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[1]~FF  (.D(angle_reg[1]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[2]~FF  (.D(angle_reg[2]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[3]~FF  (.D(angle_reg[3]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[4]~FF  (.D(angle_reg[4]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[5]~FF  (.D(angle_reg[5]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[6]~FF  (.D(angle_reg[6]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[7]~FF  (.D(angle_reg[7]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n160 [1]), .CE(ceg_net46), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n160 [2]), .CE(ceg_net46), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net62), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[4]~FF  (.D(\Inst_pwm_servo/n63 [4]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[3]~FF  (.D(\Inst_pwm_servo/n63 [3]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[2]~FF  (.D(\Inst_pwm_servo/n63 [2]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[0]~FF  (.D(\Inst_pwm_servo/n63 [0]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[1]~FF  (.D(\Inst_pwm_servo/n63 [1]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out~FF  (.D(\Inst_pwm_servo/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out~FF .D_POLARITY = 1'b1;
    defparam \pwm_out~FF .SR_SYNC = 1'b0;
    defparam \pwm_out~FF .SR_VALUE = 1'b0;
    defparam \pwm_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[5]~FF  (.D(\Inst_pwm_servo/n63 [5]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[6]~FF  (.D(\Inst_pwm_servo/n63 [6]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[7]~FF  (.D(\Inst_pwm_servo/n63 [7]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[8]~FF  (.D(\Inst_pwm_servo/n63 [8]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[9]~FF  (.D(\Inst_pwm_servo/n63 [9]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[10]~FF  (.D(\Inst_pwm_servo/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[11]~FF  (.D(\Inst_pwm_servo/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[12]~FF  (.D(\Inst_pwm_servo/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[13]~FF  (.D(\Inst_pwm_servo/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[14]~FF  (.D(\Inst_pwm_servo/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[15]~FF  (.D(\Inst_pwm_servo/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[16]~FF  (.D(\Inst_pwm_servo/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[17]~FF  (.D(\Inst_pwm_servo/n63 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[18]~FF  (.D(\Inst_pwm_servo/n63 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[19]~FF  (.D(\Inst_pwm_servo/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[2]~FF  (.D(\Inst_pwm_servo/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[3]~FF  (.D(\Inst_pwm_servo/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[4]~FF  (.D(\Inst_pwm_servo/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[5]~FF  (.D(\Inst_pwm_servo/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[6]~FF  (.D(\Inst_pwm_servo/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[7]~FF  (.D(\Inst_pwm_servo/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[8]~FF  (.D(\Inst_pwm_servo/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[9]~FF  (.D(\Inst_pwm_servo/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[10]~FF  (.D(\Inst_pwm_servo/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[11]~FF  (.D(\Inst_pwm_servo/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[12]~FF  (.D(\Inst_pwm_servo/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[13]~FF  (.D(\Inst_pwm_servo/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[14]~FF  (.D(\Inst_pwm_servo/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[15]~FF  (.D(\Inst_pwm_servo/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/pulse_width[16]~FF  (.D(\Inst_pwm_servo/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[1]~FF  (.D(rx_data_sig[1]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[2]~FF  (.D(rx_data_sig[2]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[3]~FF  (.D(rx_data_sig[3]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[4]~FF  (.D(rx_data_sig[4]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[5]~FF  (.D(rx_data_sig[5]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[6]~FF  (.D(rx_data_sig[6]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg[7]~FF  (.D(rx_data_sig[7]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(150)
    defparam \angle_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo/n6 [4]), 
            .CI(\Inst_pwm_servo/add_6/n6 ), .O(\Inst_pwm_servo/n24 [3]), 
            .CO(\Inst_pwm_servo/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i19  (.I0(\Inst_pwm_servo/counter [19]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n36 ), .O(\Inst_pwm_servo/n42 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i18  (.I0(\Inst_pwm_servo/counter [18]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n34 ), .O(\Inst_pwm_servo/n42 [18]), 
            .CO(\Inst_pwm_servo/add_20/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i17  (.I0(\Inst_pwm_servo/counter [17]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n32 ), .O(\Inst_pwm_servo/n42 [17]), 
            .CO(\Inst_pwm_servo/add_20/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i16  (.I0(\Inst_pwm_servo/counter [16]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n30 ), .O(\Inst_pwm_servo/n42 [16]), 
            .CO(\Inst_pwm_servo/add_20/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i15  (.I0(\Inst_pwm_servo/counter [15]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n28 ), .O(\Inst_pwm_servo/n42 [15]), 
            .CO(\Inst_pwm_servo/add_20/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i14  (.I0(\Inst_pwm_servo/counter [14]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n26 ), .O(\Inst_pwm_servo/n42 [14]), 
            .CO(\Inst_pwm_servo/add_20/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i13  (.I0(\Inst_pwm_servo/counter [13]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n24 ), .O(\Inst_pwm_servo/n42 [13]), 
            .CO(\Inst_pwm_servo/add_20/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i12  (.I0(\Inst_pwm_servo/counter [12]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n22 ), .O(\Inst_pwm_servo/n42 [12]), 
            .CO(\Inst_pwm_servo/add_20/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [5]), 
            .CI(\Inst_pwm_servo/add_6/n8 ), .O(\Inst_pwm_servo/n24 [4]), 
            .CO(\Inst_pwm_servo/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i11  (.I0(\Inst_pwm_servo/counter [11]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n20 ), .O(\Inst_pwm_servo/n42 [11]), 
            .CO(\Inst_pwm_servo/add_20/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i10  (.I0(\Inst_pwm_servo/counter [10]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n18 ), .O(\Inst_pwm_servo/n42 [10]), 
            .CO(\Inst_pwm_servo/add_20/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i9  (.I0(\Inst_pwm_servo/counter [9]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n16 ), .O(\Inst_pwm_servo/n42 [9]), 
            .CO(\Inst_pwm_servo/add_20/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i8  (.I0(\Inst_pwm_servo/counter [8]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n14 ), .O(\Inst_pwm_servo/n42 [8]), 
            .CO(\Inst_pwm_servo/add_20/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i7  (.I0(\Inst_pwm_servo/counter [7]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n12 ), .O(\Inst_pwm_servo/n42 [7]), 
            .CO(\Inst_pwm_servo/add_20/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i6  (.I0(\Inst_pwm_servo/counter [6]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n10 ), .O(\Inst_pwm_servo/n42 [6]), 
            .CO(\Inst_pwm_servo/add_20/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i5  (.I0(\Inst_pwm_servo/counter [5]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n8 ), .O(\Inst_pwm_servo/n42 [5]), 
            .CO(\Inst_pwm_servo/add_20/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i4  (.I0(\Inst_pwm_servo/counter [4]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n6 ), .O(\Inst_pwm_servo/n42 [4]), 
            .CO(\Inst_pwm_servo/add_20/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i3  (.I0(\Inst_pwm_servo/counter [3]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n4 ), .O(\Inst_pwm_servo/n42 [3]), 
            .CO(\Inst_pwm_servo/add_20/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i2  (.I0(\Inst_pwm_servo/counter [2]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n2 ), .O(\Inst_pwm_servo/n42 [2]), 
            .CO(\Inst_pwm_servo/add_20/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [15]), 
            .CI(\Inst_pwm_servo/add_6/n28 ), .O(\Inst_pwm_servo/n24 [14]), 
            .CO(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo/n6 [14]), 
            .CI(\Inst_pwm_servo/add_6/n26 ), .O(\Inst_pwm_servo/n24 [13]), 
            .CO(\Inst_pwm_servo/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [13]), 
            .CI(\Inst_pwm_servo/add_6/n24 ), .O(\Inst_pwm_servo/n24 [12]), 
            .CO(\Inst_pwm_servo/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [12]), 
            .CI(\Inst_pwm_servo/add_6/n22 ), .O(\Inst_pwm_servo/n24 [11]), 
            .CO(\Inst_pwm_servo/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [11]), 
            .CI(\Inst_pwm_servo/add_6/n20 ), .O(\Inst_pwm_servo/n24 [10]), 
            .CO(\Inst_pwm_servo/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [10]), 
            .CI(\Inst_pwm_servo/add_6/n18 ), .O(\Inst_pwm_servo/n24 [9]), 
            .CO(\Inst_pwm_servo/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [9]), 
            .CI(\Inst_pwm_servo/add_6/n16 ), .O(\Inst_pwm_servo/n24 [8]), 
            .CO(\Inst_pwm_servo/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i1  (.I0(\Inst_pwm_servo/counter [1]), 
            .I1(\Inst_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo/n42 [1]), 
            .CO(\Inst_pwm_servo/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [6]), 
            .CI(\Inst_pwm_servo/add_6/n10 ), .O(\Inst_pwm_servo/n24 [5]), 
            .CO(\Inst_pwm_servo/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo/n6 [8]), 
            .CI(\Inst_pwm_servo/add_6/n14 ), .O(\Inst_pwm_servo/n24 [7]), 
            .CO(\Inst_pwm_servo/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo/n6 [7]), 
            .CI(\Inst_pwm_servo/add_6/n12 ), .O(\Inst_pwm_servo/n24 [6]), 
            .CO(\Inst_pwm_servo/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_MULT \Inst_pwm_servo/mult_5  (.CLK(\clk_i~O ), .CEA(rx_valid), .RSTA(rst_n_i), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            rx_data_sig}), .B({18'b000000000000111101}), .O({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, \Inst_pwm_servo/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b1, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b0, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo/mult_5 .A_REG = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .RSTA_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .RSTA_SYNC = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__548 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .I3(\Inst_uart_rx/bitcounter [3]), 
            .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__548.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__549 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [5]), 
            .I2(\Inst_uart_rx/bitcounter [6]), .I3(\Inst_uart_rx/bitcounter [7]), 
            .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__549.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__550 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(\Inst_uart_rx/state [1]), 
            .I2(n258), .I3(n259), .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__550.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__551 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .O(n261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__551.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__552 (.I0(\Inst_uart_rx/rx_sync2 ), .I1(n260), .I2(n261), 
            .I3(\Inst_uart_rx/state [0]), .O(n262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h770f */ ;
    defparam LUT__552.LUTMASK = 16'h770f;
    EFX_LUT4 LUT__553 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [6]), 
            .I2(\Inst_uart_rx/bitcounter [7]), .I3(\Inst_uart_rx/bitcounter [5]), 
            .O(n263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__553.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__554 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .I3(\Inst_uart_rx/bitcounter [3]), 
            .O(n264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__554.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__555 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(n263), .I2(n264), 
            .O(n265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__555.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__556 (.I0(\Inst_uart_rx/state [1]), .I1(n265), .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__556.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__557 (.I0(n266), .I1(\Inst_uart_rx/state [0]), .I2(n262), 
            .I3(rst_n_i), .O(ceg_net36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd300 */ ;
    defparam LUT__557.LUTMASK = 16'hd300;
    EFX_LUT4 LUT__558 (.I0(n261), .I1(\Inst_uart_rx/rx_sync2 ), .I2(\Inst_uart_rx/state [0]), 
            .I3(\Inst_uart_rx/state [1]), .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__558.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__559 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(n258), .I2(n259), 
            .I3(\Inst_uart_rx/state [0]), .O(n268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__559.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__560 (.I0(n268), .I1(n265), .I2(\Inst_uart_rx/state [1]), 
            .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__560.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__561 (.I0(n269), .I1(n267), .I2(rst_n_i), .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(50)
    defparam LUT__561.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__562 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(n269), .O(\Inst_uart_rx/n156 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__562.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__563 (.I0(\Inst_uart_rx/state [0]), .I1(n266), .O(\Inst_uart_rx/n495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__563.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__564 (.I0(n265), .I1(\Inst_uart_rx/state [0]), .I2(\Inst_uart_rx/state [1]), 
            .I3(rst_n_i), .O(ceg_net40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(46)
    defparam LUT__564.LUTMASK = 16'h7c00;
    EFX_LUT4 LUT__565 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [0]), 
            .O(n270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__565.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__566 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n265), .I3(n270), .O(\Inst_uart_rx/n522 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__566.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__567 (.I0(\Inst_uart_rx/state [1]), .I1(n268), .O(n271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__567.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__568 (.I0(n271), .I1(\Inst_uart_rx/bitcounter [0]), .I2(\Inst_uart_rx/bitcounter [1]), 
            .O(\Inst_uart_rx/n156 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__568.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__569 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__569.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__570 (.I0(n271), .I1(\Inst_uart_rx/bitcounter [2]), .I2(n272), 
            .O(\Inst_uart_rx/n156 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__570.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__571 (.I0(\Inst_uart_rx/bitcounter [2]), .I1(n272), .I2(n271), 
            .I3(\Inst_uart_rx/bitcounter [3]), .O(\Inst_uart_rx/n156 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__571.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__572 (.I0(n271), .I1(\Inst_uart_rx/bitcounter [4]), .I2(n258), 
            .O(\Inst_uart_rx/n156 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__572.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__573 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(n258), .I2(n269), 
            .I3(\Inst_uart_rx/bitcounter [5]), .O(\Inst_uart_rx/n156 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__573.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__574 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [5]), 
            .I2(n258), .O(n273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__574.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__575 (.I0(n271), .I1(\Inst_uart_rx/bitcounter [6]), .I2(n273), 
            .O(\Inst_uart_rx/n156 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__575.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__576 (.I0(\Inst_uart_rx/bitcounter [6]), .I1(n273), .O(n274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__576.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__577 (.I0(n271), .I1(\Inst_uart_rx/bitcounter [7]), .I2(n274), 
            .O(\Inst_uart_rx/n156 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__577.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__578 (.I0(\Inst_uart_rx/bitcounter [7]), .I1(n274), .I2(n269), 
            .I3(\Inst_uart_rx/bitcounter [8]), .O(\Inst_uart_rx/n156 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__578.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__579 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .O(n275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__579.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__580 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(n265), .I2(n275), 
            .O(n276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__580.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__581 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(n276), .O(\Inst_uart_rx/n526 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__581.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__582 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(n266), .I3(n270), .O(\Inst_uart_rx/n543 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__582.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__583 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(n265), .I3(n275), .O(\Inst_uart_rx/n530 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__583.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__584 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n265), .I3(n270), .O(\Inst_uart_rx/n532 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__584.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__585 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(\Inst_uart_rx/state [1]), 
            .I2(n276), .O(\Inst_uart_rx/n546 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__585.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__586 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n266), .I3(n270), .O(\Inst_uart_rx/n547 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__586.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__587 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .I2(n266), .I3(n275), .O(\Inst_uart_rx/n548 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__587.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__588 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/state [1]), .O(\Inst_uart_rx/n169 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__588.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__589 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__589.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__590 (.I0(\Inst_uart_rx/rx_sync2 ), .I1(\Inst_uart_rx/state [1]), 
            .I2(\Inst_uart_rx/state [0]), .O(\Inst_uart_rx/n166 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__590.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__591 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__591.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__592 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n139 ), 
            .O(\Inst_uart_tx/n406 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(106)
    defparam LUT__592.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__593 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(n277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__593.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__594 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(\Inst_uart_tx/bitcounter [6]), 
            .I2(\Inst_uart_tx/bitcounter [7]), .I3(\Inst_uart_tx/bitcounter [8]), 
            .O(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__594.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__595 (.I0(\Inst_uart_tx/state [1]), .I1(\Inst_uart_tx/state [0]), 
            .I2(n278), .O(n279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__595.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__596 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net11)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(87)
    defparam LUT__596.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__597 (.I0(n277), .I1(\Inst_uart_tx/state [0]), .I2(n279), 
            .I3(ceg_net11), .O(ceg_net62)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff2 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(87)
    defparam LUT__597.LUTMASK = 16'hfff2;
    EFX_LUT4 LUT__598 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n279), .O(\Inst_uart_tx/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__598.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__599 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__599.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__600 (.I0(n278), .I1(n277), .I2(\Inst_uart_tx/n139 ), 
            .I3(\Inst_uart_tx/state [0]), .O(ceg_net46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff07 */ ;
    defparam LUT__600.LUTMASK = 16'hff07;
    EFX_LUT4 LUT__601 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__601.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__602 (.I0(n279), .I1(\Inst_uart_tx/n136 [1]), .O(ceg_net43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    defparam LUT__602.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__603 (.I0(\Inst_uart_tx/data_buffer [3]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__603.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__604 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__604.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__605 (.I0(\Inst_uart_tx/data_buffer [4]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__605.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__606 (.I0(\Inst_uart_tx/bit_idx [1]), .I1(\Inst_uart_tx/data_buffer [6]), 
            .I2(n282), .I3(\Inst_uart_tx/bit_idx [2]), .O(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__606.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__607 (.I0(n281), .I1(n280), .I2(n283), .I3(\Inst_uart_tx/bit_idx [0]), 
            .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__607.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__608 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__608.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__609 (.I0(n285), .I1(n284), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__609.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__610 (.I0(\Inst_uart_tx/state [0]), .I1(n278), .I2(\Inst_uart_tx/state [1]), 
            .O(ceg_net44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__610.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__611 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n279), .O(\Inst_uart_tx/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__611.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__612 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__612.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__613 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n286), .I2(n279), 
            .O(\Inst_uart_tx/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__613.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__614 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n286), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n279), .O(\Inst_uart_tx/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__614.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__615 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n286), .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__615.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__616 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n287), .I2(n279), 
            .O(\Inst_uart_tx/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__616.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__617 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n287), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(n279), .O(\Inst_uart_tx/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__617.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__618 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__618.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__619 (.I0(n287), .I1(n288), .I2(\Inst_uart_tx/bitcounter [6]), 
            .I3(n279), .O(\Inst_uart_tx/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__619.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__620 (.I0(\Inst_uart_tx/bitcounter [6]), .I1(n287), .I2(n288), 
            .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__620.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__621 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n289), .I2(n279), 
            .O(\Inst_uart_tx/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__621.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__622 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n289), .I2(\Inst_uart_tx/bitcounter [8]), 
            .I3(n279), .O(\Inst_uart_tx/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__622.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__623 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__623.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__624 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__624.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__625 (.I0(\Inst_pwm_servo/counter [2]), .I1(\Inst_pwm_servo/counter [1]), 
            .I2(\Inst_pwm_servo/counter [3]), .I3(\Inst_pwm_servo/counter [4]), 
            .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__625.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__626 (.I0(\Inst_pwm_servo/counter [6]), .I1(\Inst_pwm_servo/counter [7]), 
            .I2(\Inst_pwm_servo/counter [8]), .I3(\Inst_pwm_servo/counter [9]), 
            .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__626.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__627 (.I0(\Inst_pwm_servo/counter [10]), .I1(\Inst_pwm_servo/counter [11]), 
            .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__627.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__628 (.I0(n290), .I1(\Inst_pwm_servo/counter [5]), .I2(n291), 
            .I3(n292), .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__628.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__629 (.I0(\Inst_pwm_servo/counter [17]), .I1(\Inst_pwm_servo/counter [13]), 
            .I2(\Inst_pwm_servo/counter [19]), .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__629.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__630 (.I0(\Inst_pwm_servo/counter [14]), .I1(\Inst_pwm_servo/counter [15]), 
            .I2(\Inst_pwm_servo/counter [16]), .I3(\Inst_pwm_servo/counter [17]), 
            .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__630.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__631 (.I0(n295), .I1(\Inst_pwm_servo/counter [18]), .I2(\Inst_pwm_servo/counter [19]), 
            .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__631.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__632 (.I0(\Inst_pwm_servo/counter [12]), .I1(n293), .I2(n294), 
            .I3(n296), .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__632.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__633 (.I0(\Inst_pwm_servo/n42 [4]), .I1(n297), .O(\Inst_pwm_servo/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__633.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__634 (.I0(\Inst_pwm_servo/n42 [3]), .I1(n297), .O(\Inst_pwm_servo/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__634.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__635 (.I0(\Inst_pwm_servo/n42 [2]), .I1(n297), .O(\Inst_pwm_servo/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__635.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__636 (.I0(\Inst_pwm_servo/counter [0]), .I1(n297), .O(\Inst_pwm_servo/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__636.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__637 (.I0(\Inst_pwm_servo/n42 [1]), .I1(n297), .O(\Inst_pwm_servo/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__637.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__638 (.I0(\Inst_pwm_servo/counter [2]), .I1(\Inst_pwm_servo/counter [1]), 
            .I2(\Inst_pwm_servo/pulse_width [2]), .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__638.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__639 (.I0(\Inst_pwm_servo/counter [4]), .I1(\Inst_pwm_servo/pulse_width[4] ), 
            .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__639.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__640 (.I0(\Inst_pwm_servo/counter [3]), .I1(n298), .I2(\Inst_pwm_servo/pulse_width[3] ), 
            .I3(n299), .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__640.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__641 (.I0(\Inst_pwm_servo/pulse_width [5]), .I1(\Inst_pwm_servo/counter [5]), 
            .I2(\Inst_pwm_servo/counter [4]), .I3(\Inst_pwm_servo/pulse_width[4] ), 
            .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__641.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__642 (.I0(\Inst_pwm_servo/counter [6]), .I1(\Inst_pwm_servo/pulse_width [6]), 
            .I2(\Inst_pwm_servo/counter [5]), .I3(\Inst_pwm_servo/pulse_width [5]), 
            .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__642.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__643 (.I0(\Inst_pwm_servo/pulse_width [9]), .I1(\Inst_pwm_servo/counter [9]), 
            .I2(\Inst_pwm_servo/counter [8]), .I3(\Inst_pwm_servo/pulse_width[8] ), 
            .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__643.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__644 (.I0(\Inst_pwm_servo/pulse_width [10]), .I1(\Inst_pwm_servo/counter [10]), 
            .I2(\Inst_pwm_servo/pulse_width [7]), .I3(\Inst_pwm_servo/counter [7]), 
            .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__644.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__645 (.I0(\Inst_pwm_servo/pulse_width [6]), .I1(\Inst_pwm_servo/counter [6]), 
            .I2(n303), .I3(n304), .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__645.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__646 (.I0(n300), .I1(n301), .I2(n302), .I3(n305), .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__646.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__647 (.I0(\Inst_pwm_servo/counter [13]), .I1(\Inst_pwm_servo/counter [12]), 
            .I2(\Inst_pwm_servo/pulse_width [13]), .I3(\Inst_pwm_servo/pulse_width [12]), 
            .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__647.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__648 (.I0(\Inst_pwm_servo/counter [16]), .I1(\Inst_pwm_servo/pulse_width [16]), 
            .I2(\Inst_pwm_servo/counter [15]), .I3(\Inst_pwm_servo/pulse_width [15]), 
            .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__648.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__649 (.I0(\Inst_pwm_servo/counter [14]), .I1(\Inst_pwm_servo/pulse_width[14] ), 
            .I2(n307), .I3(n308), .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__649.LUTMASK = 16'he800;
    EFX_LUT4 LUT__650 (.I0(\Inst_pwm_servo/counter [8]), .I1(\Inst_pwm_servo/pulse_width[8] ), 
            .I2(\Inst_pwm_servo/counter [7]), .I3(\Inst_pwm_servo/pulse_width [7]), 
            .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ee */ ;
    defparam LUT__650.LUTMASK = 16'he0ee;
    EFX_LUT4 LUT__651 (.I0(\Inst_pwm_servo/pulse_width [10]), .I1(\Inst_pwm_servo/counter [10]), 
            .I2(n310), .I3(n303), .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__651.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__652 (.I0(\Inst_pwm_servo/counter [10]), .I1(\Inst_pwm_servo/counter [9]), 
            .I2(\Inst_pwm_servo/pulse_width [10]), .I3(\Inst_pwm_servo/pulse_width [9]), 
            .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__652.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__653 (.I0(\Inst_pwm_servo/pulse_width [11]), .I1(\Inst_pwm_servo/counter [11]), 
            .I2(n311), .I3(n312), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__653.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__654 (.I0(\Inst_pwm_servo/pulse_width [13]), .I1(\Inst_pwm_servo/counter [13]), 
            .I2(\Inst_pwm_servo/pulse_width [12]), .I3(\Inst_pwm_servo/counter [12]), 
            .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__654.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__655 (.I0(\Inst_pwm_servo/counter [14]), .I1(\Inst_pwm_servo/pulse_width[14] ), 
            .I2(\Inst_pwm_servo/pulse_width [11]), .I3(\Inst_pwm_servo/counter [11]), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__655.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__656 (.I0(\Inst_pwm_servo/counter [16]), .I1(\Inst_pwm_servo/pulse_width [16]), 
            .I2(\Inst_pwm_servo/pulse_width [15]), .I3(\Inst_pwm_servo/counter [15]), 
            .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__656.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__657 (.I0(\Inst_pwm_servo/counter [17]), .I1(\Inst_pwm_servo/counter [18]), 
            .I2(\Inst_pwm_servo/counter [19]), .I3(n316), .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__657.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__658 (.I0(n315), .I1(n314), .I2(n309), .I3(n317), .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__658.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__659 (.I0(n306), .I1(n313), .I2(n309), .I3(n318), .O(\Inst_pwm_servo/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__659.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__660 (.I0(\Inst_pwm_servo/n42 [5]), .I1(n297), .O(\Inst_pwm_servo/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__660.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__661 (.I0(\Inst_pwm_servo/n42 [6]), .I1(n297), .O(\Inst_pwm_servo/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__661.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__662 (.I0(\Inst_pwm_servo/n42 [7]), .I1(n297), .O(\Inst_pwm_servo/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__662.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__663 (.I0(\Inst_pwm_servo/n42 [8]), .I1(n297), .O(\Inst_pwm_servo/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__663.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__664 (.I0(\Inst_pwm_servo/n42 [9]), .I1(n297), .O(\Inst_pwm_servo/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__664.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__665 (.I0(\Inst_pwm_servo/n42 [10]), .I1(n297), .O(\Inst_pwm_servo/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__665.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__666 (.I0(\Inst_pwm_servo/n42 [11]), .I1(n297), .O(\Inst_pwm_servo/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__666.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__667 (.I0(\Inst_pwm_servo/n42 [12]), .I1(n297), .O(\Inst_pwm_servo/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__667.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__668 (.I0(\Inst_pwm_servo/n42 [13]), .I1(n297), .O(\Inst_pwm_servo/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__668.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__669 (.I0(\Inst_pwm_servo/n42 [14]), .I1(n297), .O(\Inst_pwm_servo/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__669.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__670 (.I0(\Inst_pwm_servo/n42 [15]), .I1(n297), .O(\Inst_pwm_servo/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__670.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__671 (.I0(\Inst_pwm_servo/n42 [16]), .I1(n297), .O(\Inst_pwm_servo/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__671.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__672 (.I0(\Inst_pwm_servo/n42 [17]), .I1(n297), .O(\Inst_pwm_servo/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__672.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__673 (.I0(\Inst_pwm_servo/n42 [18]), .I1(n297), .O(\Inst_pwm_servo/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__673.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__674 (.I0(\Inst_pwm_servo/n42 [19]), .I1(n297), .O(\Inst_pwm_servo/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__674.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__546 (.I0(tx_busy_sig), .I1(rx_valid), .O(n53)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(149)
    defparam LUT__546.LUTMASK = 16'h4444;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n319), .O(\Inst_pwm_servo/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_353b689b_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_353b689b_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_353b689b_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_353b689b_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_353b689b_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_353b689b_0
// module not written out since it is a black box. 
//

