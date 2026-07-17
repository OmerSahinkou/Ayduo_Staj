
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
    wire [19:0]\Inst_pwm_servo/n56 ;
    
    wire \Inst_pwm_servo/add_22/n2 ;
    wire [1:0]\Inst_uart_rx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(46)
    wire [8:0]\Inst_uart_rx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(47)
    wire [7:0]rx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(90)
    
    wire rx_valid;
    wire [7:0]\Inst_uart_rx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(49)
    
    wire \Inst_uart_rx/rx_sync1 , \Inst_uart_rx/rx_sync2 , \Inst_pwm_servo/n15 , 
        \Inst_pwm_servo/n16 , \Inst_pwm_servo/n17 , \Inst_pwm_servo/n18 , 
        \Inst_pwm_servo/n19 , \Inst_pwm_servo/n20 , \Inst_pwm_servo/n21 , 
        \Inst_pwm_servo/n22 , \Inst_pwm_servo/n23 , \Inst_pwm_servo/n24 , 
        \Inst_pwm_servo/n25 , \Inst_pwm_servo/n26 , \Inst_pwm_servo/n27 , 
        \Inst_pwm_servo/n28 , \Inst_pwm_servo/n29 , \Inst_pwm_servo/n30 ;
    wire [19:0]\Inst_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire n278_q, \Inst_pwm_servo/add_22/n4 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(49)
    
    wire \Inst_pwm_servo/add_22/n6 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    wire [8:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(47)
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(48)
    
    wire tx_busy_sig, n259_q, \Inst_pwm_servo/add_22/n36 , \Inst_pwm_servo/add_22/n34 , 
        \Inst_pwm_servo/add_22/n32 , \Inst_pwm_servo/add_22/n30 , \Inst_pwm_servo/add_22/n28 , 
        \Inst_pwm_servo/add_22/n26 , \Inst_pwm_servo/add_22/n24 , \Inst_pwm_servo/add_22/n22 , 
        \Inst_pwm_servo/add_22/n20 , \Inst_pwm_servo/add_22/n18 , \Inst_pwm_servo/add_22/n16 , 
        \Inst_pwm_servo/add_22/n14 , \Inst_pwm_servo/add_22/n12 , \Inst_pwm_servo/add_22/n10 , 
        \Inst_pwm_servo/add_22/n8 , \clk_i~O ;
    wire [3:0]\Inst_uart_rx/n169 ;
    
    wire ceg_net36, ceg_net61;
    wire [8:0]\Inst_uart_rx/n156 ;
    
    wire \Inst_uart_rx/n495 , ceg_net40, \Inst_uart_rx/n522 , \Inst_uart_rx/n542 , 
        \Inst_uart_rx/n543 , \Inst_uart_rx/n530 , \Inst_uart_rx/n532 , 
        \Inst_uart_rx/n534 , \Inst_uart_rx/n536 , \Inst_uart_rx/n538 , 
        \Inst_pwm_servo/safe_angle[6] , \Inst_pwm_servo/safe_angle[5] , 
        \Inst_pwm_servo/safe_angle[4] , \Inst_pwm_servo/safe_angle[3] , 
        \Inst_pwm_servo/safe_angle[2] , \Inst_pwm_servo/safe_angle[1] , 
        \Inst_pwm_servo/safe_angle[0] ;
    wire [1:0]\Inst_uart_rx/n166 ;
    wire [19:0]\Inst_pwm_servo/n77 ;
    
    wire \Inst_uart_tx/n406 , ceg_net62;
    wire [8:0]\Inst_uart_tx/n150 ;
    
    wire ceg_net11;
    wire [2:0]\Inst_uart_tx/n160 ;
    
    wire ceg_net46, \Inst_uart_tx/n139 , ceg_net43, \Inst_uart_tx/n140 , 
        ceg_net44;
    wire [1:0]\Inst_uart_tx/n136 ;
    
    wire n227, n228, n229, n230, n231, n232, n233, n234, n235, 
        n236, n237, n238, n239, n240, n241, n242, n243, n244, 
        n245, n246, n247, n248, n249, n250, n251, n252, n253, 
        n254, n255, n256, n257, n258, n259, n260, n261, n262, 
        n263, n264, n265, n266, n267, n268, n269, n270, n271, 
        n272, n273, n274, n275, n276, n277, n278, n279, n280, 
        n281, n282, n283, n284, n285, n286, n287, n288, n289, 
        n290, n291, n292, n293, n294, n295, n296, n297, n298, 
        n299, n300, n301, n302, n303, n304, n305, n306, n307, 
        n308, n309, n310, n311, n312, n313, n314, n315, n282_q, 
        n285_q, n289_q, n290_q, n293_q, n296_q, n298_q, n300_q, 
        n301_q;
    
    EFX_LUT4 LUT__438 (.I0(tx_busy_sig), .I1(rx_valid), .O(n53)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(149)
    defparam LUT__438.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__439 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__439.LUTMASK = 16'h4444;
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
           .CE(\Inst_uart_rx/n542 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
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
           .CE(\Inst_uart_rx/n534 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[6]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n536 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
    defparam \Inst_uart_rx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_rx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_rx/data_buffer[7]~FF  (.D(\Inst_uart_rx/rx_sync2 ), 
           .CE(\Inst_uart_rx/n538 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
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
    EFX_FF \Inst_pwm_servo/counter[4]~FF  (.D(\Inst_pwm_servo/n77 [4]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[3]~FF  (.D(\Inst_pwm_servo/n77 [3]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[0]~FF  (.D(\Inst_pwm_servo/n77 [0]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[5]~FF  (.D(\Inst_pwm_servo/n77 [5]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[6]~FF  (.D(\Inst_pwm_servo/n77 [6]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[2]~FF  (.D(\Inst_pwm_servo/n77 [2]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[1]~FF  (.D(\Inst_pwm_servo/n77 [1]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_4  (.D(n259), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n259_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_0_brt_4 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_4 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_4 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_4 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_4 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_4 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_4 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[7]~FF  (.D(\Inst_pwm_servo/n77 [7]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[8]~FF  (.D(\Inst_pwm_servo/n77 [8]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[9]~FF  (.D(\Inst_pwm_servo/n77 [9]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[10]~FF  (.D(\Inst_pwm_servo/n77 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[11]~FF  (.D(\Inst_pwm_servo/n77 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[12]~FF  (.D(\Inst_pwm_servo/n77 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[13]~FF  (.D(\Inst_pwm_servo/n77 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[14]~FF  (.D(\Inst_pwm_servo/n77 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[15]~FF  (.D(\Inst_pwm_servo/n77 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[16]~FF  (.D(\Inst_pwm_servo/n77 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[17]~FF  (.D(\Inst_pwm_servo/n77 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[18]~FF  (.D(\Inst_pwm_servo/n77 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo/counter[19]~FF  (.D(\Inst_pwm_servo/n77 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_ADD \Inst_pwm_servo/add_22/i1  (.I0(\Inst_pwm_servo/counter [1]), 
            .I1(\Inst_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo/n56 [1]), 
            .CO(\Inst_pwm_servo/add_22/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i2  (.I0(\Inst_pwm_servo/counter [2]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n2 ), .O(\Inst_pwm_servo/n56 [2]), 
            .CO(\Inst_pwm_servo/add_22/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i3  (.I0(\Inst_pwm_servo/counter [3]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n4 ), .O(\Inst_pwm_servo/n56 [3]), 
            .CO(\Inst_pwm_servo/add_22/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i19  (.I0(\Inst_pwm_servo/counter [19]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n36 ), .O(\Inst_pwm_servo/n56 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i18  (.I0(\Inst_pwm_servo/counter [18]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n34 ), .O(\Inst_pwm_servo/n56 [18]), 
            .CO(\Inst_pwm_servo/add_22/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i17  (.I0(\Inst_pwm_servo/counter [17]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n32 ), .O(\Inst_pwm_servo/n56 [17]), 
            .CO(\Inst_pwm_servo/add_22/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i16  (.I0(\Inst_pwm_servo/counter [16]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n30 ), .O(\Inst_pwm_servo/n56 [16]), 
            .CO(\Inst_pwm_servo/add_22/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i15  (.I0(\Inst_pwm_servo/counter [15]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n28 ), .O(\Inst_pwm_servo/n56 [15]), 
            .CO(\Inst_pwm_servo/add_22/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i14  (.I0(\Inst_pwm_servo/counter [14]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n26 ), .O(\Inst_pwm_servo/n56 [14]), 
            .CO(\Inst_pwm_servo/add_22/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i13  (.I0(\Inst_pwm_servo/counter [13]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n24 ), .O(\Inst_pwm_servo/n56 [13]), 
            .CO(\Inst_pwm_servo/add_22/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i12  (.I0(\Inst_pwm_servo/counter [12]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n22 ), .O(\Inst_pwm_servo/n56 [12]), 
            .CO(\Inst_pwm_servo/add_22/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i11  (.I0(\Inst_pwm_servo/counter [11]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n20 ), .O(\Inst_pwm_servo/n56 [11]), 
            .CO(\Inst_pwm_servo/add_22/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i10  (.I0(\Inst_pwm_servo/counter [10]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n18 ), .O(\Inst_pwm_servo/n56 [10]), 
            .CO(\Inst_pwm_servo/add_22/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i9  (.I0(\Inst_pwm_servo/counter [9]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n16 ), .O(\Inst_pwm_servo/n56 [9]), 
            .CO(\Inst_pwm_servo/add_22/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i8  (.I0(\Inst_pwm_servo/counter [8]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n14 ), .O(\Inst_pwm_servo/n56 [8]), 
            .CO(\Inst_pwm_servo/add_22/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i7  (.I0(\Inst_pwm_servo/counter [7]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n12 ), .O(\Inst_pwm_servo/n56 [7]), 
            .CO(\Inst_pwm_servo/add_22/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i6  (.I0(\Inst_pwm_servo/counter [6]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n10 ), .O(\Inst_pwm_servo/n56 [6]), 
            .CO(\Inst_pwm_servo/add_22/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i5  (.I0(\Inst_pwm_servo/counter [5]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n8 ), .O(\Inst_pwm_servo/n56 [5]), 
            .CO(\Inst_pwm_servo/add_22/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_22/i4  (.I0(\Inst_pwm_servo/counter [4]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_22/n6 ), .O(\Inst_pwm_servo/n56 [4]), 
            .CO(\Inst_pwm_servo/add_22/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_22/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_22/i4 .I1_POLARITY = 1'b1;
    EFX_MULT \Inst_pwm_servo/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            angle_reg[7], \Inst_pwm_servo/safe_angle[6] , \Inst_pwm_servo/safe_angle[5] , 
            \Inst_pwm_servo/safe_angle[4] , \Inst_pwm_servo/safe_angle[3] , 
            \Inst_pwm_servo/safe_angle[2] , \Inst_pwm_servo/safe_angle[1] , 
            \Inst_pwm_servo/safe_angle[0] }), .B({18'b000000000010111001}), 
            .O({Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, 
            Open_6, Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, 
            Open_13, Open_14, Open_15, Open_16, Open_17, Open_18, 
            Open_19, \Inst_pwm_servo/n15 , \Inst_pwm_servo/n16 , \Inst_pwm_servo/n17 , 
            \Inst_pwm_servo/n18 , \Inst_pwm_servo/n19 , \Inst_pwm_servo/n20 , 
            \Inst_pwm_servo/n21 , \Inst_pwm_servo/n22 , \Inst_pwm_servo/n23 , 
            \Inst_pwm_servo/n24 , \Inst_pwm_servo/n25 , \Inst_pwm_servo/n26 , 
            \Inst_pwm_servo/n27 , \Inst_pwm_servo/n28 , \Inst_pwm_servo/n29 , 
            \Inst_pwm_servo/n30 })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(32)
    defparam \Inst_pwm_servo/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo/mult_5 .A_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/mult_5 .RSTA_POLARITY = 1'b1;
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
    EFX_LUT4 LUT__440 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [7]), .I3(\Inst_uart_rx/bitcounter [5]), 
            .O(n227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__440.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__441 (.I0(\Inst_uart_rx/bitcounter [2]), .I1(\Inst_uart_rx/bitcounter [3]), 
            .I2(\Inst_uart_rx/bitcounter [4]), .I3(\Inst_uart_rx/bitcounter [6]), 
            .O(n228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__441.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__442 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(n227), .I2(n228), 
            .O(n229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__442.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__443 (.I0(\Inst_uart_rx/state [1]), .I1(n229), .O(n230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__443.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__444 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(\Inst_uart_rx/bit_idx [1]), .I3(\Inst_uart_rx/state [0]), 
            .O(n231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__444.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__445 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .O(n232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__445.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__446 (.I0(\Inst_uart_rx/bitcounter [3]), .I1(n232), .O(n233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__446.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__447 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [6]), 
            .I2(\Inst_uart_rx/bitcounter [8]), .I3(\Inst_uart_rx/bitcounter [7]), 
            .O(n234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__447.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__448 (.I0(\Inst_uart_rx/bitcounter [5]), .I1(n233), .I2(n234), 
            .O(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__448.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__449 (.I0(\Inst_uart_rx/state [1]), .I1(\Inst_uart_rx/rx_sync2 ), 
            .I2(\Inst_uart_rx/state [0]), .I3(n235), .O(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__449.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__450 (.I0(n231), .I1(n230), .I2(n236), .I3(rst_n_i), 
            .O(ceg_net36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__450.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__451 (.I0(n235), .I1(\Inst_uart_rx/state [0]), .I2(\Inst_uart_rx/state [1]), 
            .O(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__451.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__452 (.I0(n231), .I1(n230), .I2(rst_n_i), .O(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__452.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__453 (.I0(\Inst_uart_rx/rx_sync2 ), .I1(\Inst_uart_rx/state [0]), 
            .I2(n237), .I3(n238), .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(50)
    defparam LUT__453.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__454 (.I0(n230), .I1(n237), .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__454.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__455 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(n239), .O(\Inst_uart_rx/n156 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__455.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__456 (.I0(\Inst_uart_rx/state [0]), .I1(n230), .O(\Inst_uart_rx/n495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__456.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__457 (.I0(n229), .I1(\Inst_uart_rx/state [0]), .I2(\Inst_uart_rx/state [1]), 
            .I3(rst_n_i), .O(ceg_net40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(46)
    defparam LUT__457.LUTMASK = 16'h7c00;
    EFX_LUT4 LUT__458 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(n229), .O(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__458.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__459 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bit_idx [2]), 
            .O(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__459.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__460 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(n240), .I2(n241), 
            .O(\Inst_uart_rx/n522 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__460.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__461 (.I0(n237), .I1(\Inst_uart_rx/bitcounter [0]), .I2(\Inst_uart_rx/bitcounter [1]), 
            .O(\Inst_uart_rx/n156 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__461.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__462 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(n237), .I3(\Inst_uart_rx/bitcounter [2]), .O(\Inst_uart_rx/n156 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__462.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__463 (.I0(n237), .I1(\Inst_uart_rx/bitcounter [3]), .I2(n232), 
            .O(\Inst_uart_rx/n156 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__463.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__464 (.I0(n237), .I1(\Inst_uart_rx/bitcounter [4]), .I2(n233), 
            .O(\Inst_uart_rx/n156 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__464.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__465 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(n233), .O(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__465.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__466 (.I0(\Inst_uart_rx/bitcounter [5]), .I1(n242), .I2(n239), 
            .O(\Inst_uart_rx/n156 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__466.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__467 (.I0(\Inst_uart_rx/bitcounter [5]), .I1(n242), .I2(n237), 
            .I3(\Inst_uart_rx/bitcounter [6]), .O(\Inst_uart_rx/n156 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__467.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__468 (.I0(\Inst_uart_rx/bitcounter [5]), .I1(\Inst_uart_rx/bitcounter [6]), 
            .I2(n242), .O(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__468.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__469 (.I0(n237), .I1(\Inst_uart_rx/bitcounter [7]), .I2(n243), 
            .O(\Inst_uart_rx/n156 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__469.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__470 (.I0(\Inst_uart_rx/bitcounter [7]), .I1(n243), .I2(\Inst_uart_rx/bitcounter [8]), 
            .I3(n239), .O(\Inst_uart_rx/n156 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__470.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__471 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(n230), .I3(n241), .O(\Inst_uart_rx/n542 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__471.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__472 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(n229), .O(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__472.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__473 (.I0(\Inst_uart_rx/n169 [0]), .I1(n241), .I2(n244), 
            .O(\Inst_uart_rx/n543 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__473.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__474 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(n241), .I2(n244), 
            .O(\Inst_uart_rx/n530 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__474.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__475 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [0]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(n240), .O(\Inst_uart_rx/n532 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__475.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__476 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(n240), .O(\Inst_uart_rx/n534 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__476.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__477 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [0]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(n244), .O(\Inst_uart_rx/n536 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__477.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__478 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(n244), .O(\Inst_uart_rx/n538 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(122)
    defparam LUT__478.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__479 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/state [1]), .O(\Inst_uart_rx/n169 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__479.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__480 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__480.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__481 (.I0(angle_reg[7]), .I1(angle_reg[6]), .O(\Inst_pwm_servo/safe_angle[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__481.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__482 (.I0(angle_reg[3]), .I1(angle_reg[2]), .I2(angle_reg[4]), 
            .I3(angle_reg[5]), .O(n245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__482.LUTMASK = 16'he000;
    EFX_LUT4 LUT__483 (.I0(n245), .I1(angle_reg[6]), .I2(angle_reg[7]), 
            .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__483.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__484 (.I0(angle_reg[5]), .I1(n246), .O(\Inst_pwm_servo/safe_angle[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__484.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__485 (.I0(angle_reg[4]), .I1(n246), .O(\Inst_pwm_servo/safe_angle[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__485.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__486 (.I0(n246), .I1(angle_reg[3]), .O(\Inst_pwm_servo/safe_angle[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__486.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__487 (.I0(angle_reg[2]), .I1(n246), .O(\Inst_pwm_servo/safe_angle[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__487.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__488 (.I0(n246), .I1(angle_reg[1]), .O(\Inst_pwm_servo/safe_angle[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__488.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__489 (.I0(n246), .I1(angle_reg[0]), .O(\Inst_pwm_servo/safe_angle[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__489.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__490 (.I0(\Inst_uart_rx/rx_sync2 ), .I1(\Inst_uart_rx/state [1]), 
            .I2(\Inst_uart_rx/state [0]), .O(\Inst_uart_rx/n166 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__490.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__491 (.I0(\Inst_pwm_servo/counter [2]), .I1(\Inst_pwm_servo/counter [1]), 
            .I2(\Inst_pwm_servo/counter [3]), .I3(\Inst_pwm_servo/counter [4]), 
            .O(n247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__491.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__492 (.I0(\Inst_pwm_servo/counter [6]), .I1(\Inst_pwm_servo/counter [7]), 
            .I2(\Inst_pwm_servo/counter [8]), .I3(\Inst_pwm_servo/counter [9]), 
            .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__492.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__493 (.I0(\Inst_pwm_servo/counter [10]), .I1(\Inst_pwm_servo/counter [11]), 
            .O(n249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__493.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__494 (.I0(n247), .I1(\Inst_pwm_servo/counter [5]), .I2(n248), 
            .I3(n249), .O(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__494.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__495 (.I0(\Inst_pwm_servo/counter [14]), .I1(\Inst_pwm_servo/counter [15]), 
            .I2(\Inst_pwm_servo/counter [16]), .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__495.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__496 (.I0(\Inst_pwm_servo/counter [12]), .I1(n250), .I2(\Inst_pwm_servo/counter [13]), 
            .I3(n251), .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__496.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__497 (.I0(n252), .I1(\Inst_pwm_servo/counter [17]), .I2(\Inst_pwm_servo/counter [18]), 
            .I3(\Inst_pwm_servo/counter [19]), .O(n253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__497.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__498 (.I0(n253), .I1(\Inst_pwm_servo/n56 [4]), .O(\Inst_pwm_servo/n77 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__498.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__499 (.I0(n253), .I1(\Inst_pwm_servo/n56 [3]), .O(\Inst_pwm_servo/n77 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__499.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__500 (.I0(\Inst_pwm_servo/counter [0]), .I1(n253), .O(\Inst_pwm_servo/n77 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__500.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__501 (.I0(n253), .I1(\Inst_pwm_servo/n56 [5]), .O(\Inst_pwm_servo/n77 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__501.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__502 (.I0(n253), .I1(\Inst_pwm_servo/n56 [6]), .O(\Inst_pwm_servo/n77 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__502.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__503 (.I0(n253), .I1(\Inst_pwm_servo/n56 [2]), .O(\Inst_pwm_servo/n77 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__503.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__504 (.I0(n253), .I1(\Inst_pwm_servo/n56 [1]), .O(\Inst_pwm_servo/n77 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__504.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__505 (.I0(\Inst_pwm_servo/n30 ), .I1(\Inst_pwm_servo/n29 ), 
            .I2(\Inst_pwm_servo/n27 ), .I3(\Inst_pwm_servo/n28 ), .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__505.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__506 (.I0(\Inst_pwm_servo/n24 ), .I1(\Inst_pwm_servo/n25 ), 
            .I2(\Inst_pwm_servo/n26 ), .O(n255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__506.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__507 (.I0(\Inst_pwm_servo/n21 ), .I1(\Inst_pwm_servo/n22 ), 
            .O(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__507.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__508 (.I0(n254), .I1(n255), .I2(\Inst_pwm_servo/n23 ), 
            .I3(n256), .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__508.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__509 (.I0(\Inst_pwm_servo/n20 ), .I1(n257), .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__509.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__510 (.I0(n258), .I1(\Inst_pwm_servo/counter [11]), .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__510.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__511 (.I0(\Inst_pwm_servo/n29 ), .I1(\Inst_pwm_servo/n30 ), 
            .I2(\Inst_pwm_servo/n28 ), .I3(\Inst_pwm_servo/n27 ), .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf807 */ ;
    defparam LUT__511.LUTMASK = 16'hf807;
    EFX_LUT4 LUT__512 (.I0(\Inst_pwm_servo/counter [2]), .I1(\Inst_pwm_servo/n30 ), 
            .I2(\Inst_pwm_servo/counter [1]), .I3(\Inst_pwm_servo/n29 ), 
            .O(n261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hecba */ ;
    defparam LUT__512.LUTMASK = 16'hecba;
    EFX_LUT4 LUT__513 (.I0(\Inst_pwm_servo/n29 ), .I1(\Inst_pwm_servo/n30 ), 
            .I2(\Inst_pwm_servo/counter [3]), .I3(\Inst_pwm_servo/n28 ), 
            .O(n262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0807 */ ;
    defparam LUT__513.LUTMASK = 16'h0807;
    EFX_LUT4 LUT__514 (.I0(n262), .I1(n261), .I2(n260), .I3(\Inst_pwm_servo/counter [4]), 
            .O(n263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__514.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__515 (.I0(\Inst_pwm_servo/n26 ), .I1(\Inst_pwm_servo/counter [5]), 
            .I2(n254), .O(n264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6969 */ ;
    defparam LUT__515.LUTMASK = 16'h6969;
    EFX_LUT4 LUT__516 (.I0(\Inst_pwm_servo/counter [3]), .I1(\Inst_pwm_servo/n28 ), 
            .I2(n264), .I3(n263), .O(n265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__516.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__517 (.I0(\Inst_pwm_servo/n26 ), .I1(\Inst_pwm_servo/counter [5]), 
            .I2(n254), .I3(n260), .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9600 */ ;
    defparam LUT__517.LUTMASK = 16'h9600;
    EFX_LUT4 LUT__518 (.I0(\Inst_pwm_servo/counter [5]), .I1(\Inst_pwm_servo/n26 ), 
            .I2(n254), .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__518.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__519 (.I0(n254), .I1(\Inst_pwm_servo/n26 ), .I2(\Inst_pwm_servo/counter [6]), 
            .I3(\Inst_pwm_servo/n25 ), .O(n268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b04 */ ;
    defparam LUT__519.LUTMASK = 16'h0b04;
    EFX_LUT4 LUT__520 (.I0(n266), .I1(\Inst_pwm_servo/counter [4]), .I2(n267), 
            .I3(n268), .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__520.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__521 (.I0(n254), .I1(\Inst_pwm_servo/n26 ), .I2(\Inst_pwm_servo/n25 ), 
            .O(n270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__521.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__522 (.I0(\Inst_pwm_servo/n25 ), .I1(\Inst_pwm_servo/n26 ), 
            .O(n271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__522.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__523 (.I0(n254), .I1(n271), .I2(\Inst_pwm_servo/n24 ), 
            .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__523.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__524 (.I0(n272), .I1(\Inst_pwm_servo/counter [7]), .I2(n270), 
            .I3(\Inst_pwm_servo/counter [6]), .O(n273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__524.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__525 (.I0(n254), .I1(n255), .I2(\Inst_pwm_servo/n23 ), 
            .I3(\Inst_pwm_servo/n22 ), .O(n274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf40b */ ;
    defparam LUT__525.LUTMASK = 16'hf40b;
    EFX_LUT4 LUT__526 (.I0(n254), .I1(n271), .I2(\Inst_pwm_servo/counter [7]), 
            .I3(\Inst_pwm_servo/n24 ), .O(n275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b04 */ ;
    defparam LUT__526.LUTMASK = 16'h0b04;
    EFX_LUT4 LUT__527 (.I0(n254), .I1(n255), .I2(\Inst_pwm_servo/counter [8]), 
            .I3(\Inst_pwm_servo/n23 ), .O(n276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h040b */ ;
    defparam LUT__527.LUTMASK = 16'h040b;
    EFX_LUT4 LUT__528 (.I0(n274), .I1(\Inst_pwm_servo/counter [9]), .I2(n275), 
            .I3(n276), .O(n277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__528.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__529 (.I0(n265), .I1(n269), .I2(n273), .I3(n277), .O(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__529.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__530 (.I0(n254), .I1(n255), .I2(\Inst_pwm_servo/n23 ), 
            .I3(\Inst_pwm_servo/counter [8]), .O(n279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;
    defparam LUT__530.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__531 (.I0(n254), .I1(n255), .I2(\Inst_pwm_servo/n23 ), 
            .I3(\Inst_pwm_servo/n22 ), .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__531.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__532 (.I0(\Inst_pwm_servo/n21 ), .I1(n280), .I2(\Inst_pwm_servo/counter [10]), 
            .O(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__532.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__533 (.I0(\Inst_pwm_servo/counter [9]), .I1(n279), .I2(n274), 
            .I3(n281), .O(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0017 */ ;
    defparam LUT__533.LUTMASK = 16'h0017;
    EFX_LUT4 LUT__534 (.I0(\Inst_pwm_servo/counter [10]), .I1(\Inst_pwm_servo/n21 ), 
            .I2(n280), .O(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__534.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__535 (.I0(\Inst_pwm_servo/n20 ), .I1(n257), .I2(\Inst_pwm_servo/counter [12]), 
            .I3(\Inst_pwm_servo/n19 ), .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__535.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__536 (.I0(\Inst_pwm_servo/counter [11]), .I1(n283), .I2(n258), 
            .I3(n284), .O(n285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__536.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__537 (.I0(n278_q), .I1(n259_q), .I2(n282_q), .I3(n285_q), 
            .O(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__537.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__538 (.I0(\Inst_pwm_servo/n18 ), .I1(\Inst_pwm_servo/n19 ), 
            .I2(\Inst_pwm_servo/n20 ), .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__538.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__539 (.I0(n257), .I1(n287), .I2(\Inst_pwm_servo/n17 ), 
            .I3(\Inst_pwm_servo/n16 ), .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__539.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__540 (.I0(\Inst_pwm_servo/counter [16]), .I1(\Inst_pwm_servo/n15 ), 
            .I2(n288), .I3(\Inst_pwm_servo/counter [17]), .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40fd */ ;
    defparam LUT__540.LUTMASK = 16'h40fd;
    EFX_LUT4 LUT__541 (.I0(\Inst_pwm_servo/counter [18]), .I1(\Inst_pwm_servo/counter [19]), 
            .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__541.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__542 (.I0(n257), .I1(n287), .I2(\Inst_pwm_servo/n17 ), 
            .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__542.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__543 (.I0(n257), .I1(n287), .I2(\Inst_pwm_servo/n17 ), 
            .I3(\Inst_pwm_servo/n16 ), .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf807 */ ;
    defparam LUT__543.LUTMASK = 16'hf807;
    EFX_LUT4 LUT__544 (.I0(n292), .I1(\Inst_pwm_servo/counter [15]), .I2(n291), 
            .I3(\Inst_pwm_servo/counter [14]), .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__544.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__545 (.I0(\Inst_pwm_servo/n20 ), .I1(n257), .I2(\Inst_pwm_servo/n19 ), 
            .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__545.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__546 (.I0(\Inst_pwm_servo/n19 ), .I1(\Inst_pwm_servo/n20 ), 
            .I2(n257), .I3(\Inst_pwm_servo/n18 ), .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__546.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__547 (.I0(n295), .I1(\Inst_pwm_servo/counter [13]), .I2(n294), 
            .I3(\Inst_pwm_servo/counter [12]), .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__547.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__548 (.I0(n289_q), .I1(n290_q), .I2(n293_q), .I3(n296_q), 
            .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__548.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__549 (.I0(\Inst_pwm_servo/counter [14]), .I1(n291), .I2(\Inst_pwm_servo/counter [13]), 
            .I3(n295), .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__549.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__550 (.I0(n298_q), .I1(n289_q), .I2(n293_q), .I3(n290_q), 
            .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__550.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__551 (.I0(\Inst_pwm_servo/counter [15]), .I1(n292), .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__551.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__552 (.I0(\Inst_pwm_servo/n15 ), .I1(\Inst_pwm_servo/counter [16]), 
            .I2(n288), .I3(\Inst_pwm_servo/counter [17]), .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__552.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__553 (.I0(n301_q), .I1(n300_q), .I2(n289_q), .I3(n290_q), 
            .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__553.LUTMASK = 16'he000;
    EFX_LUT4 LUT__554 (.I0(n297), .I1(n286), .I2(n299), .I3(n302), .O(pwm_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff2 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(49)
    defparam LUT__554.LUTMASK = 16'hfff2;
    EFX_LUT4 LUT__555 (.I0(n253), .I1(\Inst_pwm_servo/n56 [7]), .O(\Inst_pwm_servo/n77 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__555.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__556 (.I0(n253), .I1(\Inst_pwm_servo/n56 [8]), .O(\Inst_pwm_servo/n77 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__556.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__557 (.I0(n253), .I1(\Inst_pwm_servo/n56 [9]), .O(\Inst_pwm_servo/n77 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__557.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__558 (.I0(n253), .I1(\Inst_pwm_servo/n56 [10]), .O(\Inst_pwm_servo/n77 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__558.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__559 (.I0(n253), .I1(\Inst_pwm_servo/n56 [11]), .O(\Inst_pwm_servo/n77 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__559.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__560 (.I0(n253), .I1(\Inst_pwm_servo/n56 [12]), .O(\Inst_pwm_servo/n77 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__560.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__561 (.I0(n253), .I1(\Inst_pwm_servo/n56 [13]), .O(\Inst_pwm_servo/n77 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__561.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__562 (.I0(n253), .I1(\Inst_pwm_servo/n56 [14]), .O(\Inst_pwm_servo/n77 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__562.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__563 (.I0(n253), .I1(\Inst_pwm_servo/n56 [15]), .O(\Inst_pwm_servo/n77 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__563.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__564 (.I0(n253), .I1(\Inst_pwm_servo/n56 [16]), .O(\Inst_pwm_servo/n77 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__564.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__565 (.I0(n253), .I1(\Inst_pwm_servo/n56 [17]), .O(\Inst_pwm_servo/n77 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__565.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__566 (.I0(n253), .I1(\Inst_pwm_servo/n56 [18]), .O(\Inst_pwm_servo/n77 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__566.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__567 (.I0(n253), .I1(\Inst_pwm_servo/n56 [19]), .O(\Inst_pwm_servo/n77 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__567.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__568 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__568.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__569 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n139 ), 
            .O(\Inst_uart_tx/n406 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(106)
    defparam LUT__569.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__570 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/state [0]), 
            .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__570.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__571 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net11)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(87)
    defparam LUT__571.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__572 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(\Inst_uart_tx/bitcounter [6]), 
            .I2(\Inst_uart_tx/bitcounter [7]), .I3(\Inst_uart_tx/bitcounter [8]), 
            .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__572.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__573 (.I0(\Inst_uart_tx/state [1]), .I1(\Inst_uart_tx/state [0]), 
            .I2(n304), .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__573.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__574 (.I0(n303), .I1(\Inst_uart_tx/state [1]), .I2(ceg_net11), 
            .I3(n305), .O(ceg_net62)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(87)
    defparam LUT__574.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__575 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n305), .O(\Inst_uart_tx/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__575.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__576 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__576.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__577 (.I0(n303), .I1(\Inst_uart_tx/state [1]), .I2(n304), 
            .I3(\Inst_uart_tx/n406 ), .O(ceg_net46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__577.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__578 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__578.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__579 (.I0(n305), .I1(\Inst_uart_tx/n136 [1]), .O(ceg_net43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    defparam LUT__579.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__580 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__580.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__581 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(n306), .I3(\Inst_uart_tx/bit_idx [0]), .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__581.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__582 (.I0(\Inst_uart_tx/data_buffer [4]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__582.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__583 (.I0(\Inst_uart_tx/data_buffer [3]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(n308), .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__583.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__584 (.I0(n309), .I1(n307), .I2(\Inst_uart_tx/bit_idx [2]), 
            .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__584.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__585 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__585.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__586 (.I0(n311), .I1(n310), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__586.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__587 (.I0(\Inst_uart_tx/state [0]), .I1(n304), .I2(\Inst_uart_tx/state [1]), 
            .O(ceg_net44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__587.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__588 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n305), .O(\Inst_uart_tx/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__588.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__589 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__589.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__590 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n312), .I2(n305), 
            .O(\Inst_uart_tx/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__590.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__591 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n312), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n305), .O(\Inst_uart_tx/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__591.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__592 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n312), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__592.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__593 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n313), .I2(n305), 
            .O(\Inst_uart_tx/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__593.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__594 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n313), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(n305), .O(\Inst_uart_tx/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__594.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__595 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__595.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__596 (.I0(n313), .I1(n314), .I2(\Inst_uart_tx/bitcounter [6]), 
            .I3(n305), .O(\Inst_uart_tx/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__596.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__597 (.I0(\Inst_uart_tx/bitcounter [6]), .I1(n313), .I2(n314), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__597.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__598 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n315), .I2(n305), 
            .O(\Inst_uart_tx/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__598.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__599 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n315), .I2(\Inst_uart_tx/bitcounter [8]), 
            .I3(n305), .O(\Inst_uart_tx/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__599.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__600 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__600.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__601 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__601.LUTMASK = 16'h7800;
    EFX_FF \pwm_out_3~FF_brt_0_brt_6  (.D(n282), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n282_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_0_brt_6 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_6 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_6 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_6 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_5  (.D(n278), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n278_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_0_brt_5 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_5 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_5 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_5 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_5 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_5 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_0_brt_7  (.D(n285), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n285_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_0_brt_7 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_7 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_7 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_0_brt_7 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_3_brt_8  (.D(n289), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n289_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_3_brt_8 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_8 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_8 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_8 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_8 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_8 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_3_brt_9  (.D(n290), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n290_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_3_brt_9 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_9 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_9 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_9 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_9 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_9 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_9 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_2_brt_10  (.D(n293), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n293_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_2_brt_10 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_10 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_10 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_10 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_10 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_10 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_10 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_1_brt_11  (.D(n296), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n296_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_1_brt_11 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_11 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_11 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_1_brt_11 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_2_brt_12  (.D(n298), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n298_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_2_brt_12 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_12 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_12 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_12 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_2_brt_12 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_12 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_2_brt_12 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_3_brt_13  (.D(n300), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n300_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_3_brt_13 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_13 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_13 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_13 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_13 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_13 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_13 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_3~FF_brt_3_brt_14  (.D(n301), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(n301_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_3~FF_brt_3_brt_14 .CLK_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_14 .CE_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_14 .SR_POLARITY = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_14 .D_POLARITY = 1'b1;
    defparam \pwm_out_3~FF_brt_3_brt_14 .SR_SYNC = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_14 .SR_VALUE = 1'b0;
    defparam \pwm_out_3~FF_brt_3_brt_14 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7691a7c4_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_7691a7c4_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_7691a7c4_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7691a7c4_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_7691a7c4_0
// module not written out since it is a black box. 
//

