
//
// Verific Verilog Description of module top
//

module top (clk_i, rst_n_i, switch_in, pwm_out, rx, tx, spi_cs_n_o, 
            mosi_o, miso_i, sclk_o) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(23)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(24)
    input switch_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(25)
    output pwm_out /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(27)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(30)
    output spi_cs_n_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(32)
    output mosi_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(33)
    input miso_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(34)
    output sclk_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(35)
    
    wire [3:0]n249_2;
    wire [2:0]n245_2;
    wire n531;
    wire [2:0]n245;
    wire [3:0]byte_idx;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(164)
    wire [2:0]uart_state;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(163)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(142)
    
    wire tx_start_sig;
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(67)
    wire [15:0]accel_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(154)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[0] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(91)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(88)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[1] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[2] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[3] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[4] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[5] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[8] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[9] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[10] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[11] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[12] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[13] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(150)
    wire [15:0]accel_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(154)
    wire [15:0]accel_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(154)
    wire [15:0]gyro_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(155)
    wire [15:0]gyro_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(155)
    wire [15:0]gyro_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(155)
    wire [19:0]\Inst_pwm_servo/n42 ;
    
    wire \Inst_pwm_servo/add_20/n2 ;
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(151)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid, \Inst_pwm_servo/add_20/n4 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    wire [8:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(47)
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(49)
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(48)
    
    wire tx_busy_sig;
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n36 , \Inst_debounce/add_30/n34 ;
    wire [19:0]\Inst_pwm_servo/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_debounce/add_30/n2 , \Inst_debounce/add_30/n32 , \Inst_debounce/add_30/n30 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \Inst_debounce/add_30/n28 , \Inst_debounce/add_30/n26 , \Inst_debounce/sync_1 , 
        switch_out, \Inst_debounce/sync_0 , \Inst_debounce/add_30/n24 , 
        \Inst_debounce/add_30/n22 , \Inst_debounce/add_30/n20 , \Inst_debounce/add_30/n18 , 
        \Inst_debounce/add_30/n16 , \Inst_debounce/add_30/n14 , \Inst_debounce/add_30/n12 , 
        \Inst_debounce/add_30/n10 , \Inst_debounce/add_30/n8 , \Inst_debounce/add_30/n6 , 
        \Inst_debounce/add_30/n4 , \Inst_pwm_servo/add_20/n36 , \Inst_pwm_servo/add_20/n34 , 
        \Inst_pwm_servo/add_20/n32 , \Inst_pwm_servo/add_20/n30 , \Inst_pwm_servo/add_20/n28 , 
        \Inst_pwm_servo/add_20/n26 , \Inst_pwm_servo/add_20/n24 , \Inst_pwm_servo/add_20/n22 , 
        \Inst_pwm_servo/add_20/n20 , \Inst_pwm_servo/add_20/n18 , \Inst_pwm_servo/add_20/n16 , 
        \Inst_pwm_servo/add_20/n14 , \Inst_pwm_servo/add_20/n12 , \Inst_pwm_servo/add_20/n10 , 
        \Inst_pwm_servo/add_20/n8 , \Inst_pwm_servo/add_20/n6 , ceg_net322, 
        ceg_net292, ceg_net200, \~n590 ;
    wire [3:0]\Inst_MPU6500_Controller/n628 ;
    
    wire ceg_net353;
    wire [2:0]\Inst_MPU6500_Controller/n624 ;
    
    wire ceg_net315, \Inst_MPU6500_Controller/n4742 , \Inst_MPU6500_Controller/n5359 ;
    wire [21:0]\Inst_MPU6500_Controller/n633 ;
    
    wire ceg_net339, \Inst_MPU6500_Controller/n670 ;
    wire [3:0]\Inst_MPU6500_Controller/n656 ;
    
    wire ceg_net340, \Inst_MPU6500_Controller/n5366 , \Inst_MPU6500_Controller/n5373 , 
        \Inst_MPU6500_Controller/n5380 , \Inst_MPU6500_Controller/n5387 , 
        \Inst_MPU6500_Controller/n5394 , \Inst_MPU6500_Controller/n5415 , 
        \Inst_MPU6500_Controller/n5422 , \Inst_MPU6500_Controller/n5429 , 
        \Inst_MPU6500_Controller/n5436 , \Inst_MPU6500_Controller/n5443 , 
        \Inst_MPU6500_Controller/n5450 ;
    wire [7:0]\Inst_MPU6500_Controller/n661 ;
    
    wire ceg_net348, \Inst_MPU6500_Controller/n623 , ceg_net342, ceg_net349, 
        ceg_net354, ceg_net355;
    wire [3:0]\Inst_Spi_Mode_3/n129 ;
    
    wire ceg_net72, ceg_net358;
    wire [7:0]\Inst_Spi_Mode_3/n135 ;
    
    wire ceg_net230;
    wire [3:0]\Inst_Spi_Mode_3/n124 ;
    
    wire ceg_net231, \~ceg_net80 , ceg_net232, \Inst_Spi_Mode_3/n25 , 
        \Inst_Spi_Mode_3/n466 , ceg_net233, ceg_net234, ceg_net235, 
        ceg_net236, ceg_net237, ceg_net238, ceg_net239;
    wire [1:0]\Inst_Spi_Mode_3/n144 ;
    
    wire ceg_net359;
    wire [8:0]\Inst_uart_tx/n150 ;
    
    wire ceg_net101, \Inst_uart_tx/n404 ;
    wire [2:0]\Inst_uart_tx/n160 ;
    
    wire ceg_net245, \Inst_uart_tx/n139 , ceg_net242, \Inst_uart_tx/n140 , 
        ceg_net243;
    wire [1:0]\Inst_uart_tx/n136 ;
    wire [19:0]\Inst_pwm_servo/n63 ;
    
    wire \Inst_pwm_servo/n85 , \Inst_debounce/n151 , \Inst_debounce/n149 , 
        \clk_i~O , n546, n550, n554, n558, n562, n566, n570;
    wire [3:0]n249;
    
    wire n597, n598, n599, n600, n601, n602, n603, n604, n605, 
        n606, n607, n608, n609, n610, n611, n612, n613, n614, 
        n615, n616, n617, n618, n619, n620, n621, n622, n623, 
        n624, n625, n626, n627, n628, n629, n630, n631, n632, 
        n633, n634, n635, n636, n637, n638, n639, n640, n641, 
        n642, n643, n644, n645, n646, n647, n648, n649, n650, 
        n651, n652, n653, n654, n655, n656, n657, n658, n659, 
        n660, n661, n662, n663, n664, n665, n666, n667, n668, 
        n669, n670, n671, n672, n673, n674, n675, n676, n677, 
        n678, n679, n680, n681, n682, n683, n684, n685, n686, 
        n687, n688, n689, n690, n691, n692, n693, n694, n695, 
        n696, n697, n698, n699, n700, n701, n702, n703, n704, 
        n705, n706, n707, n708, n709, n710, n711, n712, n713, 
        n714, n715, n716, n717, n718, n719, n720, n721, n722, 
        n723, n724, n725, n726, n727, n728, n729, n730, n731, 
        n732, n733, n734, n735, n736, n737, n738, n739, n740, 
        n741, n742, n743, n744, n745, n746, n747, n748, n749, 
        n750, n751, n752, n753, n754, n755, n756, n757, n758, 
        n759, n760, n761, n762, n763, n764, n765, n766, n767, 
        n768, n769, n770, n771, n772, n773, n774, n775, n776, 
        n777, n778, n779, n780, n781, n782, n783, n784, n785, 
        n786, n787, n788, n789, n790, n791, n792, n793, n794, 
        n795, n796, n797, n798, n799, n800, n801, n802, n803, 
        n804, n805, n806, n807, n808, n809, n810, n811, n812, 
        n813, n814, n815, n816, n817, n818;
    
    EFX_LUT4 LUT__1242 (.I0(byte_idx[0]), .I1(n597), .I2(byte_idx[3]), 
            .I3(uart_state[2]), .O(n598)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__1242.LUTMASK = 16'hbf00;
    EFX_FF \byte_idx[0]~FF  (.D(n249_2[0]), .CE(ceg_net322), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \byte_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_state[0]~FF  (.D(n245_2[0]), .CE(ceg_net292), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \uart_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_state[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_state[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_state[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[0]~FF  (.D(n531), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(\~n590 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n628 [0]), 
           .CE(ceg_net353), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n624 [0]), 
           .CE(ceg_net315), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n633 [0]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_start~FF  (.D(\Inst_MPU6500_Controller/n670 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \spi_start~FF .CLK_POLARITY = 1'b1;
    defparam \spi_start~FF .CE_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_POLARITY = 1'b0;
    defparam \spi_start~FF .D_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_SYNC = 1'b0;
    defparam \spi_start~FF .SR_VALUE = 1'b0;
    defparam \spi_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[0]~FF  (.D(\Inst_MPU6500_Controller/n656 [0]), 
           .CE(ceg_net340), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[0]~FF  (.D(\Inst_MPU6500_Controller/n661 [0]), 
           .CE(ceg_net348), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [0]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_cs_n_o~FF  (.D(\Inst_MPU6500_Controller/n623 ), .CE(ceg_net342), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_cs_n_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \spi_cs_n_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .CE_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .SR_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .D_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC = 1'b0;
    defparam \spi_cs_n_o~FF .SR_VALUE = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n633 [1]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n633 [2]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n633 [3]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n633 [4]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n633 [5]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n633 [6]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n633 [7]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n633 [8]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n633 [9]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n633 [10]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n633 [11]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n633 [12]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n633 [13]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n633 [14]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n633 [15]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n633 [16]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n633 [17]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n633 [18]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n633 [19]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n633 [20]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n633 [21]), 
           .CE(ceg_net339), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[3]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[4]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[5]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[3]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[4]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[5]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[2] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[3]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[4]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[5]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[4] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \accel_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [1]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [2]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[3]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [3]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[4]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [4]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[5]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [5]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [6]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [7]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [0]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [1]), .CE(\Inst_MPU6500_Controller/n4742 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[8] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[3]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[4]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[5]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[10] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[3]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[4]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[5]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [0]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [1]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [2]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [3]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [4]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [5]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [6]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[12] [7]), 
           .CE(\Inst_MPU6500_Controller/n4742 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5359 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5366 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5373 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5380 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5387 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5394 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5415 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5422 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5429 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5436 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5443 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n5450 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[1]~FF  (.D(\Inst_MPU6500_Controller/n661 [1]), 
           .CE(ceg_net348), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[2]~FF  (.D(\Inst_MPU6500_Controller/n661 [2]), 
           .CE(ceg_net349), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[3]~FF  (.D(\Inst_MPU6500_Controller/n661 [3]), 
           .CE(ceg_net348), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n661 [4]), 
           .CE(ceg_net348), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n661 [5]), 
           .CE(ceg_net348), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[6]~FF  (.D(\Inst_MPU6500_Controller/n661 [6]), 
           .CE(ceg_net349), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[7]~FF  (.D(\Inst_MPU6500_Controller/n661 [7]), 
           .CE(ceg_net349), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \mpu_to_spi_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n628 [1]), 
           .CE(ceg_net353), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n628 [2]), 
           .CE(ceg_net353), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n628 [3]), 
           .CE(ceg_net353), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[1]~FF  (.D(\Inst_MPU6500_Controller/n656 [1]), 
           .CE(ceg_net340), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[2]~FF  (.D(\Inst_MPU6500_Controller/n656 [2]), 
           .CE(ceg_net354), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[3]~FF  (.D(\Inst_MPU6500_Controller/n656 [3]), 
           .CE(ceg_net355), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[1]~FF  (.D(\Inst_MPU6500_Controller/n624 [1]), 
           .CE(ceg_net315), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[2]~FF  (.D(\Inst_MPU6500_Controller/n624 [2]), 
           .CE(ceg_net315), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(273)
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[0]~FF  (.D(\Inst_Spi_Mode_3/n129 [0]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[0]~FF  (.D(\Inst_Spi_Mode_3/state [0]), 
           .CE(ceg_net358), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[0]~FF  (.D(\Inst_Spi_Mode_3/n135 [0]), 
           .CE(ceg_net230), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[0]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [0]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[0]~FF  (.D(\Inst_Spi_Mode_3/n124 [0]), 
           .CE(ceg_net231), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_data_valid~FF  (.D(ceg_net72), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(spi_data_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_data_valid~FF .CLK_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .CE_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_POLARITY = 1'b0;
    defparam \spi_data_valid~FF .D_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_SYNC = 1'b0;
    defparam \spi_data_valid~FF .SR_VALUE = 1'b0;
    defparam \spi_data_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_o~FF  (.D(\~ceg_net80 ), .CE(ceg_net232), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(sclk_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \sclk_o~FF .CLK_POLARITY = 1'b1;
    defparam \sclk_o~FF .CE_POLARITY = 1'b0;
    defparam \sclk_o~FF .SR_POLARITY = 1'b0;
    defparam \sclk_o~FF .D_POLARITY = 1'b1;
    defparam \sclk_o~FF .SR_SYNC = 1'b0;
    defparam \sclk_o~FF .SR_VALUE = 1'b1;
    defparam \sclk_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi_o~FF  (.D(\Inst_Spi_Mode_3/n25 ), .CE(\Inst_Spi_Mode_3/n466 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(mosi_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \mosi_o~FF .CLK_POLARITY = 1'b1;
    defparam \mosi_o~FF .CE_POLARITY = 1'b0;
    defparam \mosi_o~FF .SR_POLARITY = 1'b0;
    defparam \mosi_o~FF .D_POLARITY = 1'b1;
    defparam \mosi_o~FF .SR_SYNC = 1'b0;
    defparam \mosi_o~FF .SR_VALUE = 1'b0;
    defparam \mosi_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[1]~FF  (.D(\Inst_Spi_Mode_3/n135 [1]), 
           .CE(ceg_net233), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[2]~FF  (.D(\Inst_Spi_Mode_3/n135 [2]), 
           .CE(ceg_net234), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[3]~FF  (.D(\Inst_Spi_Mode_3/n135 [3]), 
           .CE(ceg_net235), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[4]~FF  (.D(\Inst_Spi_Mode_3/n135 [4]), 
           .CE(ceg_net236), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[5]~FF  (.D(\Inst_Spi_Mode_3/n135 [5]), 
           .CE(ceg_net237), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[6]~FF  (.D(\Inst_Spi_Mode_3/n135 [6]), 
           .CE(ceg_net238), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[7]~FF  (.D(\Inst_Spi_Mode_3/n135 [7]), 
           .CE(ceg_net239), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[1]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [1]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[2]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [2]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[3]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [3]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[4]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [4]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[5]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [5]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[6]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [6]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[7]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [7]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[1]~FF  (.D(\Inst_Spi_Mode_3/n129 [1]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[2]~FF  (.D(\Inst_Spi_Mode_3/n129 [2]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[3]~FF  (.D(\Inst_Spi_Mode_3/n129 [3]), 
           .CE(ceg_net72), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[1]~FF  (.D(\Inst_Spi_Mode_3/n124 [1]), 
           .CE(ceg_net231), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[2]~FF  (.D(\Inst_Spi_Mode_3/n124 [2]), 
           .CE(ceg_net231), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[1]~FF  (.D(\Inst_Spi_Mode_3/n144 [1]), .CE(ceg_net358), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net359), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n150 [0]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[0]~FF  (.D(tx_data_sig[0]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n160 [0]), .CE(ceg_net245), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n139 ), .CE(ceg_net242), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_busy_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \tx_busy_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_busy_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_busy_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n140 ), .CE(ceg_net243), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n150 [1]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n150 [2]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n150 [3]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n150 [4]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n150 [5]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[6]~FF  (.D(\Inst_uart_tx/n150 [6]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[7]~FF  (.D(\Inst_uart_tx/n150 [7]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[8]~FF  (.D(\Inst_uart_tx/n150 [8]), .CE(ceg_net101), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[1]~FF  (.D(tx_data_sig[1]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[2]~FF  (.D(tx_data_sig[2]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[3]~FF  (.D(tx_data_sig[3]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[4]~FF  (.D(tx_data_sig[4]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[5]~FF  (.D(tx_data_sig[5]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[6]~FF  (.D(tx_data_sig[6]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[7]~FF  (.D(tx_data_sig[7]), .CE(\Inst_uart_tx/n404 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n160 [1]), .CE(ceg_net245), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n160 [2]), .CE(ceg_net245), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net359), 
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
    EFX_FF \Inst_debounce/count_reg[2]~FF  (.D(\Inst_debounce/n10 [2]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[0]~FF  (.D(\Inst_debounce/count_reg [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[1]~FF  (.D(\Inst_debounce/n10 [1]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/sync_1~FF  (.D(\Inst_debounce/sync_0 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_debounce/sync_1 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/sync_1~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/sync_1~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/sync_1~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/sync_1~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/sync_1~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/sync_1~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/sync_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \switch_out~FF  (.D(\Inst_debounce/sync_1 ), .CE(\Inst_debounce/n149 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(switch_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \switch_out~FF .CLK_POLARITY = 1'b1;
    defparam \switch_out~FF .CE_POLARITY = 1'b0;
    defparam \switch_out~FF .SR_POLARITY = 1'b0;
    defparam \switch_out~FF .D_POLARITY = 1'b1;
    defparam \switch_out~FF .SR_SYNC = 1'b1;
    defparam \switch_out~FF .SR_VALUE = 1'b0;
    defparam \switch_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[3]~FF  (.D(\Inst_debounce/n10 [3]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/sync_0~FF  (.D(switch_in), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(\Inst_debounce/sync_0 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/sync_0~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/sync_0~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/sync_0~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/sync_0~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/sync_0~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/sync_0~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/sync_0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[4]~FF  (.D(\Inst_debounce/n10 [4]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[5]~FF  (.D(\Inst_debounce/n10 [5]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[6]~FF  (.D(\Inst_debounce/n10 [6]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[7]~FF  (.D(\Inst_debounce/n10 [7]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[8]~FF  (.D(\Inst_debounce/n10 [8]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[9]~FF  (.D(\Inst_debounce/n10 [9]), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[10]~FF  (.D(\Inst_debounce/n10 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[11]~FF  (.D(\Inst_debounce/n10 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[12]~FF  (.D(\Inst_debounce/n10 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[13]~FF  (.D(\Inst_debounce/n10 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[14]~FF  (.D(\Inst_debounce/n10 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[15]~FF  (.D(\Inst_debounce/n10 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[16]~FF  (.D(\Inst_debounce/n10 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[17]~FF  (.D(\Inst_debounce/n10 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[17]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[18]~FF  (.D(\Inst_debounce/n10 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[18]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_debounce/count_reg[19]~FF  (.D(\Inst_debounce/n10 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(\Inst_debounce/n151 ), .Q(\Inst_debounce/count_reg [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(62)
    defparam \Inst_debounce/count_reg[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_debounce/count_reg[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_debounce/count_reg[19]~FF .SR_SYNC = 1'b1;
    defparam \Inst_debounce/count_reg[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_debounce/count_reg[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[1]~FF  (.D(n546), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[2]~FF  (.D(n550), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[3]~FF  (.D(n554), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[4]~FF  (.D(n558), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[5]~FF  (.D(n562), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[6]~FF  (.D(n566), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[7]~FF  (.D(n570), .CE(ceg_net200), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \tx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[1]~FF  (.D(n249[1]), .CE(ceg_net322), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \byte_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[2]~FF  (.D(n249[2]), .CE(ceg_net322), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \byte_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[3]~FF  (.D(n249[3]), .CE(ceg_net322), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \byte_idx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[3]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[3]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[3]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[3]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[3]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_state[1]~FF  (.D(n245[1]), .CE(ceg_net292), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \uart_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_state[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_state[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_state[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_state[2]~FF  (.D(n245[2]), .CE(ceg_net292), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_state[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(351)
    defparam \uart_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_state[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_state[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_state[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_state[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_state[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i1  (.I0(\Inst_pwm_servo/counter [1]), 
            .I1(\Inst_pwm_servo/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo/n42 [1]), 
            .CO(\Inst_pwm_servo/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo/add_20/i2  (.I0(\Inst_pwm_servo/counter [2]), 
            .I1(1'b0), .CI(\Inst_pwm_servo/add_20/n2 ), .O(\Inst_pwm_servo/n42 [2]), 
            .CO(\Inst_pwm_servo/add_20/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo/add_20/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo/add_20/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i19  (.I0(\Inst_debounce/count_reg [19]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n36 ), .O(\Inst_debounce/n10 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i18  (.I0(\Inst_debounce/count_reg [18]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n34 ), .O(\Inst_debounce/n10 [18]), 
            .CO(\Inst_debounce/add_30/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i17  (.I0(\Inst_debounce/count_reg [17]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n32 ), .O(\Inst_debounce/n10 [17]), 
            .CO(\Inst_debounce/add_30/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i16  (.I0(\Inst_debounce/count_reg [16]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n30 ), .O(\Inst_debounce/n10 [16]), 
            .CO(\Inst_debounce/add_30/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i15  (.I0(\Inst_debounce/count_reg [15]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n28 ), .O(\Inst_debounce/n10 [15]), 
            .CO(\Inst_debounce/add_30/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i14  (.I0(\Inst_debounce/count_reg [14]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n26 ), .O(\Inst_debounce/n10 [14]), 
            .CO(\Inst_debounce/add_30/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i13  (.I0(\Inst_debounce/count_reg [13]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n24 ), .O(\Inst_debounce/n10 [13]), 
            .CO(\Inst_debounce/add_30/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i12  (.I0(\Inst_debounce/count_reg [12]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n22 ), .O(\Inst_debounce/n10 [12]), 
            .CO(\Inst_debounce/add_30/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i11  (.I0(\Inst_debounce/count_reg [11]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n20 ), .O(\Inst_debounce/n10 [11]), 
            .CO(\Inst_debounce/add_30/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i10  (.I0(\Inst_debounce/count_reg [10]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n18 ), .O(\Inst_debounce/n10 [10]), 
            .CO(\Inst_debounce/add_30/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i9  (.I0(\Inst_debounce/count_reg [9]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n16 ), .O(\Inst_debounce/n10 [9]), 
            .CO(\Inst_debounce/add_30/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i8  (.I0(\Inst_debounce/count_reg [8]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n14 ), .O(\Inst_debounce/n10 [8]), 
            .CO(\Inst_debounce/add_30/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i7  (.I0(\Inst_debounce/count_reg [7]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n12 ), .O(\Inst_debounce/n10 [7]), 
            .CO(\Inst_debounce/add_30/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i6  (.I0(\Inst_debounce/count_reg [6]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n10 ), .O(\Inst_debounce/n10 [6]), 
            .CO(\Inst_debounce/add_30/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i5  (.I0(\Inst_debounce/count_reg [5]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n8 ), .O(\Inst_debounce/n10 [5]), 
            .CO(\Inst_debounce/add_30/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i4  (.I0(\Inst_debounce/count_reg [4]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n6 ), .O(\Inst_debounce/n10 [4]), 
            .CO(\Inst_debounce/add_30/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i3  (.I0(\Inst_debounce/count_reg [3]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n4 ), .O(\Inst_debounce/n10 [3]), 
            .CO(\Inst_debounce/add_30/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i2  (.I0(\Inst_debounce/count_reg [2]), 
            .I1(1'b0), .CI(\Inst_debounce/add_30/n2 ), .O(\Inst_debounce/n10 [2]), 
            .CO(\Inst_debounce/add_30/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i2 .I1_POLARITY = 1'b1;
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
    EFX_LUT4 LUT__1243 (.I0(byte_idx[0]), .I1(n598), .O(n249_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(345)
    defparam LUT__1243.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1244 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(tx_busy_sig), 
            .I3(uart_state[2]), .O(ceg_net322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf1fe */ ;
    defparam LUT__1244.LUTMASK = 16'hf1fe;
    EFX_LUT4 LUT__1245 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(uart_state[2]), 
            .O(n245_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1616 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1245.LUTMASK = 16'h1616;
    EFX_LUT4 LUT__1246 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(tx_busy_sig), 
            .I3(uart_state[2]), .O(ceg_net292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he110 */ ;
    defparam LUT__1246.LUTMASK = 16'he110;
    EFX_LUT4 LUT__1247 (.I0(gyro_y[8]), .I1(gyro_z[8]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n599)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1247.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1248 (.I0(gyro_x[0]), .I1(gyro_y[0]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1248.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1249 (.I0(byte_idx[0]), .I1(gyro_z[0]), .I2(byte_idx[1]), 
            .O(n601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1249.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1250 (.I0(n600), .I1(n599), .I2(n601), .I3(byte_idx[2]), 
            .O(n602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__1250.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__1251 (.I0(accel_y[0]), .I1(accel_z[0]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1251.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1252 (.I0(accel_z[8]), .I1(gyro_x[8]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1252.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1253 (.I0(accel_x[8]), .I1(accel_y[8]), .I2(byte_idx[1]), 
            .O(n605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1253.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1254 (.I0(byte_idx[1]), .I1(accel_x[0]), .I2(n605), 
            .I3(byte_idx[0]), .O(n606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__1254.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__1255 (.I0(n604), .I1(n603), .I2(n606), .I3(byte_idx[2]), 
            .O(n607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__1255.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__1256 (.I0(n607), .I1(n602), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1256.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1257 (.I0(uart_state[2]), .I1(uart_state[0]), .I2(uart_state[1]), 
            .O(ceg_net200)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hebeb */ ;
    defparam LUT__1257.LUTMASK = 16'hebeb;
    EFX_LUT4 LUT__1258 (.I0(uart_state[0]), .I1(uart_state[1]), .O(\~n590 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1258.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1259 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1259.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1260 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1260.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1261 (.I0(n608), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(n609), .O(\Inst_MPU6500_Controller/n628 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1261.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__1262 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1262.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1263 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n610), .I3(\Inst_MPU6500_Controller/state [1]), .O(ceg_net353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf32f */ ;
    defparam LUT__1263.LUTMASK = 16'hf32f;
    EFX_LUT4 LUT__1264 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n624 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1264.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1265 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1265.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1266 (.I0(n611), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1266.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1267 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1267.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1268 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(switch_out), .I3(n613), .O(n614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1268.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1269 (.I0(n612), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(n614), .O(ceg_net315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1269.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1270 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n4742 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1270.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__1271 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1271.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1272 (.I0(\Inst_MPU6500_Controller/byte_cntr [3]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n615), .I3(spi_data_valid), .O(n616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1272.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1273 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n616), .O(\Inst_MPU6500_Controller/n5359 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1273.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1274 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1274.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1275 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(n618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1275.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1276 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1276.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1277 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1277.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1278 (.I0(n617), .I1(n618), .I2(n619), .I3(n620), 
            .O(n621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1278.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1279 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1279.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1280 (.I0(\Inst_MPU6500_Controller/delay_cntr [3]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [13]), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1280.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1281 (.I0(n622), .I1(n623), .O(n624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1281.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1282 (.I0(n624), .I1(n621), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1282.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1283 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1283.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1284 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1284.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1285 (.I0(n622), .I1(n623), .I2(n626), .I3(n627), 
            .O(n628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1285.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1286 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1286.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1287 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(n629), 
            .I2(n620), .O(n630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1287.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1288 (.I0(n630), .I1(n628), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1288.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1289 (.I0(n625), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n631), .I3(\Inst_MPU6500_Controller/state [3]), .O(n632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1289.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1290 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1290.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1291 (.I0(n608), .I1(n633), .I2(spi_data_valid), .O(n634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1291.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1292 (.I0(n613), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1292.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1293 (.I0(n635), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1293.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1294 (.I0(n634), .I1(n636), .O(n637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1294.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1295 (.I0(n632), .I1(n637), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n633 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc1c1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1295.LUTMASK = 16'hc1c1;
    EFX_LUT4 LUT__1296 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf05 */ ;
    defparam LUT__1296.LUTMASK = 16'hcf05;
    EFX_LUT4 LUT__1297 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1297.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1298 (.I0(n638), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n639), .O(ceg_net339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1298.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1299 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n670 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1299.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__1300 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n640)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1300.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1301 (.I0(n617), .I1(n640), .O(n641)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1301.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1302 (.I0(n628), .I1(n641), .I2(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n642)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1302.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1303 (.I0(n613), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1303.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1304 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(spi_data_valid), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1304.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1305 (.I0(n631), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n644), .O(n645)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1305.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1306 (.I0(n642), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n643), .I3(n645), .O(\Inst_MPU6500_Controller/n656 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1306.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1307 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n646)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__1307.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1308 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(switch_out), 
            .I2(n613), .I3(n646), .O(n647)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1308.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1309 (.I0(n625), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n647), .O(n648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1309.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1310 (.I0(n648), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1310.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1311 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(n616), .I3(\Inst_MPU6500_Controller/byte_cntr [0]), .O(\Inst_MPU6500_Controller/n5366 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1311.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1312 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n616), .O(\Inst_MPU6500_Controller/n5373 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1312.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1313 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n616), .O(\Inst_MPU6500_Controller/n5380 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1313.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1314 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n616), .I3(\Inst_MPU6500_Controller/byte_cntr [2]), .O(\Inst_MPU6500_Controller/n5387 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1314.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1315 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(n616), .I3(\Inst_MPU6500_Controller/byte_cntr [2]), .O(\Inst_MPU6500_Controller/n5394 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1315.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1316 (.I0(n615), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(spi_data_valid), 
            .O(n649)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1316.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1317 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n649), .O(\Inst_MPU6500_Controller/n5415 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1317.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1318 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(n649), .I3(\Inst_MPU6500_Controller/byte_cntr [0]), .O(\Inst_MPU6500_Controller/n5422 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1318.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1319 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n649), .O(\Inst_MPU6500_Controller/n5429 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1319.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1320 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n649), .O(\Inst_MPU6500_Controller/n5436 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1320.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1321 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n649), .I3(\Inst_MPU6500_Controller/byte_cntr [2]), .O(\Inst_MPU6500_Controller/n5443 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1321.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1322 (.I0(n634), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n5450 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    defparam LUT__1322.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1323 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n650)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1323.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1324 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(n651)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3001 */ ;
    defparam LUT__1324.LUTMASK = 16'h3001;
    EFX_LUT4 LUT__1325 (.I0(mpu_to_spi_data[0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n650), .I3(n651), .O(\Inst_MPU6500_Controller/n661 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1325.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1326 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(24)
    defparam LUT__1326.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__1327 (.I0(n610), .I1(n615), .I2(spi_data_valid), .O(n652)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1327.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1328 (.I0(spi_cs_n_o), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8cf */ ;
    defparam LUT__1328.LUTMASK = 16'ha8cf;
    EFX_LUT4 LUT__1329 (.I0(n652), .I1(n608), .I2(n653), .O(\Inst_MPU6500_Controller/n623 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1329.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1330 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n654)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__1330.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__1331 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n654), .O(n655)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030e */ ;
    defparam LUT__1331.LUTMASK = 16'h030e;
    EFX_LUT4 LUT__1332 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n655), .O(ceg_net342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;
    defparam LUT__1332.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__1333 (.I0(n641), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .I2(n628), .I3(n643), .O(n656)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1333.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1334 (.I0(n625), .I1(n631), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n656), .O(n657)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__1334.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__1335 (.I0(n637), .I1(n657), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I3(\Inst_MPU6500_Controller/delay_cntr [1]), .O(\Inst_MPU6500_Controller/n633 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1335.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1336 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1336.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1337 (.I0(n637), .I1(n657), .I2(n658), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(\Inst_MPU6500_Controller/n633 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1337.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1338 (.I0(n658), .I1(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n659)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1338.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1339 (.I0(n637), .I1(n632), .I2(n659), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(\Inst_MPU6500_Controller/n633 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1339.LUTMASK = 16'hab10;
    EFX_LUT4 LUT__1340 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n660)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1340.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1341 (.I0(n637), .I1(n657), .I2(n660), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n633 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1341.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1342 (.I0(n660), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(n661)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1342.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1343 (.I0(n637), .I1(n632), .I2(n661), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(\Inst_MPU6500_Controller/n633 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1343.LUTMASK = 16'hab10;
    EFX_LUT4 LUT__1344 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n662)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1344.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1345 (.I0(n660), .I1(n662), .O(n663)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1345.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1346 (.I0(n637), .I1(n632), .I2(n663), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(\Inst_MPU6500_Controller/n633 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1346.LUTMASK = 16'hab10;
    EFX_LUT4 LUT__1347 (.I0(n613), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n664)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1347.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1348 (.I0(n664), .I1(n635), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .O(n665)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1348.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1349 (.I0(n663), .I1(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n666)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1349.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1350 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n633), 
            .I2(n608), .I3(spi_data_valid), .O(n667)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1350.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1351 (.I0(n667), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n668)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1351.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1352 (.I0(n668), .I1(n665), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(n666), .O(n669)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7caf */ ;
    defparam LUT__1352.LUTMASK = 16'h7caf;
    EFX_LUT4 LUT__1353 (.I0(n625), .I1(n631), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1353.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1354 (.I0(n670), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n666), .I3(n669), .O(\Inst_MPU6500_Controller/n633 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ce8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1354.LUTMASK = 16'h3ce8;
    EFX_LUT4 LUT__1355 (.I0(n666), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .O(n671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1355.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1356 (.I0(n637), .I1(n632), .I2(n671), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(\Inst_MPU6500_Controller/n633 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1356.LUTMASK = 16'hab10;
    EFX_LUT4 LUT__1357 (.I0(n625), .I1(n631), .O(n672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1357.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1358 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1358.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1359 (.I0(n663), .I1(n673), .O(n674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1359.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1360 (.I0(n635), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [9]), .O(n675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1360.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1361 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n642), 
            .I2(n674), .I3(n675), .O(n676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__1361.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1362 (.I0(n613), .I1(n663), .I2(n673), .O(n677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1362.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1363 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1363.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1364 (.I0(n677), .I1(n634), .I2(n678), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f0a */ ;
    defparam LUT__1364.LUTMASK = 16'h3f0a;
    EFX_LUT4 LUT__1365 (.I0(n672), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n676), .I3(n679), .O(\Inst_MPU6500_Controller/n633 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1365.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__1366 (.I0(n674), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n680)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1366.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1367 (.I0(n637), .I1(n657), .I2(n680), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(\Inst_MPU6500_Controller/n633 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1367.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1368 (.I0(n677), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .O(n681)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1368.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1369 (.I0(n637), .I1(n632), .I2(n681), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(\Inst_MPU6500_Controller/n633 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1369.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1370 (.I0(n674), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(n682)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1370.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1371 (.I0(n637), .I1(n657), .I2(n682), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(\Inst_MPU6500_Controller/n633 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1371.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1372 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n683)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1372.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1373 (.I0(n660), .I1(n662), .I2(n673), .I3(n683), 
            .O(n684)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1373.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1374 (.I0(n613), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n685)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1374.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1375 (.I0(n635), .I1(n684), .I2(n667), .I3(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .O(n686)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1375.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1376 (.I0(n685), .I1(n684), .I2(n686), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n687)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__1376.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1377 (.I0(n687), .I1(n684), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(n670), .O(\Inst_MPU6500_Controller/n633 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1377.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__1378 (.I0(n684), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .O(n688)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1378.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1379 (.I0(n637), .I1(n632), .I2(n688), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(\Inst_MPU6500_Controller/n633 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1379.LUTMASK = 16'hab10;
    EFX_LUT4 LUT__1380 (.I0(n613), .I1(n684), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(\Inst_MPU6500_Controller/delay_cntr [14]), .O(n689)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1380.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1381 (.I0(n637), .I1(n632), .I2(n689), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(\Inst_MPU6500_Controller/n633 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1381.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1382 (.I0(n684), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [14]), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(n690)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1382.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1383 (.I0(n637), .I1(n657), .I2(n690), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(\Inst_MPU6500_Controller/n633 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1383.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1384 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n691)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1384.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1385 (.I0(n684), .I1(n691), .O(n692)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1385.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1386 (.I0(n637), .I1(n632), .I2(n692), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(\Inst_MPU6500_Controller/n633 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1386.LUTMASK = 16'hab10;
    EFX_LUT4 LUT__1387 (.I0(n692), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(n693)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1387.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1388 (.I0(n637), .I1(n657), .I2(n693), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(\Inst_MPU6500_Controller/n633 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1388.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1389 (.I0(n691), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .O(n694)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1389.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1390 (.I0(n635), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n694), .I3(n684), .O(n695)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__1390.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__1391 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n667), 
            .I2(n695), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), .O(n696)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f0 */ ;
    defparam LUT__1391.LUTMASK = 16'h07f0;
    EFX_LUT4 LUT__1392 (.I0(n672), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n696), .O(\Inst_MPU6500_Controller/n633 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1392.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1393 (.I0(n635), .I1(n684), .I2(n694), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n697)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1393.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1394 (.I0(n667), .I1(n697), .I2(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n698)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__1394.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__1395 (.I0(n684), .I1(n694), .I2(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n699)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1395.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1396 (.I0(n698), .I1(n699), .I2(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I3(n670), .O(\Inst_MPU6500_Controller/n633 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1396.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__1397 (.I0(n699), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [21]), .O(n700)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1397.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1398 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(n701)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1398.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1399 (.I0(n635), .I1(n684), .I2(n694), .I3(n701), 
            .O(n702)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1399.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1400 (.I0(n667), .I1(n702), .I2(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n703)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__1400.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__1401 (.I0(n670), .I1(n700), .I2(n703), .O(\Inst_MPU6500_Controller/n633 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1401.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__1402 (.I0(mpu_to_spi_data[1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n704)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__1402.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__1403 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/config_idx [0]), .I3(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(\Inst_MPU6500_Controller/n661 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1403.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1404 (.I0(n615), .I1(n704), .I2(\Inst_MPU6500_Controller/n661 [2]), 
            .O(\Inst_MPU6500_Controller/n661 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1404.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1405 (.I0(n610), .I1(n650), .I2(ceg_net348), .O(ceg_net349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(24)
    defparam LUT__1405.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1406 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(mpu_to_spi_data[3]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n705)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__1406.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__1407 (.I0(n705), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n615), .O(\Inst_MPU6500_Controller/n661 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1407.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1408 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n624 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1408.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1409 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n706)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__1409.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__1410 (.I0(mpu_to_spi_data[4]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n650), .I3(n706), .O(n707)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1410.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1411 (.I0(\Inst_MPU6500_Controller/n624 [1]), .I1(n707), 
            .O(\Inst_MPU6500_Controller/n661 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1411.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1412 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(\Inst_MPU6500_Controller/n661 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1412.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1413 (.I0(mpu_to_spi_data[5]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n650), .I3(\Inst_MPU6500_Controller/n661 [6]), .O(\Inst_MPU6500_Controller/n661 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1413.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1414 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n661 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1414.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1415 (.I0(n608), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .O(n708)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc0bf */ ;
    defparam LUT__1415.LUTMASK = 16'hc0bf;
    EFX_LUT4 LUT__1416 (.I0(n708), .I1(n609), .O(\Inst_MPU6500_Controller/n628 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1416.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1417 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(spi_data_valid), .O(n709)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1417.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1418 (.I0(n709), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(n609), .O(\Inst_MPU6500_Controller/n628 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1418.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1419 (.I0(n709), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(n609), .O(\Inst_MPU6500_Controller/n628 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1419.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1420 (.I0(n611), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n633), .O(n710)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1420.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1421 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(spi_data_valid), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n711)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1421.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1422 (.I0(n642), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n711), .I3(n668), .O(n712)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1422.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1423 (.I0(n613), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n710), .I3(n712), .O(\Inst_MPU6500_Controller/n656 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1423.LUTMASK = 16'hff01;
    EFX_LUT4 LUT__1424 (.I0(n642), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n713)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h573f */ ;
    defparam LUT__1424.LUTMASK = 16'h573f;
    EFX_LUT4 LUT__1425 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n667), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(n713), .O(\Inst_MPU6500_Controller/n656 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfccd */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1425.LUTMASK = 16'hfccd;
    EFX_LUT4 LUT__1426 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n631), 
            .O(n714)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1426.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1427 (.I0(n648), .I1(n714), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__1427.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1428 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n611), 
            .I2(n633), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n656 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1428.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__1429 (.I0(spi_data_valid), .I1(n636), .I2(\Inst_MPU6500_Controller/state [0]), 
            .I3(n656), .O(n715)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1429.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1430 (.I0(n714), .I1(n648), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n715), .O(ceg_net355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bff */ ;
    defparam LUT__1430.LUTMASK = 16'h0bff;
    EFX_LUT4 LUT__1431 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n716)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1431.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1432 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n716), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n624 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(272)
    defparam LUT__1432.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1433 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [0]), .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1433.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1434 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .I3(\Inst_Spi_Mode_3/bitcounter [3]), 
            .O(n717)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1434.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1435 (.I0(n717), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(ceg_net72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1435.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1436 (.I0(spi_start), .I1(n717), .I2(\Inst_Spi_Mode_3/state [0]), 
            .I3(\Inst_Spi_Mode_3/state [1]), .O(ceg_net358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3335 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(148)
    defparam LUT__1436.LUTMASK = 16'h3335;
    EFX_LUT4 LUT__1437 (.I0(miso_i), .I1(mpu_to_spi_data[0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1437.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1438 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(n717), .I3(\Inst_Spi_Mode_3/state [1]), .O(n718)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1438.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1439 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(spi_start), .O(n719)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1439.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1440 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n718), .I3(n719), .O(ceg_net230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1440.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1441 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1441.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__1442 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .O(n720)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1442.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1443 (.I0(n720), .I1(n717), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__1443.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1444 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net80 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__1444.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1445 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n717), .O(ceg_net232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1445.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1446 (.I0(\Inst_Spi_Mode_3/data_buffer [4]), .I1(\Inst_Spi_Mode_3/data_buffer [6]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1446.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1447 (.I0(\Inst_Spi_Mode_3/data_buffer [5]), .I1(\Inst_Spi_Mode_3/data_buffer [7]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [1]), .I3(\Inst_Spi_Mode_3/bit_idx [0]), 
            .O(n722)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1447.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1448 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n723)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1448.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1449 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n723), .O(n724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1449.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1450 (.I0(n722), .I1(n721), .I2(n724), .I3(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h110f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__1450.LUTMASK = 16'h110f;
    EFX_LUT4 LUT__1451 (.I0(\~ceg_net80 ), .I1(n717), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(219)
    defparam LUT__1451.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1452 (.I0(miso_i), .I1(mpu_to_spi_data[1]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1452.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1453 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(n718), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n719), .O(ceg_net233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1453.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1454 (.I0(miso_i), .I1(mpu_to_spi_data[2]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1454.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1455 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n718), .I3(n719), .O(ceg_net234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1455.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1456 (.I0(miso_i), .I1(mpu_to_spi_data[3]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1456.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1457 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n718), .I3(n719), .O(ceg_net235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__1457.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__1458 (.I0(miso_i), .I1(mpu_to_spi_data[4]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1458.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1459 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(n717), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I3(\Inst_Spi_Mode_3/state [1]), .O(n725)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1459.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1460 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n725), .I3(n719), .O(ceg_net236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1460.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1461 (.I0(miso_i), .I1(mpu_to_spi_data[5]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1461.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1462 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(n725), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n719), .O(ceg_net237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1462.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1463 (.I0(miso_i), .I1(mpu_to_spi_data[6]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1463.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1464 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n725), .I3(n719), .O(ceg_net238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1464.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1465 (.I0(miso_i), .I1(mpu_to_spi_data[7]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1465.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1466 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n725), .I3(n719), .O(ceg_net239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__1466.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__1467 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .I3(\Inst_Spi_Mode_3/bitcounter [0]), 
            .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1467.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__1468 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n726)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1468.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1469 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n726), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1469.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1470 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .I3(\Inst_Spi_Mode_3/bitcounter [3]), 
            .O(n727)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1470.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1471 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n727), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1471.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1472 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1472.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__1473 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .I3(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1473.LUTMASK = 16'he1ff;
    EFX_LUT4 LUT__1474 (.I0(n720), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1474.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__1475 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n728)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1475.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1476 (.I0(n728), .I1(\Inst_uart_tx/state [1]), .O(n729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1476.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1477 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/bitcounter [6]), .I3(\Inst_uart_tx/bitcounter [8]), 
            .O(n730)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1477.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1478 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1478.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1479 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n139 ), 
            .O(\Inst_uart_tx/n404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(181)
    defparam LUT__1479.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1480 (.I0(\Inst_uart_tx/state [0]), .I1(n729), .I2(n730), 
            .I3(\Inst_uart_tx/n404 ), .O(ceg_net359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(141)
    defparam LUT__1480.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1481 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .I2(n730), .O(n731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1481.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1482 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n731), .O(\Inst_uart_tx/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1482.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1483 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(141)
    defparam LUT__1483.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1484 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1484.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1485 (.I0(n728), .I1(\Inst_uart_tx/state [0]), .I2(n730), 
            .I3(\Inst_uart_tx/state [1]), .O(n732)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1485.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1486 (.I0(\Inst_uart_tx/n404 ), .I1(n732), .O(ceg_net245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1486.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1487 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1487.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1488 (.I0(n731), .I1(\Inst_uart_tx/n136 [1]), .O(ceg_net242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    defparam LUT__1488.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1489 (.I0(tx_start_sig), .I1(\Inst_uart_tx/data_buffer [0]), 
            .I2(\Inst_uart_tx/state [0]), .O(n733)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1489.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1490 (.I0(\Inst_uart_tx/data_buffer [1]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1490.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1491 (.I0(\Inst_uart_tx/data_buffer [3]), .I1(\Inst_uart_tx/data_buffer [7]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n735)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1491.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1492 (.I0(\Inst_uart_tx/data_buffer [2]), .I1(\Inst_uart_tx/data_buffer [6]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n736)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1492.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1493 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/data_buffer [4]), 
            .I2(n736), .I3(\Inst_uart_tx/bit_idx [1]), .O(n737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__1493.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__1494 (.I0(n735), .I1(n734), .I2(n737), .I3(\Inst_uart_tx/bit_idx [0]), 
            .O(n738)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__1494.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__1495 (.I0(n738), .I1(n733), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1495.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1496 (.I0(n730), .I1(\Inst_uart_tx/state [0]), .I2(\Inst_uart_tx/state [1]), 
            .O(ceg_net243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4d4 */ ;
    defparam LUT__1496.LUTMASK = 16'hd4d4;
    EFX_LUT4 LUT__1497 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n731), .O(\Inst_uart_tx/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1497.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1498 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(n731), .O(\Inst_uart_tx/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1498.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1499 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(\Inst_uart_tx/bitcounter [3]), 
            .O(n739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1499.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1500 (.I0(n739), .I1(n731), .O(\Inst_uart_tx/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1500.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1501 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(\Inst_uart_tx/bitcounter [3]), 
            .O(n740)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1501.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1502 (.I0(n740), .I1(\Inst_uart_tx/bitcounter [4]), .I2(n731), 
            .O(\Inst_uart_tx/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1502.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1503 (.I0(n740), .I1(\Inst_uart_tx/bitcounter [4]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(n731), .O(\Inst_uart_tx/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1503.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1504 (.I0(n740), .I1(\Inst_uart_tx/bitcounter [4]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(\Inst_uart_tx/bitcounter [6]), .O(n741)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1504.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1505 (.I0(n741), .I1(n731), .O(\Inst_uart_tx/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1505.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1506 (.I0(n740), .I1(\Inst_uart_tx/bitcounter [4]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(\Inst_uart_tx/bitcounter [6]), .O(n742)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1506.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1507 (.I0(n742), .I1(\Inst_uart_tx/bitcounter [7]), .I2(n731), 
            .O(\Inst_uart_tx/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1507.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1508 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n742), .I2(\Inst_uart_tx/bitcounter [8]), 
            .I3(n731), .O(\Inst_uart_tx/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1508.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1509 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1509.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1510 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1510.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1511 (.I0(\Inst_pwm_servo/counter [2]), .I1(\Inst_pwm_servo/counter [1]), 
            .I2(\Inst_pwm_servo/counter [3]), .O(n743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1511.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1512 (.I0(\Inst_pwm_servo/counter [6]), .I1(\Inst_pwm_servo/counter [7]), 
            .I2(\Inst_pwm_servo/counter [8]), .I3(\Inst_pwm_servo/counter [9]), 
            .O(n744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1512.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1513 (.I0(\Inst_pwm_servo/counter [4]), .I1(n743), .I2(\Inst_pwm_servo/counter [5]), 
            .I3(n744), .O(n745)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1513.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1514 (.I0(n745), .I1(\Inst_pwm_servo/counter [10]), .I2(\Inst_pwm_servo/counter [11]), 
            .O(n746)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1514.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1515 (.I0(\Inst_pwm_servo/counter [14]), .I1(\Inst_pwm_servo/counter [15]), 
            .I2(\Inst_pwm_servo/counter [16]), .I3(\Inst_pwm_servo/counter [18]), 
            .O(n747)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1515.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1516 (.I0(\Inst_pwm_servo/counter [12]), .I1(n747), .O(n748)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1516.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1517 (.I0(\Inst_pwm_servo/counter [17]), .I1(\Inst_pwm_servo/counter [18]), 
            .I2(\Inst_pwm_servo/counter [19]), .O(n749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1517.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1518 (.I0(n747), .I1(\Inst_pwm_servo/counter [13]), .I2(n749), 
            .O(n750)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1518.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1519 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [4]), 
            .O(\Inst_pwm_servo/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1519.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1520 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [3]), 
            .O(\Inst_pwm_servo/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1520.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1521 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [2]), 
            .O(\Inst_pwm_servo/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1521.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1522 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/counter [0]), 
            .O(\Inst_pwm_servo/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1522.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1523 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [1]), 
            .O(\Inst_pwm_servo/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1523.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1524 (.I0(\Inst_pwm_servo/counter [5]), .I1(\Inst_pwm_servo/counter [6]), 
            .I2(\Inst_pwm_servo/counter [7]), .O(n751)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1524.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1525 (.I0(n743), .I1(\Inst_pwm_servo/counter [4]), .I2(n751), 
            .O(n752)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__1525.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__1526 (.I0(\Inst_pwm_servo/counter [10]), .I1(\Inst_pwm_servo/counter [11]), 
            .I2(\Inst_pwm_servo/counter [12]), .I3(\Inst_pwm_servo/counter [13]), 
            .O(n753)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1526.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1527 (.I0(n752), .I1(\Inst_pwm_servo/counter [8]), .I2(\Inst_pwm_servo/counter [9]), 
            .I3(n753), .O(n754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__1527.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1528 (.I0(\Inst_pwm_servo/counter [15]), .I1(\Inst_pwm_servo/counter [16]), 
            .I2(\Inst_pwm_servo/counter [17]), .I3(\Inst_pwm_servo/counter [18]), 
            .O(n755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1528.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1529 (.I0(n754), .I1(\Inst_pwm_servo/counter [14]), .I2(\Inst_pwm_servo/counter [19]), 
            .I3(n755), .O(\Inst_pwm_servo/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1529.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1530 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [5]), 
            .O(\Inst_pwm_servo/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1530.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1531 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [6]), 
            .O(\Inst_pwm_servo/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1531.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1532 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [7]), 
            .O(\Inst_pwm_servo/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1532.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1533 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [8]), 
            .O(\Inst_pwm_servo/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1533.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1534 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [9]), 
            .O(\Inst_pwm_servo/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1534.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1535 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [10]), 
            .O(\Inst_pwm_servo/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1535.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1536 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [11]), 
            .O(\Inst_pwm_servo/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1536.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1537 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [12]), 
            .O(\Inst_pwm_servo/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1537.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1538 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [13]), 
            .O(\Inst_pwm_servo/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1538.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1539 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [14]), 
            .O(\Inst_pwm_servo/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1539.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1540 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [15]), 
            .O(\Inst_pwm_servo/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1540.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1541 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [16]), 
            .O(\Inst_pwm_servo/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1541.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1542 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [17]), 
            .O(\Inst_pwm_servo/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1542.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1543 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [18]), 
            .O(\Inst_pwm_servo/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1543.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1544 (.I0(n746), .I1(n748), .I2(n750), .I3(\Inst_pwm_servo/n42 [19]), 
            .O(\Inst_pwm_servo/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1544.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1545 (.I0(\Inst_debounce/count_reg [8]), .I1(\Inst_debounce/count_reg [6]), 
            .I2(\Inst_debounce/count_reg [7]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n756)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1545.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1546 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1546.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1547 (.I0(n756), .I1(n757), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n758)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1547.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1548 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n759)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1548.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1549 (.I0(n758), .I1(n759), .O(n760)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1549.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1550 (.I0(n760), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(196)
    defparam LUT__1550.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1551 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n760), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(196)
    defparam LUT__1551.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__1552 (.I0(gyro_z[9]), .I1(gyro_y[9]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1552.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1553 (.I0(gyro_z[1]), .I1(gyro_x[1]), .I2(n761), .I3(byte_idx[2]), 
            .O(n762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1553.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1554 (.I0(gyro_y[1]), .I1(byte_idx[0]), .I2(n761), .I3(n762), 
            .O(n763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e33 */ ;
    defparam LUT__1554.LUTMASK = 16'h0e33;
    EFX_LUT4 LUT__1555 (.I0(accel_x[9]), .I1(accel_y[9]), .I2(byte_idx[1]), 
            .O(n764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1555.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1556 (.I0(accel_x[1]), .I1(byte_idx[1]), .I2(n764), 
            .I3(byte_idx[0]), .O(n765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__1556.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__1557 (.I0(gyro_x[9]), .I1(accel_z[9]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1557.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1558 (.I0(accel_z[1]), .I1(accel_y[1]), .I2(byte_idx[0]), 
            .I3(n766), .O(n767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1558.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1559 (.I0(n767), .I1(n765), .I2(byte_idx[2]), .O(n768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__1559.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1560 (.I0(n768), .I1(n763), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1560.LUTMASK = 16'hc5ff;
    EFX_LUT4 LUT__1561 (.I0(gyro_y[10]), .I1(gyro_z[10]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1561.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1562 (.I0(gyro_x[2]), .I1(gyro_y[2]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1562.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1563 (.I0(byte_idx[0]), .I1(gyro_z[2]), .I2(byte_idx[1]), 
            .O(n771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1563.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1564 (.I0(n770), .I1(n769), .I2(n771), .I3(byte_idx[2]), 
            .O(n772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__1564.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__1565 (.I0(accel_y[2]), .I1(accel_z[2]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1565.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1566 (.I0(accel_z[10]), .I1(gyro_x[10]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1566.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1567 (.I0(accel_y[10]), .I1(accel_x[2]), .I2(byte_idx[0]), 
            .O(n775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__1567.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1568 (.I0(accel_x[10]), .I1(byte_idx[0]), .I2(n775), 
            .I3(byte_idx[1]), .O(n776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__1568.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__1569 (.I0(n774), .I1(n773), .I2(n776), .I3(byte_idx[2]), 
            .O(n777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__1569.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__1570 (.I0(n777), .I1(n772), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1570.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1571 (.I0(gyro_y[11]), .I1(gyro_z[11]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1571.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1572 (.I0(gyro_x[3]), .I1(gyro_y[3]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1572.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1573 (.I0(gyro_z[3]), .I1(byte_idx[0]), .I2(byte_idx[1]), 
            .O(n780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3e3e */ ;
    defparam LUT__1573.LUTMASK = 16'h3e3e;
    EFX_LUT4 LUT__1574 (.I0(n779), .I1(n778), .I2(n780), .I3(byte_idx[2]), 
            .O(n781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__1574.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__1575 (.I0(accel_x[11]), .I1(accel_y[11]), .I2(byte_idx[1]), 
            .O(n782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1575.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1576 (.I0(accel_x[3]), .I1(byte_idx[1]), .I2(n782), 
            .I3(byte_idx[0]), .O(n783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__1576.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__1577 (.I0(gyro_x[11]), .I1(accel_z[11]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1577.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1578 (.I0(accel_z[3]), .I1(accel_y[3]), .I2(byte_idx[0]), 
            .I3(n784), .O(n785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1578.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1579 (.I0(n785), .I1(n783), .I2(byte_idx[2]), .O(n786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__1579.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1580 (.I0(n786), .I1(n781), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h35ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1580.LUTMASK = 16'h35ff;
    EFX_LUT4 LUT__1581 (.I0(gyro_z[12]), .I1(gyro_y[12]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1581.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1582 (.I0(gyro_x[4]), .I1(gyro_z[4]), .I2(n787), .I3(byte_idx[2]), 
            .O(n788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__1582.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__1583 (.I0(gyro_y[4]), .I1(byte_idx[0]), .I2(n788), .I3(n787), 
            .O(n789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030e */ ;
    defparam LUT__1583.LUTMASK = 16'h030e;
    EFX_LUT4 LUT__1584 (.I0(accel_x[12]), .I1(accel_y[12]), .I2(byte_idx[1]), 
            .O(n790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1584.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1585 (.I0(byte_idx[1]), .I1(accel_x[4]), .I2(n790), 
            .I3(byte_idx[0]), .O(n791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__1585.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__1586 (.I0(gyro_x[12]), .I1(accel_z[12]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1586.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1587 (.I0(accel_z[4]), .I1(accel_y[4]), .I2(byte_idx[0]), 
            .I3(n792), .O(n793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1587.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1588 (.I0(n793), .I1(n791), .I2(byte_idx[2]), .O(n794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1588.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1589 (.I0(n794), .I1(n789), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1589.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1590 (.I0(gyro_z[13]), .I1(gyro_y[13]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1590.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1591 (.I0(gyro_x[5]), .I1(gyro_z[5]), .I2(n795), .I3(byte_idx[2]), 
            .O(n796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__1591.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__1592 (.I0(gyro_y[5]), .I1(byte_idx[0]), .I2(n796), .I3(n795), 
            .O(n797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030e */ ;
    defparam LUT__1592.LUTMASK = 16'h030e;
    EFX_LUT4 LUT__1593 (.I0(accel_x[13]), .I1(accel_y[13]), .I2(byte_idx[1]), 
            .O(n798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1593.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1594 (.I0(accel_x[5]), .I1(byte_idx[1]), .I2(n798), 
            .I3(byte_idx[0]), .O(n799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__1594.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__1595 (.I0(gyro_x[13]), .I1(accel_z[13]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1595.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1596 (.I0(accel_z[5]), .I1(accel_y[5]), .I2(byte_idx[0]), 
            .I3(n800), .O(n801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1596.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1597 (.I0(n801), .I1(n799), .I2(byte_idx[2]), .O(n802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__1597.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1598 (.I0(n802), .I1(n797), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1598.LUTMASK = 16'hc5ff;
    EFX_LUT4 LUT__1599 (.I0(gyro_z[14]), .I1(gyro_y[14]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1599.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1600 (.I0(gyro_x[6]), .I1(gyro_z[6]), .I2(n803), .I3(byte_idx[2]), 
            .O(n804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__1600.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__1601 (.I0(gyro_y[6]), .I1(byte_idx[0]), .I2(n804), .I3(n803), 
            .O(n805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030e */ ;
    defparam LUT__1601.LUTMASK = 16'h030e;
    EFX_LUT4 LUT__1602 (.I0(accel_x[14]), .I1(accel_y[14]), .I2(byte_idx[1]), 
            .O(n806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1602.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1603 (.I0(byte_idx[1]), .I1(accel_x[6]), .I2(n806), 
            .I3(byte_idx[0]), .O(n807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__1603.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__1604 (.I0(gyro_x[14]), .I1(accel_z[14]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1604.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1605 (.I0(accel_z[6]), .I1(accel_y[6]), .I2(byte_idx[0]), 
            .I3(n808), .O(n809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1605.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1606 (.I0(n809), .I1(n807), .I2(byte_idx[2]), .O(n810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1606.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1607 (.I0(n810), .I1(n805), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1607.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1608 (.I0(gyro_z[15]), .I1(gyro_y[15]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1608.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1609 (.I0(gyro_x[7]), .I1(gyro_z[7]), .I2(n811), .I3(byte_idx[2]), 
            .O(n812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__1609.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__1610 (.I0(gyro_y[7]), .I1(byte_idx[0]), .I2(n812), .I3(n811), 
            .O(n813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030e */ ;
    defparam LUT__1610.LUTMASK = 16'h030e;
    EFX_LUT4 LUT__1611 (.I0(accel_x[15]), .I1(accel_y[15]), .I2(byte_idx[1]), 
            .O(n814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1611.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1612 (.I0(accel_x[7]), .I1(byte_idx[1]), .I2(n814), 
            .I3(byte_idx[0]), .O(n815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__1612.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__1613 (.I0(gyro_x[15]), .I1(accel_z[15]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1613.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1614 (.I0(accel_z[7]), .I1(accel_y[7]), .I2(byte_idx[0]), 
            .I3(n816), .O(n817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1614.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1615 (.I0(n817), .I1(n815), .I2(byte_idx[2]), .O(n818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__1615.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1616 (.I0(n818), .I1(n813), .I2(byte_idx[3]), .I3(uart_state[1]), 
            .O(n570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1616.LUTMASK = 16'hc5ff;
    EFX_LUT4 LUT__1617 (.I0(byte_idx[0]), .I1(byte_idx[1]), .I2(n598), 
            .O(n249[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(345)
    defparam LUT__1617.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1618 (.I0(byte_idx[0]), .I1(byte_idx[1]), .I2(byte_idx[2]), 
            .I3(n598), .O(n249[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(345)
    defparam LUT__1618.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1619 (.I0(byte_idx[0]), .I1(byte_idx[3]), .I2(n597), 
            .I3(uart_state[2]), .O(n249[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(345)
    defparam LUT__1619.LUTMASK = 16'h2c00;
    EFX_LUT4 LUT__1620 (.I0(n598), .I1(uart_state[0]), .I2(uart_state[1]), 
            .I3(uart_state[2]), .O(n245[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8bf */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1620.LUTMASK = 16'ha8bf;
    EFX_LUT4 LUT__1621 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(uart_state[2]), 
            .O(n245[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1818 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(350)
    defparam LUT__1621.LUTMASK = 16'h1818;
    EFX_LUT4 LUT__1241 (.I0(byte_idx[1]), .I1(byte_idx[2]), .O(n597)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1241.LUTMASK = 16'h8888;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_930f1c95_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_930f1c95_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_930f1c95_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_930f1c95_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_930f1c95_0
// module not written out since it is a black box. 
//

