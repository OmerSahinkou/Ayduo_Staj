
//
// Verific Verilog Description of module top_servo
//

module top_servo (clk_i, rst_n_i, pwm_out_0, pwm_out_1, pwm_out_2, 
            rx, tx) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(31)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(32)
    output pwm_out_0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(33)
    output pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(34)
    output pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(35)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(36)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(37)
    
    wire n179;
    wire n103;
    wire [7:0]angle_reg_1;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(89)
    
    wire tx_start_sig;
    wire [7:0]angle_reg_0;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(88)
    wire [14:0]\Inst0_pwm_servo/n24 ;
    
    wire \Inst0_pwm_servo/add_6/n8 ;
    wire [3:0]\Inst_uart_rx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(48)
    wire [14:0]\Inst2_pwm_servo/n24 ;
    
    wire \Inst2_pwm_servo/n23 ;
    wire [1:0]\Inst_uart_rx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(46)
    
    wire \Inst2_pwm_servo/add_6/n28 ;
    wire [8:0]\Inst_uart_rx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(47)
    
    wire \Inst2_pwm_servo/add_6/n26 ;
    wire [7:0]rx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(94)
    
    wire rx_valid;
    wire [7:0]\Inst_uart_rx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(49)
    
    wire \Inst_uart_rx/rx_sync1 , \Inst_uart_rx/rx_sync2 , \Inst2_pwm_servo/add_6/n24 , 
        \Inst2_pwm_servo/add_6/n22 , \Inst2_pwm_servo/add_6/n20 , \Inst2_pwm_servo/add_6/n18 , 
        \Inst2_pwm_servo/add_6/n16 , \Inst2_pwm_servo/add_6/n14 , \Inst2_pwm_servo/add_6/n12 , 
        \Inst2_pwm_servo/add_6/n10 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(49)
    wire [14:0]\Inst1_pwm_servo/n24 ;
    
    wire \Inst1_pwm_servo/n23 , \Inst1_pwm_servo/add_6/n28 , \Inst1_pwm_servo/add_6/n26 , 
        \Inst1_pwm_servo/add_6/n24 , \Inst1_pwm_servo/add_6/n22 , \Inst0_pwm_servo/add_6/n10 , 
        \Inst1_pwm_servo/add_6/n20 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    wire [8:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(47)
    
    wire \Inst1_pwm_servo/add_6/n18 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(48)
    
    wire tx_busy_sig, \Inst1_pwm_servo/add_6/n16 , \Inst1_pwm_servo/add_6/n14 , 
        \Inst1_pwm_servo/add_6/n12 , \Inst1_pwm_servo/add_6/n10 , \Inst0_pwm_servo/add_6/n6 ;
    wire [19:0]\Inst0_pwm_servo/n42 ;
    
    wire \Inst0_pwm_servo/add_20/n36 , \Inst0_pwm_servo/add_20/n34 , \Inst0_pwm_servo/add_20/n32 , 
        \Inst0_pwm_servo/add_20/n30 ;
    wire [15:0]\Inst2_pwm_servo/n6 ;
    
    wire \Inst0_pwm_servo/add_20/n28 , \Inst0_pwm_servo/add_20/n26 , \Inst0_pwm_servo/add_20/n24 , 
        \Inst0_pwm_servo/add_20/n22 , \Inst0_pwm_servo/add_20/n20 , \Inst0_pwm_servo/add_20/n18 ;
    wire [19:0]\Inst0_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst0_pwm_servo/add_20/n2 , \Inst0_pwm_servo/add_20/n16 ;
    wire [19:0]\Inst0_pwm_servo/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst0_pwm_servo/pulse_width[3] , \Inst0_pwm_servo/pulse_width[4] , 
        \Inst0_pwm_servo/pulse_width[8] , \Inst0_pwm_servo/pulse_width[14] , 
        \Inst1_pwm_servo/add_6/n8 , \Inst1_pwm_servo/add_6/n6 ;
    wire [19:0]\Inst1_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst1_pwm_servo/n42 ;
    
    wire \Inst0_pwm_servo/add_20/n14 ;
    wire [19:0]\Inst1_pwm_servo/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst1_pwm_servo/pulse_width[3] , \Inst1_pwm_servo/pulse_width[4] , 
        \Inst1_pwm_servo/pulse_width[8] , \Inst1_pwm_servo/pulse_width[14] , 
        \Inst2_pwm_servo/add_6/n8 , \Inst2_pwm_servo/add_6/n6 ;
    wire [19:0]\Inst2_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst2_pwm_servo/n42 ;
    
    wire \Inst0_pwm_servo/add_6/n12 , \Inst0_pwm_servo/add_20/n12 ;
    wire [19:0]\Inst2_pwm_servo/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst2_pwm_servo/pulse_width[3] , \Inst2_pwm_servo/pulse_width[4] , 
        \Inst2_pwm_servo/pulse_width[8] , \Inst2_pwm_servo/pulse_width[14] , 
        \clk_i~O , n577, n576, n575, \Inst0_pwm_servo/add_20/n10 , 
        \Inst0_pwm_servo/add_20/n8 , \Inst0_pwm_servo/add_20/n6 , \Inst0_pwm_servo/add_20/n4 , 
        \Inst0_pwm_servo/add_6/n14 ;
    wire [15:0]\Inst0_pwm_servo/n6 ;
    
    wire \Inst0_pwm_servo/add_6/n16 , \Inst0_pwm_servo/add_6/n18 , \Inst0_pwm_servo/add_6/n20 , 
        \Inst0_pwm_servo/add_6/n22 , \Inst0_pwm_servo/add_6/n24 , \Inst0_pwm_servo/add_6/n26 ;
    wire [15:0]\Inst1_pwm_servo/n6 ;
    
    wire \Inst0_pwm_servo/add_6/n28 , \Inst0_pwm_servo/n23 ;
    wire [3:0]\Inst_uart_rx/n169 ;
    
    wire ceg_net36, ceg_net61;
    wire [8:0]\Inst_uart_rx/n156 ;
    
    wire \Inst_uart_rx/n495 , ceg_net40, \Inst_uart_rx/n522 , \Inst_uart_rx/n542 , 
        \Inst_uart_rx/n543 , \Inst_uart_rx/n530 , \Inst_uart_rx/n545 , 
        \Inst_uart_rx/n534 , \Inst_uart_rx/n547 , \Inst_uart_rx/n538 ;
    wire [1:0]\Inst_uart_rx/n166 ;
    
    wire \Inst_uart_tx/n406 , ceg_net62;
    wire [8:0]\Inst_uart_tx/n150 ;
    
    wire ceg_net11;
    wire [2:0]\Inst_uart_tx/n160 ;
    
    wire ceg_net46, \Inst_uart_tx/n139 , ceg_net43, \Inst_uart_tx/n140 , 
        ceg_net44;
    wire [1:0]\Inst_uart_tx/n136 ;
    wire [19:0]\Inst0_pwm_servo/n63 ;
    
    wire \Inst0_pwm_servo/n85 ;
    wire [19:0]\Inst1_pwm_servo/n63 ;
    
    wire \Inst1_pwm_servo/n85 ;
    wire [19:0]\Inst2_pwm_servo/n63 ;
    
    wire \Inst2_pwm_servo/n85 , n465, n466, n467, n468, n469, n470, 
        n471, n472, n473, n474, n475, n476, n477, n478, n479, 
        n480, n481, n482, n483, n484, n485, n486, n487, n488, 
        n489, n490, n491, n492, n493, n494, n495, n496, n497, 
        n498, n499, n500, n501, n502, n503, n504, n505, n506, 
        n507, n508, n509, n510, n511, n512, n513, n514, n515, 
        n516, n517, n518, n519, n520, n521, n522, n523, n524, 
        n525, n526, n527, n528, n529, n530, n531, n532, n533, 
        n534, n535, n536, n537, n538, n539, n540, n541, n542, 
        n543, n544, n545, n546, n547, n548, n549, n550, n551, 
        n552, n553, n554, n555, n556, n557, n558, n559, n560, 
        n561, n562, n563, n564, n565, n566, n567, n568, n569, 
        n570, n571, n572, n573, n574;
    
    EFX_FF \angle_reg_1[0]~FF  (.D(rx_data_sig[0]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[0]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(n103), .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[0]~FF  (.D(rx_data_sig[0]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
           .CE(\Inst_uart_rx/n545 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
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
           .CE(\Inst_uart_rx/n547 ), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_rx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(119)
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
    EFX_FF \Inst_uart_tx/data_buffer[0]~FF  (.D(angle_reg_0[0]), .CE(\Inst_uart_tx/n406 ), 
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
    EFX_FF \Inst_uart_tx/data_buffer[1]~FF  (.D(angle_reg_0[1]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[2]~FF  (.D(angle_reg_0[2]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[3]~FF  (.D(angle_reg_0[3]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[4]~FF  (.D(angle_reg_0[4]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[5]~FF  (.D(angle_reg_0[5]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[6]~FF  (.D(angle_reg_0[6]), .CE(\Inst_uart_tx/n406 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[7]~FF  (.D(angle_reg_0[7]), .CE(\Inst_uart_tx/n406 ), 
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
    EFX_FF \Inst0_pwm_servo/counter[4]~FF  (.D(\Inst0_pwm_servo/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[3]~FF  (.D(\Inst0_pwm_servo/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[2]~FF  (.D(\Inst0_pwm_servo/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[0]~FF  (.D(\Inst0_pwm_servo/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[1]~FF  (.D(\Inst0_pwm_servo/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_0~FF  (.D(\Inst0_pwm_servo/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_0)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_0~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_0~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_0~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[5]~FF  (.D(\Inst0_pwm_servo/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[6]~FF  (.D(\Inst0_pwm_servo/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[7]~FF  (.D(\Inst0_pwm_servo/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[8]~FF  (.D(\Inst0_pwm_servo/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[9]~FF  (.D(\Inst0_pwm_servo/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[10]~FF  (.D(\Inst0_pwm_servo/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[11]~FF  (.D(\Inst0_pwm_servo/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[12]~FF  (.D(\Inst0_pwm_servo/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[13]~FF  (.D(\Inst0_pwm_servo/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[14]~FF  (.D(\Inst0_pwm_servo/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[15]~FF  (.D(\Inst0_pwm_servo/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[16]~FF  (.D(\Inst0_pwm_servo/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[17]~FF  (.D(\Inst0_pwm_servo/n63 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[18]~FF  (.D(\Inst0_pwm_servo/n63 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/counter[19]~FF  (.D(\Inst0_pwm_servo/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[2]~FF  (.D(\Inst0_pwm_servo/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[3]~FF  (.D(\Inst0_pwm_servo/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[4]~FF  (.D(\Inst0_pwm_servo/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[5]~FF  (.D(\Inst0_pwm_servo/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[6]~FF  (.D(\Inst0_pwm_servo/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[7]~FF  (.D(\Inst0_pwm_servo/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[8]~FF  (.D(\Inst0_pwm_servo/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[9]~FF  (.D(\Inst0_pwm_servo/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[10]~FF  (.D(\Inst0_pwm_servo/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[11]~FF  (.D(\Inst0_pwm_servo/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[12]~FF  (.D(\Inst0_pwm_servo/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[13]~FF  (.D(\Inst0_pwm_servo/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[14]~FF  (.D(\Inst0_pwm_servo/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[15]~FF  (.D(\Inst0_pwm_servo/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst0_pwm_servo/pulse_width[16]~FF  (.D(\Inst0_pwm_servo/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst0_pwm_servo/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[4]~FF  (.D(\Inst1_pwm_servo/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[3]~FF  (.D(\Inst1_pwm_servo/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[2]~FF  (.D(\Inst1_pwm_servo/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[0]~FF  (.D(\Inst1_pwm_servo/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[1]~FF  (.D(\Inst1_pwm_servo/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_1~FF  (.D(\Inst1_pwm_servo/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_1~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_1~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_1~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[5]~FF  (.D(\Inst1_pwm_servo/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[6]~FF  (.D(\Inst1_pwm_servo/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[7]~FF  (.D(\Inst1_pwm_servo/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[8]~FF  (.D(\Inst1_pwm_servo/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[9]~FF  (.D(\Inst1_pwm_servo/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[10]~FF  (.D(\Inst1_pwm_servo/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[11]~FF  (.D(\Inst1_pwm_servo/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[12]~FF  (.D(\Inst1_pwm_servo/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[13]~FF  (.D(\Inst1_pwm_servo/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[14]~FF  (.D(\Inst1_pwm_servo/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[15]~FF  (.D(\Inst1_pwm_servo/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[16]~FF  (.D(\Inst1_pwm_servo/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/counter[19]~FF  (.D(\Inst1_pwm_servo/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[2]~FF  (.D(\Inst1_pwm_servo/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[3]~FF  (.D(\Inst1_pwm_servo/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[4]~FF  (.D(\Inst1_pwm_servo/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[5]~FF  (.D(\Inst1_pwm_servo/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[6]~FF  (.D(\Inst1_pwm_servo/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[7]~FF  (.D(\Inst1_pwm_servo/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[8]~FF  (.D(\Inst1_pwm_servo/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[9]~FF  (.D(\Inst1_pwm_servo/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[10]~FF  (.D(\Inst1_pwm_servo/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[11]~FF  (.D(\Inst1_pwm_servo/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[12]~FF  (.D(\Inst1_pwm_servo/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[13]~FF  (.D(\Inst1_pwm_servo/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[14]~FF  (.D(\Inst1_pwm_servo/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[15]~FF  (.D(\Inst1_pwm_servo/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst1_pwm_servo/pulse_width[16]~FF  (.D(\Inst1_pwm_servo/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst1_pwm_servo/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[4]~FF  (.D(\Inst2_pwm_servo/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[3]~FF  (.D(\Inst2_pwm_servo/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[2]~FF  (.D(\Inst2_pwm_servo/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[0]~FF  (.D(\Inst2_pwm_servo/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[1]~FF  (.D(\Inst2_pwm_servo/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_2~FF  (.D(\Inst2_pwm_servo/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_2~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_2~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_2~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[5]~FF  (.D(\Inst2_pwm_servo/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[6]~FF  (.D(\Inst2_pwm_servo/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[7]~FF  (.D(\Inst2_pwm_servo/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[8]~FF  (.D(\Inst2_pwm_servo/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[9]~FF  (.D(\Inst2_pwm_servo/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[10]~FF  (.D(\Inst2_pwm_servo/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[11]~FF  (.D(\Inst2_pwm_servo/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[12]~FF  (.D(\Inst2_pwm_servo/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[13]~FF  (.D(\Inst2_pwm_servo/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[14]~FF  (.D(\Inst2_pwm_servo/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[15]~FF  (.D(\Inst2_pwm_servo/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[16]~FF  (.D(\Inst2_pwm_servo/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/counter[19]~FF  (.D(\Inst2_pwm_servo/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[2]~FF  (.D(\Inst2_pwm_servo/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[3]~FF  (.D(\Inst2_pwm_servo/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[4]~FF  (.D(\Inst2_pwm_servo/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[5]~FF  (.D(\Inst2_pwm_servo/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[6]~FF  (.D(\Inst2_pwm_servo/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[7]~FF  (.D(\Inst2_pwm_servo/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[8]~FF  (.D(\Inst2_pwm_servo/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[9]~FF  (.D(\Inst2_pwm_servo/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[10]~FF  (.D(\Inst2_pwm_servo/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[11]~FF  (.D(\Inst2_pwm_servo/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[12]~FF  (.D(\Inst2_pwm_servo/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[13]~FF  (.D(\Inst2_pwm_servo/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[14]~FF  (.D(\Inst2_pwm_servo/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[15]~FF  (.D(\Inst2_pwm_servo/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst2_pwm_servo/pulse_width[16]~FF  (.D(\Inst2_pwm_servo/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst2_pwm_servo/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[1]~FF  (.D(rx_data_sig[1]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[1]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[2]~FF  (.D(rx_data_sig[2]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[2]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[3]~FF  (.D(rx_data_sig[3]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[3]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[4]~FF  (.D(rx_data_sig[4]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[4]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[5]~FF  (.D(rx_data_sig[5]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[5]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[6]~FF  (.D(rx_data_sig[6]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[6]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_1[7]~FF  (.D(rx_data_sig[7]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_1[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_1[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_1[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_1[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_1[7]~FF .D_POLARITY = 1'b0;
    defparam \angle_reg_1[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_1[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_1[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n577), .O(\Inst0_pwm_servo/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n576), .O(\Inst1_pwm_servo/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n575), .O(\Inst2_pwm_servo/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_FF \angle_reg_0[1]~FF  (.D(rx_data_sig[1]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[2]~FF  (.D(rx_data_sig[2]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[3]~FF  (.D(rx_data_sig[3]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[4]~FF  (.D(rx_data_sig[4]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[5]~FF  (.D(rx_data_sig[5]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[6]~FF  (.D(rx_data_sig[6]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_reg_0[7]~FF  (.D(rx_data_sig[7]), .CE(rx_valid), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_reg_0[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(173)
    defparam \angle_reg_0[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_reg_0[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_reg_0[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_reg_0[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_reg_0[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_reg_0[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_reg_0[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i4  (.I0(1'b1), .I1(\Inst0_pwm_servo/n6 [4]), 
            .CI(\Inst0_pwm_servo/add_6/n6 ), .O(\Inst0_pwm_servo/n24 [3]), 
            .CO(\Inst0_pwm_servo/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i15  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [15]), 
            .CI(\Inst2_pwm_servo/add_6/n28 ), .O(\Inst2_pwm_servo/n24 [14]), 
            .CO(n575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i14  (.I0(1'b1), .I1(\Inst2_pwm_servo/n6 [14]), 
            .CI(\Inst2_pwm_servo/add_6/n26 ), .O(\Inst2_pwm_servo/n24 [13]), 
            .CO(\Inst2_pwm_servo/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i13  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [13]), 
            .CI(\Inst2_pwm_servo/add_6/n24 ), .O(\Inst2_pwm_servo/n24 [12]), 
            .CO(\Inst2_pwm_servo/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i12  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [12]), 
            .CI(\Inst2_pwm_servo/add_6/n22 ), .O(\Inst2_pwm_servo/n24 [11]), 
            .CO(\Inst2_pwm_servo/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i11  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [11]), 
            .CI(\Inst2_pwm_servo/add_6/n20 ), .O(\Inst2_pwm_servo/n24 [10]), 
            .CO(\Inst2_pwm_servo/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i10  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [10]), 
            .CI(\Inst2_pwm_servo/add_6/n18 ), .O(\Inst2_pwm_servo/n24 [9]), 
            .CO(\Inst2_pwm_servo/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i9  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [9]), 
            .CI(\Inst2_pwm_servo/add_6/n16 ), .O(\Inst2_pwm_servo/n24 [8]), 
            .CO(\Inst2_pwm_servo/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i8  (.I0(1'b1), .I1(\Inst2_pwm_servo/n6 [8]), 
            .CI(\Inst2_pwm_servo/add_6/n14 ), .O(\Inst2_pwm_servo/n24 [7]), 
            .CO(\Inst2_pwm_servo/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i7  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [7]), 
            .CI(\Inst2_pwm_servo/add_6/n12 ), .O(\Inst2_pwm_servo/n24 [6]), 
            .CO(\Inst2_pwm_servo/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i6  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [6]), 
            .CI(\Inst2_pwm_servo/add_6/n10 ), .O(\Inst2_pwm_servo/n24 [5]), 
            .CO(\Inst2_pwm_servo/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i5  (.I0(1'b0), .I1(\Inst2_pwm_servo/n6 [5]), 
            .CI(\Inst2_pwm_servo/add_6/n8 ), .O(\Inst2_pwm_servo/n24 [4]), 
            .CO(\Inst2_pwm_servo/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i15  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [15]), 
            .CI(\Inst1_pwm_servo/add_6/n28 ), .O(\Inst1_pwm_servo/n24 [14]), 
            .CO(n576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i14  (.I0(1'b1), .I1(\Inst1_pwm_servo/n6 [14]), 
            .CI(\Inst1_pwm_servo/add_6/n26 ), .O(\Inst1_pwm_servo/n24 [13]), 
            .CO(\Inst1_pwm_servo/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i13  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [13]), 
            .CI(\Inst1_pwm_servo/add_6/n24 ), .O(\Inst1_pwm_servo/n24 [12]), 
            .CO(\Inst1_pwm_servo/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i12  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [12]), 
            .CI(\Inst1_pwm_servo/add_6/n22 ), .O(\Inst1_pwm_servo/n24 [11]), 
            .CO(\Inst1_pwm_servo/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i11  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [11]), 
            .CI(\Inst1_pwm_servo/add_6/n20 ), .O(\Inst1_pwm_servo/n24 [10]), 
            .CO(\Inst1_pwm_servo/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i5  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [5]), 
            .CI(\Inst0_pwm_servo/add_6/n8 ), .O(\Inst0_pwm_servo/n24 [4]), 
            .CO(\Inst0_pwm_servo/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i10  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [10]), 
            .CI(\Inst1_pwm_servo/add_6/n18 ), .O(\Inst1_pwm_servo/n24 [9]), 
            .CO(\Inst1_pwm_servo/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i9  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [9]), 
            .CI(\Inst1_pwm_servo/add_6/n16 ), .O(\Inst1_pwm_servo/n24 [8]), 
            .CO(\Inst1_pwm_servo/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i8  (.I0(1'b1), .I1(\Inst1_pwm_servo/n6 [8]), 
            .CI(\Inst1_pwm_servo/add_6/n14 ), .O(\Inst1_pwm_servo/n24 [7]), 
            .CO(\Inst1_pwm_servo/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i7  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [7]), 
            .CI(\Inst1_pwm_servo/add_6/n12 ), .O(\Inst1_pwm_servo/n24 [6]), 
            .CO(\Inst1_pwm_servo/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i6  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [6]), 
            .CI(\Inst1_pwm_servo/add_6/n10 ), .O(\Inst1_pwm_servo/n24 [5]), 
            .CO(\Inst1_pwm_servo/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i5  (.I0(1'b0), .I1(\Inst1_pwm_servo/n6 [5]), 
            .CI(\Inst1_pwm_servo/add_6/n8 ), .O(\Inst1_pwm_servo/n24 [4]), 
            .CO(\Inst1_pwm_servo/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i3  (.I0(1'b1), .I1(\Inst0_pwm_servo/n6 [3]), 
            .CI(1'b0), .CO(\Inst0_pwm_servo/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i19  (.I0(\Inst0_pwm_servo/counter [19]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n36 ), .O(\Inst0_pwm_servo/n42 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i19 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i18  (.I0(\Inst0_pwm_servo/counter [18]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n34 ), .O(\Inst0_pwm_servo/n42 [18]), 
            .CO(\Inst0_pwm_servo/add_20/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i18 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i17  (.I0(\Inst0_pwm_servo/counter [17]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n32 ), .O(\Inst0_pwm_servo/n42 [17]), 
            .CO(\Inst0_pwm_servo/add_20/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i17 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i16  (.I0(\Inst0_pwm_servo/counter [16]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n30 ), .O(\Inst0_pwm_servo/n42 [16]), 
            .CO(\Inst0_pwm_servo/add_20/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i16 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i15  (.I0(\Inst0_pwm_servo/counter [15]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n28 ), .O(\Inst0_pwm_servo/n42 [15]), 
            .CO(\Inst0_pwm_servo/add_20/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i15 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i14  (.I0(\Inst0_pwm_servo/counter [14]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n26 ), .O(\Inst0_pwm_servo/n42 [14]), 
            .CO(\Inst0_pwm_servo/add_20/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i14 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i13  (.I0(\Inst0_pwm_servo/counter [13]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n24 ), .O(\Inst0_pwm_servo/n42 [13]), 
            .CO(\Inst0_pwm_servo/add_20/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i13 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i12  (.I0(\Inst0_pwm_servo/counter [12]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n22 ), .O(\Inst0_pwm_servo/n42 [12]), 
            .CO(\Inst0_pwm_servo/add_20/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i12 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i11  (.I0(\Inst0_pwm_servo/counter [11]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n20 ), .O(\Inst0_pwm_servo/n42 [11]), 
            .CO(\Inst0_pwm_servo/add_20/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i11 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i10  (.I0(\Inst0_pwm_servo/counter [10]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n18 ), .O(\Inst0_pwm_servo/n42 [10]), 
            .CO(\Inst0_pwm_servo/add_20/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i10 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i9  (.I0(\Inst0_pwm_servo/counter [9]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n16 ), .O(\Inst0_pwm_servo/n42 [9]), 
            .CO(\Inst0_pwm_servo/add_20/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i9 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i1  (.I0(\Inst0_pwm_servo/counter [1]), 
            .I1(\Inst0_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst0_pwm_servo/n42 [1]), 
            .CO(\Inst0_pwm_servo/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i8  (.I0(\Inst0_pwm_servo/counter [8]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n14 ), .O(\Inst0_pwm_servo/n42 [8]), 
            .CO(\Inst0_pwm_servo/add_20/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i8 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i4  (.I0(1'b1), .I1(\Inst1_pwm_servo/n6 [4]), 
            .CI(\Inst1_pwm_servo/add_6/n6 ), .O(\Inst1_pwm_servo/n24 [3]), 
            .CO(\Inst1_pwm_servo/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_6/i3  (.I0(1'b1), .I1(\Inst1_pwm_servo/n6 [3]), 
            .CI(1'b0), .CO(\Inst1_pwm_servo/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst1_pwm_servo/add_20/i1  (.I0(\Inst1_pwm_servo/counter [1]), 
            .I1(\Inst1_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst1_pwm_servo/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst1_pwm_servo/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i7  (.I0(\Inst0_pwm_servo/counter [7]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n12 ), .O(\Inst0_pwm_servo/n42 [7]), 
            .CO(\Inst0_pwm_servo/add_20/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i7 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i4  (.I0(1'b1), .I1(\Inst2_pwm_servo/n6 [4]), 
            .CI(\Inst2_pwm_servo/add_6/n6 ), .O(\Inst2_pwm_servo/n24 [3]), 
            .CO(\Inst2_pwm_servo/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_6/i3  (.I0(1'b1), .I1(\Inst2_pwm_servo/n6 [3]), 
            .CI(1'b0), .CO(\Inst2_pwm_servo/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst2_pwm_servo/add_20/i1  (.I0(\Inst2_pwm_servo/counter [1]), 
            .I1(\Inst2_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst2_pwm_servo/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst2_pwm_servo/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i6  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [6]), 
            .CI(\Inst0_pwm_servo/add_6/n10 ), .O(\Inst0_pwm_servo/n24 [5]), 
            .CO(\Inst0_pwm_servo/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i6  (.I0(\Inst0_pwm_servo/counter [6]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n10 ), .O(\Inst0_pwm_servo/n42 [6]), 
            .CO(\Inst0_pwm_servo/add_20/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i6 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i5  (.I0(\Inst0_pwm_servo/counter [5]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n8 ), .O(\Inst0_pwm_servo/n42 [5]), 
            .CO(\Inst0_pwm_servo/add_20/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i5 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i4  (.I0(\Inst0_pwm_servo/counter [4]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n6 ), .O(\Inst0_pwm_servo/n42 [4]), 
            .CO(\Inst0_pwm_servo/add_20/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i4 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i3  (.I0(\Inst0_pwm_servo/counter [3]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n4 ), .O(\Inst0_pwm_servo/n42 [3]), 
            .CO(\Inst0_pwm_servo/add_20/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i3 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_20/i2  (.I0(\Inst0_pwm_servo/counter [2]), 
            .I1(1'b0), .CI(\Inst0_pwm_servo/add_20/n2 ), .O(\Inst0_pwm_servo/n42 [2]), 
            .CO(\Inst0_pwm_servo/add_20/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst0_pwm_servo/add_20/i2 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_20/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i7  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [7]), 
            .CI(\Inst0_pwm_servo/add_6/n12 ), .O(\Inst0_pwm_servo/n24 [6]), 
            .CO(\Inst0_pwm_servo/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i8  (.I0(1'b1), .I1(\Inst0_pwm_servo/n6 [8]), 
            .CI(\Inst0_pwm_servo/add_6/n14 ), .O(\Inst0_pwm_servo/n24 [7]), 
            .CO(\Inst0_pwm_servo/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i9  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [9]), 
            .CI(\Inst0_pwm_servo/add_6/n16 ), .O(\Inst0_pwm_servo/n24 [8]), 
            .CO(\Inst0_pwm_servo/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i10  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [10]), 
            .CI(\Inst0_pwm_servo/add_6/n18 ), .O(\Inst0_pwm_servo/n24 [9]), 
            .CO(\Inst0_pwm_servo/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i11  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [11]), 
            .CI(\Inst0_pwm_servo/add_6/n20 ), .O(\Inst0_pwm_servo/n24 [10]), 
            .CO(\Inst0_pwm_servo/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i12  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [12]), 
            .CI(\Inst0_pwm_servo/add_6/n22 ), .O(\Inst0_pwm_servo/n24 [11]), 
            .CO(\Inst0_pwm_servo/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i13  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [13]), 
            .CI(\Inst0_pwm_servo/add_6/n24 ), .O(\Inst0_pwm_servo/n24 [12]), 
            .CO(\Inst0_pwm_servo/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i14  (.I0(1'b1), .I1(\Inst0_pwm_servo/n6 [14]), 
            .CI(\Inst0_pwm_servo/add_6/n26 ), .O(\Inst0_pwm_servo/n24 [13]), 
            .CO(\Inst0_pwm_servo/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst0_pwm_servo/add_6/i15  (.I0(1'b0), .I1(\Inst0_pwm_servo/n6 [15]), 
            .CI(\Inst0_pwm_servo/add_6/n28 ), .O(\Inst0_pwm_servo/n24 [14]), 
            .CO(n577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_MULT \Inst2_pwm_servo/mult_5  (.CLK(\clk_i~O ), .CEA(n179), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            rx_data_sig}), .B({18'b000000000000111101}), .O({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, \Inst2_pwm_servo/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b1, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b1, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst2_pwm_servo/mult_5 .WIDTH = 18;
    defparam \Inst2_pwm_servo/mult_5 .A_REG = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .B_REG = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .O_REG = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTA_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTA_SYNC = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst2_pwm_servo/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst2_pwm_servo/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_MULT \Inst0_pwm_servo/mult_5  (.CLK(\clk_i~O ), .CEA(rx_valid), 
            .RSTA(rst_n_i), .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), 
            .A({10'b0000000000, rx_data_sig}), .B({18'b000000000000111101}), 
            .O({Open_22, Open_23, Open_24, Open_25, Open_26, Open_27, 
            Open_28, Open_29, Open_30, Open_31, Open_32, Open_33, 
            Open_34, Open_35, Open_36, Open_37, Open_38, Open_39, 
            Open_40, Open_41, Open_42, Open_43, \Inst0_pwm_servo/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b1, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b0, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst0_pwm_servo/mult_5 .WIDTH = 18;
    defparam \Inst0_pwm_servo/mult_5 .A_REG = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .B_REG = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .O_REG = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .RSTA_POLARITY = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .RSTA_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst0_pwm_servo/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst0_pwm_servo/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_MULT \Inst1_pwm_servo/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            angle_reg_1}), .B({18'b000000000000111101}), .O({Open_44, 
            Open_45, Open_46, Open_47, Open_48, Open_49, Open_50, 
            Open_51, Open_52, Open_53, Open_54, Open_55, Open_56, 
            Open_57, Open_58, Open_59, Open_60, Open_61, Open_62, 
            Open_63, Open_64, Open_65, \Inst1_pwm_servo/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst1_pwm_servo/mult_5 .WIDTH = 18;
    defparam \Inst1_pwm_servo/mult_5 .A_REG = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .B_REG = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .O_REG = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .RSTA_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .RSTA_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst1_pwm_servo/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst1_pwm_servo/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__1017 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1017.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1018 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .I3(\Inst_uart_rx/bitcounter [3]), 
            .O(n465)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1018.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1019 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [6]), 
            .I2(\Inst_uart_rx/bitcounter [7]), .I3(\Inst_uart_rx/bitcounter [5]), 
            .O(n466)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1019.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1020 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/bitcounter [8]), 
            .I2(n465), .I3(n466), .O(n467)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1020.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1021 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .O(n468)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1021.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1022 (.I0(n468), .I1(\Inst_uart_rx/state [1]), .O(n469)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1022.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1023 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .I2(\Inst_uart_rx/bitcounter [2]), .I3(\Inst_uart_rx/bitcounter [3]), 
            .O(n470)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1023.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1024 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [5]), 
            .I2(\Inst_uart_rx/bitcounter [6]), .I3(\Inst_uart_rx/bitcounter [7]), 
            .O(n471)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1024.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1025 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(n470), .I2(n471), 
            .O(n472)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1025.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1026 (.I0(\Inst_uart_rx/state [1]), .I1(\Inst_uart_rx/rx_sync2 ), 
            .I2(\Inst_uart_rx/state [0]), .I3(n472), .O(n473)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1026.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1027 (.I0(n469), .I1(n467), .I2(n473), .I3(rst_n_i), 
            .O(ceg_net36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1027.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1028 (.I0(\Inst_uart_rx/bitcounter [8]), .I1(n465), .I2(n466), 
            .O(n474)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1028.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1029 (.I0(n472), .I1(\Inst_uart_rx/state [0]), .I2(n474), 
            .I3(\Inst_uart_rx/state [1]), .O(n475)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__1029.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__1030 (.I0(n468), .I1(\Inst_uart_rx/rx_sync2 ), .I2(\Inst_uart_rx/state [0]), 
            .I3(\Inst_uart_rx/state [1]), .O(n476)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__1030.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__1031 (.I0(n476), .I1(n475), .I2(rst_n_i), .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(50)
    defparam LUT__1031.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1032 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(n475), .O(\Inst_uart_rx/n156 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1032.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1033 (.I0(\Inst_uart_rx/state [0]), .I1(\Inst_uart_rx/state [1]), 
            .I2(n474), .O(\Inst_uart_rx/n495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1033.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1034 (.I0(n474), .I1(\Inst_uart_rx/state [0]), .I2(\Inst_uart_rx/state [1]), 
            .I3(rst_n_i), .O(ceg_net40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(46)
    defparam LUT__1034.LUTMASK = 16'h7c00;
    EFX_LUT4 LUT__1035 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(n467), .O(n477)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1035.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1036 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(n477), .O(\Inst_uart_rx/n522 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1036.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1037 (.I0(n472), .I1(\Inst_uart_rx/state [0]), .I2(\Inst_uart_rx/state [1]), 
            .O(n478)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1037.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1038 (.I0(n478), .I1(\Inst_uart_rx/bitcounter [0]), .I2(\Inst_uart_rx/bitcounter [1]), 
            .O(\Inst_uart_rx/n156 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1038.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1039 (.I0(\Inst_uart_rx/bitcounter [0]), .I1(\Inst_uart_rx/bitcounter [1]), 
            .O(n479)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1039.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1040 (.I0(n478), .I1(\Inst_uart_rx/bitcounter [2]), .I2(n479), 
            .O(\Inst_uart_rx/n156 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1040.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1041 (.I0(\Inst_uart_rx/bitcounter [2]), .I1(n479), .I2(n478), 
            .I3(\Inst_uart_rx/bitcounter [3]), .O(\Inst_uart_rx/n156 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1041.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__1042 (.I0(n478), .I1(\Inst_uart_rx/bitcounter [4]), .I2(n470), 
            .O(\Inst_uart_rx/n156 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1042.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1043 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(n470), .I2(n475), 
            .I3(\Inst_uart_rx/bitcounter [5]), .O(\Inst_uart_rx/n156 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1043.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__1044 (.I0(\Inst_uart_rx/bitcounter [4]), .I1(\Inst_uart_rx/bitcounter [5]), 
            .I2(n470), .O(n480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1044.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1045 (.I0(n478), .I1(\Inst_uart_rx/bitcounter [6]), .I2(n480), 
            .O(\Inst_uart_rx/n156 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1045.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1046 (.I0(\Inst_uart_rx/bitcounter [6]), .I1(n480), .O(n481)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1046.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1047 (.I0(n478), .I1(\Inst_uart_rx/bitcounter [7]), .I2(n481), 
            .O(\Inst_uart_rx/n156 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1047.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1048 (.I0(\Inst_uart_rx/bitcounter [7]), .I1(n481), .I2(n475), 
            .I3(\Inst_uart_rx/bitcounter [8]), .O(\Inst_uart_rx/n156 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1048.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__1049 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(\Inst_uart_rx/state [1]), .I3(n477), .O(\Inst_uart_rx/n542 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1049.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1050 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/n169 [0]), 
            .I2(n477), .O(\Inst_uart_rx/n543 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1050.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1051 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(n477), .O(\Inst_uart_rx/n530 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1051.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1052 (.I0(\Inst_uart_rx/bit_idx [2]), .I1(n467), .O(n482)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1052.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1053 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/n169 [0]), 
            .I2(n482), .O(\Inst_uart_rx/n545 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1053.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1054 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/bit_idx [0]), 
            .I2(n482), .O(\Inst_uart_rx/n534 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1054.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1055 (.I0(\Inst_uart_rx/bit_idx [1]), .I1(\Inst_uart_rx/n169 [0]), 
            .I2(n482), .O(\Inst_uart_rx/n547 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1055.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1056 (.I0(n467), .I1(n468), .O(\Inst_uart_rx/n538 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(142)
    defparam LUT__1056.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1057 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/state [1]), .O(\Inst_uart_rx/n169 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1057.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1058 (.I0(\Inst_uart_rx/bit_idx [0]), .I1(\Inst_uart_rx/bit_idx [1]), 
            .I2(\Inst_uart_rx/bit_idx [2]), .I3(\Inst_uart_rx/state [1]), 
            .O(\Inst_uart_rx/n169 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1058.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1059 (.I0(\Inst_uart_rx/rx_sync2 ), .I1(\Inst_uart_rx/state [1]), 
            .I2(\Inst_uart_rx/state [0]), .O(\Inst_uart_rx/n166 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhdl(117)
    defparam LUT__1059.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__1060 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1060.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1061 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n139 ), 
            .O(\Inst_uart_tx/n406 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(126)
    defparam LUT__1061.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1062 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n483)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1062.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1063 (.I0(\Inst_uart_tx/state [1]), .I1(n483), .O(n484)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1063.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1064 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(\Inst_uart_tx/bitcounter [6]), 
            .I2(\Inst_uart_tx/bitcounter [7]), .I3(\Inst_uart_tx/bitcounter [8]), 
            .O(n485)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1064.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1065 (.I0(\Inst_uart_tx/state [0]), .I1(n484), .I2(n485), 
            .I3(\Inst_uart_tx/n406 ), .O(ceg_net62)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(91)
    defparam LUT__1065.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1066 (.I0(\Inst_uart_tx/state [1]), .I1(\Inst_uart_tx/state [0]), 
            .I2(n485), .O(n486)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1066.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1067 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n486), .O(\Inst_uart_tx/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1067.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1068 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net11)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(91)
    defparam LUT__1068.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1069 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1069.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1070 (.I0(\Inst_uart_tx/state [0]), .I1(n483), .I2(n485), 
            .I3(\Inst_uart_tx/state [1]), .O(n487)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1070.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1071 (.I0(\Inst_uart_tx/n406 ), .I1(n487), .O(ceg_net46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1071.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1072 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1072.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1073 (.I0(n486), .I1(\Inst_uart_tx/n136 [1]), .O(ceg_net43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    defparam LUT__1073.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1074 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n488)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1074.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1075 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/data_buffer [4]), 
            .I2(n488), .I3(\Inst_uart_tx/bit_idx [1]), .O(n489)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__1075.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__1076 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [3]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1076.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1077 (.I0(\Inst_uart_tx/data_buffer [5]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(n490), .O(n491)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1077.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1078 (.I0(n491), .I1(n489), .I2(\Inst_uart_tx/bit_idx [0]), 
            .O(n492)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1078.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1079 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n493)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__1079.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1080 (.I0(n493), .I1(n492), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1080.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1081 (.I0(\Inst_uart_tx/state [0]), .I1(n485), .I2(\Inst_uart_tx/state [1]), 
            .O(ceg_net44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__1081.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__1082 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n486), .O(\Inst_uart_tx/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1082.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1083 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n494)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1083.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1084 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n494), .I2(n486), 
            .O(\Inst_uart_tx/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1084.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1085 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n494), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n486), .O(\Inst_uart_tx/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1085.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1086 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n494), .O(n495)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1086.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1087 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n495), .I2(n486), 
            .O(\Inst_uart_tx/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1087.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1088 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n495), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(n486), .O(\Inst_uart_tx/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1088.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1089 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .O(n496)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1089.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1090 (.I0(n495), .I1(n496), .I2(\Inst_uart_tx/bitcounter [6]), 
            .I3(n486), .O(\Inst_uart_tx/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1090.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1091 (.I0(\Inst_uart_tx/bitcounter [6]), .I1(n495), .I2(n496), 
            .O(n497)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1091.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1092 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n497), .I2(n486), 
            .O(\Inst_uart_tx/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1092.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1093 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n497), .I2(\Inst_uart_tx/bitcounter [8]), 
            .I3(n486), .O(\Inst_uart_tx/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1093.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1094 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1094.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1095 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1095.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1096 (.I0(\Inst0_pwm_servo/counter [2]), .I1(\Inst0_pwm_servo/counter [1]), 
            .I2(\Inst0_pwm_servo/counter [3]), .I3(\Inst0_pwm_servo/counter [4]), 
            .O(n498)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__1096.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1097 (.I0(\Inst0_pwm_servo/counter [6]), .I1(\Inst0_pwm_servo/counter [7]), 
            .I2(\Inst0_pwm_servo/counter [8]), .I3(\Inst0_pwm_servo/counter [9]), 
            .O(n499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1097.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1098 (.I0(\Inst0_pwm_servo/counter [10]), .I1(\Inst0_pwm_servo/counter [11]), 
            .O(n500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1098.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1099 (.I0(n498), .I1(\Inst0_pwm_servo/counter [5]), .I2(n499), 
            .I3(n500), .O(n501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__1099.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1100 (.I0(\Inst0_pwm_servo/counter [14]), .I1(\Inst0_pwm_servo/counter [15]), 
            .I2(\Inst0_pwm_servo/counter [16]), .I3(\Inst0_pwm_servo/counter [18]), 
            .O(n502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1100.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1101 (.I0(\Inst0_pwm_servo/counter [12]), .I1(n501), .I2(\Inst0_pwm_servo/counter [13]), 
            .I3(n502), .O(n503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1101.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1102 (.I0(\Inst0_pwm_servo/counter [18]), .I1(\Inst0_pwm_servo/counter [17]), 
            .I2(\Inst0_pwm_servo/counter [19]), .O(n504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1102.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1103 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [4]), 
            .O(\Inst0_pwm_servo/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1103.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1104 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [3]), 
            .O(\Inst0_pwm_servo/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1104.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1105 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [2]), 
            .O(\Inst0_pwm_servo/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1105.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1106 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/counter [0]), 
            .O(\Inst0_pwm_servo/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1106.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1107 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [1]), 
            .O(\Inst0_pwm_servo/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1107.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1108 (.I0(\Inst0_pwm_servo/counter [8]), .I1(\Inst0_pwm_servo/pulse_width[8] ), 
            .I2(\Inst0_pwm_servo/counter [7]), .I3(\Inst0_pwm_servo/pulse_width [7]), 
            .O(n505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1108.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1109 (.I0(\Inst0_pwm_servo/counter [9]), .I1(\Inst0_pwm_servo/pulse_width [9]), 
            .I2(n505), .O(n506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__1109.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__1110 (.I0(\Inst0_pwm_servo/counter [10]), .I1(\Inst0_pwm_servo/pulse_width [10]), 
            .I2(\Inst0_pwm_servo/counter [9]), .I3(n506), .O(n507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4dd4 */ ;
    defparam LUT__1110.LUTMASK = 16'h4dd4;
    EFX_LUT4 LUT__1111 (.I0(\Inst0_pwm_servo/pulse_width [9]), .I1(\Inst0_pwm_servo/counter [9]), 
            .I2(\Inst0_pwm_servo/counter [8]), .I3(\Inst0_pwm_servo/pulse_width[8] ), 
            .O(n508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1111.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1112 (.I0(\Inst0_pwm_servo/pulse_width [10]), .I1(\Inst0_pwm_servo/counter [10]), 
            .I2(\Inst0_pwm_servo/pulse_width [7]), .I3(\Inst0_pwm_servo/counter [7]), 
            .O(n509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1112.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1113 (.I0(\Inst0_pwm_servo/counter [6]), .I1(\Inst0_pwm_servo/pulse_width [6]), 
            .I2(n508), .I3(n509), .O(n510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1113.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1114 (.I0(\Inst0_pwm_servo/counter [13]), .I1(\Inst0_pwm_servo/counter [12]), 
            .I2(\Inst0_pwm_servo/pulse_width [13]), .I3(\Inst0_pwm_servo/pulse_width [12]), 
            .O(n511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1114.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1115 (.I0(\Inst0_pwm_servo/counter [16]), .I1(\Inst0_pwm_servo/pulse_width [16]), 
            .I2(\Inst0_pwm_servo/counter [15]), .I3(\Inst0_pwm_servo/pulse_width [15]), 
            .O(n512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1115.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1116 (.I0(\Inst0_pwm_servo/counter [14]), .I1(\Inst0_pwm_servo/pulse_width[14] ), 
            .I2(n511), .I3(n512), .O(n513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__1116.LUTMASK = 16'he800;
    EFX_LUT4 LUT__1117 (.I0(\Inst0_pwm_servo/pulse_width [11]), .I1(\Inst0_pwm_servo/counter [11]), 
            .I2(n510), .I3(n513), .O(n514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__1117.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__1118 (.I0(\Inst0_pwm_servo/counter [2]), .I1(\Inst0_pwm_servo/counter [1]), 
            .I2(\Inst0_pwm_servo/pulse_width [2]), .O(n515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1118.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1119 (.I0(\Inst0_pwm_servo/pulse_width[4] ), .I1(\Inst0_pwm_servo/counter [4]), 
            .I2(\Inst0_pwm_servo/pulse_width [5]), .O(n516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1119.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1120 (.I0(\Inst0_pwm_servo/counter [3]), .I1(n515), .I2(\Inst0_pwm_servo/pulse_width[3] ), 
            .I3(n516), .O(n517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__1120.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__1121 (.I0(\Inst0_pwm_servo/pulse_width[4] ), .I1(\Inst0_pwm_servo/counter [4]), 
            .I2(\Inst0_pwm_servo/counter [5]), .O(n518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1121.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1122 (.I0(\Inst0_pwm_servo/counter [3]), .I1(n515), .I2(\Inst0_pwm_servo/pulse_width[3] ), 
            .I3(n518), .O(n519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__1122.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__1123 (.I0(\Inst0_pwm_servo/counter [5]), .I1(\Inst0_pwm_servo/pulse_width [5]), 
            .I2(\Inst0_pwm_servo/pulse_width[4] ), .I3(\Inst0_pwm_servo/counter [4]), 
            .O(n520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ddd */ ;
    defparam LUT__1123.LUTMASK = 16'h4ddd;
    EFX_LUT4 LUT__1124 (.I0(\Inst0_pwm_servo/pulse_width [6]), .I1(\Inst0_pwm_servo/counter [6]), 
            .I2(n508), .I3(n509), .O(n521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__1124.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__1125 (.I0(n517), .I1(n519), .I2(n520), .I3(n521), 
            .O(n522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1125.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1126 (.I0(\Inst0_pwm_servo/counter [14]), .I1(\Inst0_pwm_servo/pulse_width[14] ), 
            .I2(\Inst0_pwm_servo/pulse_width [13]), .I3(\Inst0_pwm_servo/counter [13]), 
            .O(n523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1126.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1127 (.I0(\Inst0_pwm_servo/pulse_width [12]), .I1(\Inst0_pwm_servo/counter [12]), 
            .I2(\Inst0_pwm_servo/pulse_width [11]), .I3(\Inst0_pwm_servo/counter [11]), 
            .O(n524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1127.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1128 (.I0(\Inst0_pwm_servo/counter [16]), .I1(\Inst0_pwm_servo/pulse_width [16]), 
            .I2(\Inst0_pwm_servo/pulse_width [15]), .I3(\Inst0_pwm_servo/counter [15]), 
            .O(n525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1128.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1129 (.I0(\Inst0_pwm_servo/counter [17]), .I1(\Inst0_pwm_servo/counter [18]), 
            .I2(\Inst0_pwm_servo/counter [19]), .I3(n525), .O(n526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1129.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1130 (.I0(n524), .I1(n523), .I2(n513), .I3(n526), 
            .O(n527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1130.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1131 (.I0(n522), .I1(n507), .I2(n514), .I3(n527), 
            .O(\Inst0_pwm_servo/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1131.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1132 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [5]), 
            .O(\Inst0_pwm_servo/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1132.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1133 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [6]), 
            .O(\Inst0_pwm_servo/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1133.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1134 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [7]), 
            .O(\Inst0_pwm_servo/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1134.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1135 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [8]), 
            .O(\Inst0_pwm_servo/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1135.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1136 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [9]), 
            .O(\Inst0_pwm_servo/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1136.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1137 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [10]), 
            .O(\Inst0_pwm_servo/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1137.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1138 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [11]), 
            .O(\Inst0_pwm_servo/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1138.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1139 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [12]), 
            .O(\Inst0_pwm_servo/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1139.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1140 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [13]), 
            .O(\Inst0_pwm_servo/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1140.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1141 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [14]), 
            .O(\Inst0_pwm_servo/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1141.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1142 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [15]), 
            .O(\Inst0_pwm_servo/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1142.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1143 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [16]), 
            .O(\Inst0_pwm_servo/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1143.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1144 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [17]), 
            .O(\Inst0_pwm_servo/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1144.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1145 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [18]), 
            .O(\Inst0_pwm_servo/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1145.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1146 (.I0(n504), .I1(n503), .I2(\Inst0_pwm_servo/n42 [19]), 
            .O(\Inst0_pwm_servo/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1146.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1147 (.I0(\Inst0_pwm_servo/counter [18]), .I1(\Inst0_pwm_servo/counter [17]), 
            .I2(\Inst1_pwm_servo/counter [19]), .O(n528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1147.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1148 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [4]), 
            .O(\Inst1_pwm_servo/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1148.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1149 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [3]), 
            .O(\Inst1_pwm_servo/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1149.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1150 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [2]), 
            .O(\Inst1_pwm_servo/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1150.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1151 (.I0(n528), .I1(n503), .I2(\Inst1_pwm_servo/counter [0]), 
            .O(\Inst1_pwm_servo/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1151.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1152 (.I0(n528), .I1(n503), .I2(\Inst1_pwm_servo/n42 [1]), 
            .O(\Inst1_pwm_servo/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1152.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1153 (.I0(\Inst1_pwm_servo/counter [2]), .I1(\Inst1_pwm_servo/counter [1]), 
            .I2(\Inst1_pwm_servo/pulse_width [2]), .O(n529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1153.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1154 (.I0(\Inst1_pwm_servo/counter [4]), .I1(\Inst1_pwm_servo/pulse_width[4] ), 
            .O(n530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1154.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1155 (.I0(\Inst1_pwm_servo/counter [3]), .I1(\Inst1_pwm_servo/pulse_width[3] ), 
            .I2(n529), .I3(n530), .O(n531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0071 */ ;
    defparam LUT__1155.LUTMASK = 16'h0071;
    EFX_LUT4 LUT__1156 (.I0(\Inst1_pwm_servo/counter [5]), .I1(\Inst1_pwm_servo/pulse_width [5]), 
            .I2(\Inst1_pwm_servo/counter [4]), .I3(\Inst1_pwm_servo/pulse_width[4] ), 
            .O(n532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__1156.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__1157 (.I0(\Inst1_pwm_servo/pulse_width [6]), .I1(\Inst1_pwm_servo/counter [6]), 
            .I2(\Inst1_pwm_servo/pulse_width [5]), .I3(\Inst1_pwm_servo/counter [5]), 
            .O(n533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1157.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1158 (.I0(\Inst1_pwm_servo/counter [7]), .I1(\Inst1_pwm_servo/pulse_width [7]), 
            .I2(\Inst1_pwm_servo/counter [6]), .I3(\Inst1_pwm_servo/pulse_width [6]), 
            .O(n534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1158.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1159 (.I0(n531), .I1(n532), .I2(n533), .I3(n534), 
            .O(n535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__1159.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1160 (.I0(\Inst1_pwm_servo/counter [14]), .I1(\Inst1_pwm_servo/pulse_width[14] ), 
            .I2(\Inst1_pwm_servo/pulse_width [13]), .I3(\Inst1_pwm_servo/counter [13]), 
            .O(n536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1160.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1161 (.I0(\Inst1_pwm_servo/pulse_width [12]), .I1(\Inst1_pwm_servo/counter [12]), 
            .I2(\Inst1_pwm_servo/pulse_width [11]), .I3(\Inst1_pwm_servo/counter [11]), 
            .O(n537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1161.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1162 (.I0(\Inst1_pwm_servo/pulse_width [10]), .I1(\Inst1_pwm_servo/counter [10]), 
            .I2(\Inst1_pwm_servo/pulse_width [9]), .I3(\Inst1_pwm_servo/counter [9]), 
            .O(n538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1162.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1163 (.I0(\Inst1_pwm_servo/counter [8]), .I1(\Inst1_pwm_servo/pulse_width[8] ), 
            .I2(\Inst1_pwm_servo/pulse_width [7]), .I3(\Inst1_pwm_servo/counter [7]), 
            .O(n539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1163.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1164 (.I0(n536), .I1(n537), .I2(n538), .I3(n539), 
            .O(n540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1164.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1165 (.I0(\Inst1_pwm_servo/counter [9]), .I1(\Inst1_pwm_servo/pulse_width [9]), 
            .I2(\Inst1_pwm_servo/counter [8]), .I3(\Inst1_pwm_servo/pulse_width[8] ), 
            .O(n541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__1165.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__1166 (.I0(n541), .I1(n538), .I2(n537), .O(n542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1166.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1167 (.I0(\Inst1_pwm_servo/counter [11]), .I1(\Inst1_pwm_servo/counter [10]), 
            .I2(\Inst1_pwm_servo/pulse_width [11]), .I3(\Inst1_pwm_servo/pulse_width [10]), 
            .O(n543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1167.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1168 (.I0(\Inst1_pwm_servo/counter [13]), .I1(\Inst1_pwm_servo/pulse_width [13]), 
            .O(n544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1168.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1169 (.I0(\Inst1_pwm_servo/counter [12]), .I1(\Inst1_pwm_servo/pulse_width [12]), 
            .I2(n543), .I3(n544), .O(n545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__1169.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__1170 (.I0(\Inst1_pwm_servo/counter [16]), .I1(\Inst1_pwm_servo/pulse_width [16]), 
            .I2(\Inst1_pwm_servo/counter [15]), .I3(\Inst1_pwm_servo/pulse_width [15]), 
            .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1170.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1171 (.I0(\Inst1_pwm_servo/pulse_width[14] ), .I1(\Inst1_pwm_servo/counter [14]), 
            .I2(n546), .O(n547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1171.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1172 (.I0(n542), .I1(n545), .I2(n536), .I3(n547), 
            .O(n548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__1172.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1173 (.I0(\Inst1_pwm_servo/counter [16]), .I1(\Inst1_pwm_servo/pulse_width [16]), 
            .I2(\Inst1_pwm_servo/pulse_width [15]), .I3(\Inst1_pwm_servo/counter [15]), 
            .O(n549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1173.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1174 (.I0(\Inst0_pwm_servo/counter [17]), .I1(\Inst0_pwm_servo/counter [18]), 
            .I2(\Inst0_pwm_servo/counter [19]), .I3(n549), .O(n550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1174.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1175 (.I0(n535), .I1(n540), .I2(n548), .I3(n550), 
            .O(\Inst1_pwm_servo/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1175.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1176 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [5]), 
            .O(\Inst1_pwm_servo/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1176.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1177 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [6]), 
            .O(\Inst1_pwm_servo/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1177.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1178 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [7]), 
            .O(\Inst1_pwm_servo/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1178.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1179 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [8]), 
            .O(\Inst1_pwm_servo/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1179.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1180 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [9]), 
            .O(\Inst1_pwm_servo/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1180.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1181 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [10]), 
            .O(\Inst1_pwm_servo/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1181.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1182 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [11]), 
            .O(\Inst1_pwm_servo/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1182.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1183 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [12]), 
            .O(\Inst1_pwm_servo/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1183.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1184 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [13]), 
            .O(\Inst1_pwm_servo/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1184.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1185 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [14]), 
            .O(\Inst1_pwm_servo/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1185.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1186 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [15]), 
            .O(\Inst1_pwm_servo/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1186.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1187 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [16]), 
            .O(\Inst1_pwm_servo/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1187.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1188 (.I0(n528), .I1(n503), .I2(\Inst0_pwm_servo/n42 [19]), 
            .O(\Inst1_pwm_servo/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1188.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1189 (.I0(\Inst0_pwm_servo/counter [18]), .I1(\Inst0_pwm_servo/counter [17]), 
            .I2(\Inst2_pwm_servo/counter [19]), .O(n551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1189.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1190 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [4]), 
            .O(\Inst2_pwm_servo/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1190.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1191 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [3]), 
            .O(\Inst2_pwm_servo/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1191.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1192 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [2]), 
            .O(\Inst2_pwm_servo/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1192.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1193 (.I0(n551), .I1(n503), .I2(\Inst2_pwm_servo/counter [0]), 
            .O(\Inst2_pwm_servo/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1193.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1194 (.I0(n551), .I1(n503), .I2(\Inst2_pwm_servo/n42 [1]), 
            .O(\Inst2_pwm_servo/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1194.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1195 (.I0(\Inst2_pwm_servo/counter [8]), .I1(\Inst2_pwm_servo/pulse_width[8] ), 
            .I2(\Inst2_pwm_servo/counter [7]), .I3(\Inst2_pwm_servo/pulse_width [7]), 
            .O(n552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1195.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1196 (.I0(\Inst2_pwm_servo/counter [9]), .I1(\Inst2_pwm_servo/pulse_width [9]), 
            .I2(n552), .O(n553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__1196.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__1197 (.I0(\Inst2_pwm_servo/counter [10]), .I1(\Inst2_pwm_servo/pulse_width [10]), 
            .I2(\Inst2_pwm_servo/counter [9]), .I3(n553), .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4dd4 */ ;
    defparam LUT__1197.LUTMASK = 16'h4dd4;
    EFX_LUT4 LUT__1198 (.I0(\Inst2_pwm_servo/pulse_width [9]), .I1(\Inst2_pwm_servo/counter [9]), 
            .I2(\Inst2_pwm_servo/counter [8]), .I3(\Inst2_pwm_servo/pulse_width[8] ), 
            .O(n555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1198.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1199 (.I0(\Inst2_pwm_servo/pulse_width [10]), .I1(\Inst2_pwm_servo/counter [10]), 
            .I2(\Inst2_pwm_servo/pulse_width [7]), .I3(\Inst2_pwm_servo/counter [7]), 
            .O(n556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1199.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1200 (.I0(\Inst2_pwm_servo/counter [6]), .I1(\Inst2_pwm_servo/pulse_width [6]), 
            .I2(n555), .I3(n556), .O(n557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1200.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1201 (.I0(\Inst2_pwm_servo/counter [13]), .I1(\Inst2_pwm_servo/counter [12]), 
            .I2(\Inst2_pwm_servo/pulse_width [13]), .I3(\Inst2_pwm_servo/pulse_width [12]), 
            .O(n558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1201.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1202 (.I0(\Inst2_pwm_servo/counter [16]), .I1(\Inst2_pwm_servo/pulse_width [16]), 
            .I2(\Inst2_pwm_servo/counter [15]), .I3(\Inst2_pwm_servo/pulse_width [15]), 
            .O(n559)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1202.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1203 (.I0(\Inst2_pwm_servo/counter [14]), .I1(\Inst2_pwm_servo/pulse_width[14] ), 
            .I2(n558), .I3(n559), .O(n560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__1203.LUTMASK = 16'he800;
    EFX_LUT4 LUT__1204 (.I0(\Inst2_pwm_servo/pulse_width [11]), .I1(\Inst2_pwm_servo/counter [11]), 
            .I2(n557), .I3(n560), .O(n561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__1204.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__1205 (.I0(\Inst2_pwm_servo/counter [2]), .I1(\Inst2_pwm_servo/counter [1]), 
            .I2(\Inst2_pwm_servo/pulse_width [2]), .O(n562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1205.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1206 (.I0(\Inst2_pwm_servo/pulse_width[4] ), .I1(\Inst2_pwm_servo/counter [4]), 
            .I2(\Inst2_pwm_servo/pulse_width [5]), .O(n563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1206.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1207 (.I0(\Inst2_pwm_servo/counter [3]), .I1(n562), .I2(\Inst2_pwm_servo/pulse_width[3] ), 
            .I3(n563), .O(n564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__1207.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__1208 (.I0(\Inst2_pwm_servo/pulse_width[4] ), .I1(\Inst2_pwm_servo/counter [4]), 
            .I2(\Inst2_pwm_servo/counter [5]), .O(n565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1208.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1209 (.I0(\Inst2_pwm_servo/counter [3]), .I1(n562), .I2(\Inst2_pwm_servo/pulse_width[3] ), 
            .I3(n565), .O(n566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__1209.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__1210 (.I0(\Inst2_pwm_servo/counter [5]), .I1(\Inst2_pwm_servo/pulse_width [5]), 
            .I2(\Inst2_pwm_servo/pulse_width[4] ), .I3(\Inst2_pwm_servo/counter [4]), 
            .O(n567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ddd */ ;
    defparam LUT__1210.LUTMASK = 16'h4ddd;
    EFX_LUT4 LUT__1211 (.I0(\Inst2_pwm_servo/pulse_width [6]), .I1(\Inst2_pwm_servo/counter [6]), 
            .I2(n555), .I3(n556), .O(n568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__1211.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__1212 (.I0(n564), .I1(n566), .I2(n567), .I3(n568), 
            .O(n569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1212.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1213 (.I0(\Inst2_pwm_servo/counter [14]), .I1(\Inst2_pwm_servo/pulse_width[14] ), 
            .I2(\Inst2_pwm_servo/pulse_width [13]), .I3(\Inst2_pwm_servo/counter [13]), 
            .O(n570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1213.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1214 (.I0(\Inst2_pwm_servo/pulse_width [12]), .I1(\Inst2_pwm_servo/counter [12]), 
            .I2(\Inst2_pwm_servo/pulse_width [11]), .I3(\Inst2_pwm_servo/counter [11]), 
            .O(n571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1214.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1215 (.I0(\Inst2_pwm_servo/counter [16]), .I1(\Inst2_pwm_servo/pulse_width [16]), 
            .I2(\Inst2_pwm_servo/pulse_width [15]), .I3(\Inst2_pwm_servo/counter [15]), 
            .O(n572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1215.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1216 (.I0(\Inst0_pwm_servo/counter [17]), .I1(\Inst0_pwm_servo/counter [18]), 
            .I2(\Inst0_pwm_servo/counter [19]), .I3(n572), .O(n573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1216.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1217 (.I0(n571), .I1(n570), .I2(n560), .I3(n573), 
            .O(n574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1217.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1218 (.I0(n569), .I1(n554), .I2(n561), .I3(n574), 
            .O(\Inst2_pwm_servo/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1218.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1219 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [5]), 
            .O(\Inst2_pwm_servo/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1219.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1220 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [6]), 
            .O(\Inst2_pwm_servo/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1220.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1221 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [7]), 
            .O(\Inst2_pwm_servo/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1221.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1222 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [8]), 
            .O(\Inst2_pwm_servo/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1222.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1223 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [9]), 
            .O(\Inst2_pwm_servo/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1223.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1224 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [10]), 
            .O(\Inst2_pwm_servo/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1224.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1225 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [11]), 
            .O(\Inst2_pwm_servo/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1225.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1226 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [12]), 
            .O(\Inst2_pwm_servo/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1226.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1227 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [13]), 
            .O(\Inst2_pwm_servo/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1227.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1228 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [14]), 
            .O(\Inst2_pwm_servo/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1228.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1229 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [15]), 
            .O(\Inst2_pwm_servo/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1229.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1230 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [16]), 
            .O(\Inst2_pwm_servo/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1230.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1231 (.I0(n551), .I1(n503), .I2(\Inst0_pwm_servo/n42 [19]), 
            .O(\Inst2_pwm_servo/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1231.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1015 (.I0(rst_n_i), .I1(rx_valid), .O(n179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1015.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1016 (.I0(tx_busy_sig), .I1(rx_valid), .O(n103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_servo.vhd(172)
    defparam LUT__1016.LUTMASK = 16'h4444;
    
endmodule

//
// Verific Verilog Description of module EFX_FF_7bbc122e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_7bbc122e_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_7bbc122e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_7bbc122e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_7bbc122e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_7bbc122e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_7bbc122e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_7bbc122e_59
// module not written out since it is a black box. 
//

