
//
// Verific Verilog Description of module top_MPU_Servo
//

module top_MPU_Servo (clk_i, rst_n_i, pwm_out_0, pwm_out_1, pwm_out_2, 
            rx, tx, spi_cs_n_o, mosi_o, miso_i, sclk_o, switch_in) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(11)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(12)
    output pwm_out_0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(14)
    output pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(15)
    output pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(16)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(19)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(20)
    output spi_cs_n_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(22)
    output mosi_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(23)
    input miso_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(24)
    output sclk_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(25)
    input switch_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(27)
    
    wire [7:0]rom_out_0;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(148)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(154)
    wire [15:0]\Inst_pwm_servo_0/n6 ;
    
    wire \Inst_pwm_servo_0/add_6/n6 , tx_start_sig;
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(67)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[0] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(91)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(88)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[2] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[3] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(162)
    wire [15:0]accel_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(166)
    wire [15:0]accel_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(166)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[1] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(73)
    wire [7:0]rom_out_1;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(149)
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n36 , \Inst_debounce/add_30/n34 , \Inst_debounce/add_30/n32 , 
        \Inst_debounce/add_30/n30 , \Inst_debounce/add_30/n28 , \Inst_debounce/add_30/n26 , 
        \Inst_debounce/add_30/n24 , \Inst_debounce/add_30/n22 , \Inst_debounce/add_30/n20 , 
        \Inst_debounce/add_30/n18 , \Inst_debounce/add_30/n16 , \Inst_debounce/add_30/n14 , 
        \Inst_debounce/add_30/n12 , \Inst_debounce/add_30/n10 , \Inst_debounce/add_30/n8 , 
        \Inst_debounce/add_30/n6 , \Inst_debounce/add_30/n4 ;
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(163)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid;
    wire [14:0]\Inst_pwm_servo_1/n24 ;
    
    wire \Inst_pwm_servo_1/n23 , \Inst_pwm_servo_1/add_6/n28 , \Inst_pwm_servo_1/add_6/n26 , 
        \Inst_pwm_servo_1/add_6/n24 , \Inst_pwm_servo_1/add_6/n22 , \Inst_pwm_servo_1/add_6/n20 , 
        \Inst_pwm_servo_1/add_6/n18 , \Inst_pwm_servo_1/add_6/n16 , \Inst_pwm_servo_1/add_6/n14 , 
        \Inst_pwm_servo_1/add_6/n12 , \Inst_pwm_servo_1/add_6/n10 , \Inst_pwm_servo_1/add_6/n8 ;
    wire [19:0]\Inst_pwm_servo_0/n42 ;
    
    wire \Inst_pwm_servo_0/add_20/n36 , \Inst_pwm_servo_0/add_20/n34 , \Inst_pwm_servo_0/add_20/n32 , 
        \Inst_pwm_servo_0/add_20/n30 , \Inst_pwm_servo_0/add_20/n28 , \Inst_pwm_servo_0/add_20/n26 , 
        \Inst_pwm_servo_0/add_20/n24 , \Inst_pwm_servo_0/add_20/n22 , \Inst_pwm_servo_0/add_20/n20 , 
        \Inst_pwm_servo_0/add_20/n18 , \Inst_pwm_servo_0/add_20/n16 , \Inst_pwm_servo_0/add_20/n14 , 
        \Inst_pwm_servo_0/add_20/n12 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    wire [8:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(47)
    
    wire \Inst_pwm_servo_0/add_20/n10 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(49)
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(48)
    
    wire tx_busy_sig, \Inst_pwm_servo_0/add_20/n8 , \Inst_pwm_servo_0/add_20/n6 , 
        \Inst_pwm_servo_0/add_20/n4 ;
    wire [14:0]\Inst_pwm_servo_0/n24 ;
    
    wire \Inst_pwm_servo_0/n23 , \Inst_pwm_servo_0/add_6/n28 , \Inst_pwm_servo_0/add_6/n26 , 
        \Inst_pwm_servo_0/add_6/n24 , \Inst_pwm_servo_0/add_6/n22 , \Inst_pwm_servo_0/add_6/n20 , 
        \Inst_pwm_servo_0/add_6/n18 , \Inst_pwm_servo_0/add_6/n16 , \Inst_pwm_servo_0/add_6/n14 , 
        \Inst_pwm_servo_0/add_6/n12 , \Inst_pwm_servo_0/add_6/n10 , \Inst_pwm_servo_0/add_6/n8 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_pwm_servo_0/add_20/n2 , \Inst_pwm_servo_1/add_6/n6 ;
    wire [19:0]\Inst_pwm_servo_0/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_0/pulse_width[3] , \Inst_pwm_servo_0/pulse_width[4] , 
        \Inst_pwm_servo_0/pulse_width[8] , \Inst_pwm_servo_0/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_1/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_pwm_servo_1/n42 ;
    wire [19:0]\Inst_pwm_servo_1/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_1/pulse_width[3] , \Inst_pwm_servo_1/pulse_width[4] , 
        \Inst_pwm_servo_1/pulse_width[8] , \Inst_pwm_servo_1/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_2/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [15:0]\Inst_pwm_servo_1/n6 ;
    
    wire \Inst_debounce/add_30/n2 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \Inst_debounce/sync_1 , switch_out, \Inst_debounce/sync_0 , \clk_i~O , 
        n906, n905, \lut_addr_0[0] , \lut_addr_0[1] , \lut_addr_0[2] , 
        \lut_addr_0[3] , \lut_addr_0[4] , \lut_addr_0[5] , \lut_addr_0[6] ;
    wire [3:0]\Inst_MPU6500_Controller/n737 ;
    
    wire ceg_net313;
    wire [2:0]\Inst_MPU6500_Controller/n733 ;
    
    wire ceg_net279, \Inst_MPU6500_Controller/n5116 , \Inst_MPU6500_Controller/n6142 ;
    wire [21:0]\Inst_MPU6500_Controller/n742 ;
    
    wire ceg_net299, \Inst_MPU6500_Controller/n779 ;
    wire [3:0]\Inst_MPU6500_Controller/n765 ;
    
    wire ceg_net300, \Inst_MPU6500_Controller/n6149 , \Inst_MPU6500_Controller/n6156 , 
        \Inst_MPU6500_Controller/n6163 ;
    wire [7:0]\Inst_MPU6500_Controller/n770 ;
    
    wire ceg_net308, \Inst_MPU6500_Controller/n732 , ceg_net302, \Inst_MPU6500_Controller/n1937 , 
        \Inst_MPU6500_Controller/n1942 , \Inst_MPU6500_Controller/n1947 , 
        \Inst_MPU6500_Controller/n1952 , \Inst_MPU6500_Controller/n1957 , 
        \Inst_MPU6500_Controller/n1962 , \Inst_MPU6500_Controller/n1967 , 
        \Inst_MPU6500_Controller/n1972 , \Inst_MPU6500_Controller/n1977 , 
        \Inst_MPU6500_Controller/n4349 , \Inst_MPU6500_Controller/n4354 , 
        \Inst_MPU6500_Controller/n4359 , \Inst_MPU6500_Controller/n4364 , 
        \Inst_MPU6500_Controller/n4369 , \Inst_MPU6500_Controller/n4374 , 
        \Inst_MPU6500_Controller/n4379 , \Inst_MPU6500_Controller/n4384 , 
        \Inst_MPU6500_Controller/n4389 , ceg_net309, ceg_net314, ceg_net315, 
        \lut_addr_1[0] , \lut_addr_1[1] , \lut_addr_1[2] , \lut_addr_1[3] , 
        \lut_addr_1[4] , \lut_addr_1[5] , \lut_addr_1[6] ;
    wire [3:0]\Inst_Spi_Mode_3/n129 ;
    
    wire ceg_net61, ceg_net318;
    wire [7:0]\Inst_Spi_Mode_3/n135 ;
    
    wire ceg_net207;
    wire [3:0]\Inst_Spi_Mode_3/n124 ;
    
    wire ceg_net208, \~ceg_net69 , ceg_net209, \Inst_Spi_Mode_3/n25 , 
        \Inst_Spi_Mode_3/n466 , ceg_net210, ceg_net211, ceg_net212, 
        ceg_net213, ceg_net214, ceg_net215, ceg_net216;
    wire [1:0]\Inst_Spi_Mode_3/n144 ;
    
    wire ceg_net319;
    wire [8:0]\Inst_uart_tx/n150 ;
    
    wire ceg_net90, \Inst_uart_tx/n404 ;
    wire [2:0]\Inst_uart_tx/n160 ;
    
    wire ceg_net222, \Inst_uart_tx/n139 , ceg_net219, \Inst_uart_tx/n140 , 
        ceg_net220;
    wire [1:0]\Inst_uart_tx/n136 ;
    wire [19:0]\Inst_pwm_servo_0/n63 ;
    
    wire \Inst_pwm_servo_0/n85 ;
    wire [19:0]\Inst_pwm_servo_1/n63 ;
    
    wire \Inst_pwm_servo_1/n85 ;
    wire [19:0]\Inst_pwm_servo_2/n63 ;
    
    wire \Inst_pwm_servo_2/n85 , \Inst_debounce/n151 , \Inst_debounce/n149 , 
        n698, n699, n700, n701, n702, n703, n704, n705, n706, 
        n707, n708, n709, n710, n711, n712, n713, n714, n715, 
        n716, n717, n718, n719, n720, n721, n722, n723, n724, 
        n725, n726, n727, n728, n729, n730, n731, n732, n733, 
        n734, n735, n736, n737, n738, n739, n740, n741, n742, 
        n743, n744, n745, n746, n747, n748, n749, n751, n752, 
        n753, n754, n755, n756, n757, n758, n759, n760, n761, 
        n762, n763, n764, n765, n766, n767, n768, n769, n770, 
        n771, n772, n773, n774, n775, n776, n777, n778, n779, 
        n780, n781, n782, n783, n784, n785, n786, n787, n788, 
        n789, n790, n791, n792, n793, n794, n795, n796, n797, 
        n798, n799, n800, n801, n802, n803, n804, n805, n806, 
        n807, n808, n809, n810, n811, n812, n813, n814, n815, 
        n816, n817, n818, n819, n820, n821, n822, n823, n824, 
        n825, n826, n827, n828, n829, n830, n831, n832, n833, 
        n834, n835, n836, n837, n838, n839, n840, n841, n842, 
        n843, n844, n845, n846, n847, n848, n849, n850, n851, 
        n852, n853, n854, n855, n856, n857, n858, n859, n860, 
        n861, n862, n863, n864, n865, n866, n867, n868, n869, 
        n870, n871, n872, n873, n874, n875, n876, n877, n878, 
        n879, n880, n881, n882, n883, n884, n885, n886, n887, 
        n888, n889, n890, n891, n892, n893, n894, n895, n896, 
        n897, n898, n899, n900, n901, n902, n903, n904;
    
    EFX_LUT4 LUT__1410 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .I3(accel_x[8]), .O(\lut_addr_0[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1410.LUTMASK = 16'h8100;
    EFX_FF \tx_data_sig[0]~FF  (.D(rom_out_0[0]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(tx_busy_sig), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n737 [0]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n733 [0]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n742 [0]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_start~FF  (.D(\Inst_MPU6500_Controller/n779 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \spi_start~FF .CLK_POLARITY = 1'b1;
    defparam \spi_start~FF .CE_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_POLARITY = 1'b0;
    defparam \spi_start~FF .D_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_SYNC = 1'b0;
    defparam \spi_start~FF .SR_VALUE = 1'b0;
    defparam \spi_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[0]~FF  (.D(\Inst_MPU6500_Controller/n765 [0]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[0]~FF  (.D(\Inst_MPU6500_Controller/n770 [0]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_cs_n_o~FF  (.D(\Inst_MPU6500_Controller/n732 ), .CE(ceg_net302), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_cs_n_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \spi_cs_n_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .CE_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .SR_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .D_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC = 1'b0;
    defparam \spi_cs_n_o~FF .SR_VALUE = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n742 [1]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n742 [2]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n742 [3]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n742 [4]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n742 [5]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n742 [6]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n742 [7]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n742 [8]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n742 [9]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n742 [10]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n742 [11]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n742 [12]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n742 [13]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n742 [14]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n742 [15]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n742 [16]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n742 [17]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n742 [18]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n742 [19]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n742 [20]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n742 [21]), 
           .CE(ceg_net299), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[7]~FF  (.D(\Inst_MPU6500_Controller/n1937 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[8]~FF  (.D(\Inst_MPU6500_Controller/n1942 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[9]~FF  (.D(\Inst_MPU6500_Controller/n1947 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[10]~FF  (.D(\Inst_MPU6500_Controller/n1952 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[11]~FF  (.D(\Inst_MPU6500_Controller/n1957 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[12]~FF  (.D(\Inst_MPU6500_Controller/n1962 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[13]~FF  (.D(\Inst_MPU6500_Controller/n1967 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[14]~FF  (.D(\Inst_MPU6500_Controller/n1972 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[15]~FF  (.D(\Inst_MPU6500_Controller/n1977 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[7]~FF  (.D(\Inst_MPU6500_Controller/n4349 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[8]~FF  (.D(\Inst_MPU6500_Controller/n4354 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[9]~FF  (.D(\Inst_MPU6500_Controller/n4359 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[10]~FF  (.D(\Inst_MPU6500_Controller/n4364 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[11]~FF  (.D(\Inst_MPU6500_Controller/n4369 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[12]~FF  (.D(\Inst_MPU6500_Controller/n4374 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[13]~FF  (.D(\Inst_MPU6500_Controller/n4379 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[14]~FF  (.D(\Inst_MPU6500_Controller/n4384 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[15]~FF  (.D(\Inst_MPU6500_Controller/n4389 ), .CE(\Inst_MPU6500_Controller/n5116 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6142 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6163 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[1]~FF  (.D(\Inst_MPU6500_Controller/n770 [1]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[2]~FF  (.D(\Inst_MPU6500_Controller/n770 [2]), 
           .CE(ceg_net309), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[3]~FF  (.D(\Inst_MPU6500_Controller/n770 [3]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n770 [4]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n770 [5]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[6]~FF  (.D(\Inst_MPU6500_Controller/n770 [6]), 
           .CE(ceg_net309), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[7]~FF  (.D(\Inst_MPU6500_Controller/n770 [7]), 
           .CE(ceg_net309), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \mpu_to_spi_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n737 [1]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n737 [2]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n737 [3]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[1]~FF  (.D(\Inst_MPU6500_Controller/n765 [1]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[2]~FF  (.D(\Inst_MPU6500_Controller/n765 [2]), 
           .CE(ceg_net314), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[3]~FF  (.D(\Inst_MPU6500_Controller/n765 [3]), 
           .CE(ceg_net315), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[1]~FF  (.D(\Inst_MPU6500_Controller/n733 [1]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[2]~FF  (.D(\Inst_MPU6500_Controller/n733 [2]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(284)
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[0]~FF  (.D(\Inst_Spi_Mode_3/n129 [0]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[0]~FF  (.D(\Inst_Spi_Mode_3/state [0]), 
           .CE(ceg_net318), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[0]~FF  (.D(\Inst_Spi_Mode_3/n135 [0]), 
           .CE(ceg_net207), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[0]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [0]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[0]~FF  (.D(\Inst_Spi_Mode_3/n124 [0]), 
           .CE(ceg_net208), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_data_valid~FF  (.D(ceg_net61), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(spi_data_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_data_valid~FF .CLK_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .CE_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_POLARITY = 1'b0;
    defparam \spi_data_valid~FF .D_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_SYNC = 1'b0;
    defparam \spi_data_valid~FF .SR_VALUE = 1'b0;
    defparam \spi_data_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_o~FF  (.D(\~ceg_net69 ), .CE(ceg_net209), .CLK(\clk_i~O ), 
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
           .CE(ceg_net210), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[2]~FF  (.D(\Inst_Spi_Mode_3/n135 [2]), 
           .CE(ceg_net211), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[3]~FF  (.D(\Inst_Spi_Mode_3/n135 [3]), 
           .CE(ceg_net212), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[4]~FF  (.D(\Inst_Spi_Mode_3/n135 [4]), 
           .CE(ceg_net213), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[5]~FF  (.D(\Inst_Spi_Mode_3/n135 [5]), 
           .CE(ceg_net214), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[6]~FF  (.D(\Inst_Spi_Mode_3/n135 [6]), 
           .CE(ceg_net215), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[7]~FF  (.D(\Inst_Spi_Mode_3/n135 [7]), 
           .CE(ceg_net216), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[1]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [1]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[2]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [2]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[3]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [3]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[4]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [4]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[5]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [5]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[6]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [6]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[7]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [7]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[1]~FF  (.D(\Inst_Spi_Mode_3/n129 [1]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[2]~FF  (.D(\Inst_Spi_Mode_3/n129 [2]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[3]~FF  (.D(\Inst_Spi_Mode_3/n129 [3]), 
           .CE(ceg_net61), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[1]~FF  (.D(\Inst_Spi_Mode_3/n124 [1]), 
           .CE(ceg_net208), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[2]~FF  (.D(\Inst_Spi_Mode_3/n124 [2]), 
           .CE(ceg_net208), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[1]~FF  (.D(\Inst_Spi_Mode_3/n144 [1]), .CE(ceg_net318), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net319), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n150 [0]), .CE(ceg_net90), 
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
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n160 [0]), .CE(ceg_net222), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n139 ), .CE(ceg_net219), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_busy_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \tx_busy_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_busy_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_busy_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n140 ), .CE(ceg_net220), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n150 [1]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n150 [2]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n150 [3]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n150 [4]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n150 [5]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[6]~FF  (.D(\Inst_uart_tx/n150 [6]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[7]~FF  (.D(\Inst_uart_tx/n150 [7]), .CE(ceg_net90), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[8]~FF  (.D(\Inst_uart_tx/n150 [8]), .CE(ceg_net90), 
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
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n160 [1]), .CE(ceg_net222), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n160 [2]), .CE(ceg_net222), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net319), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(115)
    defparam \Inst_uart_tx/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[4]~FF  (.D(\Inst_pwm_servo_0/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[3]~FF  (.D(\Inst_pwm_servo_0/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[2]~FF  (.D(\Inst_pwm_servo_0/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[0]~FF  (.D(\Inst_pwm_servo_0/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[1]~FF  (.D(\Inst_pwm_servo_0/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_0~FF  (.D(\Inst_pwm_servo_0/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_0)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_0~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_0~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_0~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[5]~FF  (.D(\Inst_pwm_servo_0/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[6]~FF  (.D(\Inst_pwm_servo_0/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[7]~FF  (.D(\Inst_pwm_servo_0/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[8]~FF  (.D(\Inst_pwm_servo_0/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[9]~FF  (.D(\Inst_pwm_servo_0/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[10]~FF  (.D(\Inst_pwm_servo_0/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[11]~FF  (.D(\Inst_pwm_servo_0/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[12]~FF  (.D(\Inst_pwm_servo_0/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[13]~FF  (.D(\Inst_pwm_servo_0/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[14]~FF  (.D(\Inst_pwm_servo_0/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[15]~FF  (.D(\Inst_pwm_servo_0/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[16]~FF  (.D(\Inst_pwm_servo_0/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[17]~FF  (.D(\Inst_pwm_servo_0/n63 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[18]~FF  (.D(\Inst_pwm_servo_0/n63 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[19]~FF  (.D(\Inst_pwm_servo_0/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[2]~FF  (.D(\Inst_pwm_servo_0/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[3]~FF  (.D(\Inst_pwm_servo_0/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[4]~FF  (.D(\Inst_pwm_servo_0/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[5]~FF  (.D(\Inst_pwm_servo_0/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[6]~FF  (.D(\Inst_pwm_servo_0/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[7]~FF  (.D(\Inst_pwm_servo_0/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[8]~FF  (.D(\Inst_pwm_servo_0/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[9]~FF  (.D(\Inst_pwm_servo_0/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[10]~FF  (.D(\Inst_pwm_servo_0/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[11]~FF  (.D(\Inst_pwm_servo_0/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[12]~FF  (.D(\Inst_pwm_servo_0/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[13]~FF  (.D(\Inst_pwm_servo_0/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[14]~FF  (.D(\Inst_pwm_servo_0/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[15]~FF  (.D(\Inst_pwm_servo_0/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[16]~FF  (.D(\Inst_pwm_servo_0/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[4]~FF  (.D(\Inst_pwm_servo_1/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[3]~FF  (.D(\Inst_pwm_servo_1/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[2]~FF  (.D(\Inst_pwm_servo_1/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[0]~FF  (.D(\Inst_pwm_servo_1/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[1]~FF  (.D(\Inst_pwm_servo_1/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_1~FF  (.D(\Inst_pwm_servo_1/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_1~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_1~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_1~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[5]~FF  (.D(\Inst_pwm_servo_1/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[6]~FF  (.D(\Inst_pwm_servo_1/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[7]~FF  (.D(\Inst_pwm_servo_1/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[8]~FF  (.D(\Inst_pwm_servo_1/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[9]~FF  (.D(\Inst_pwm_servo_1/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[10]~FF  (.D(\Inst_pwm_servo_1/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[11]~FF  (.D(\Inst_pwm_servo_1/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[12]~FF  (.D(\Inst_pwm_servo_1/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[13]~FF  (.D(\Inst_pwm_servo_1/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[14]~FF  (.D(\Inst_pwm_servo_1/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[15]~FF  (.D(\Inst_pwm_servo_1/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[16]~FF  (.D(\Inst_pwm_servo_1/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[19]~FF  (.D(\Inst_pwm_servo_1/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[2]~FF  (.D(\Inst_pwm_servo_1/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[3]~FF  (.D(\Inst_pwm_servo_1/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[4]~FF  (.D(\Inst_pwm_servo_1/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[5]~FF  (.D(\Inst_pwm_servo_1/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[6]~FF  (.D(\Inst_pwm_servo_1/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[7]~FF  (.D(\Inst_pwm_servo_1/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[8]~FF  (.D(\Inst_pwm_servo_1/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[9]~FF  (.D(\Inst_pwm_servo_1/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[10]~FF  (.D(\Inst_pwm_servo_1/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[11]~FF  (.D(\Inst_pwm_servo_1/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[12]~FF  (.D(\Inst_pwm_servo_1/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[13]~FF  (.D(\Inst_pwm_servo_1/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[14]~FF  (.D(\Inst_pwm_servo_1/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[15]~FF  (.D(\Inst_pwm_servo_1/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[16]~FF  (.D(\Inst_pwm_servo_1/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[4]~FF  (.D(\Inst_pwm_servo_2/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[3]~FF  (.D(\Inst_pwm_servo_2/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_2~FF  (.D(\Inst_pwm_servo_2/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_2~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_2~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_2~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[5]~FF  (.D(\Inst_pwm_servo_2/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[6]~FF  (.D(\Inst_pwm_servo_2/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[7]~FF  (.D(\Inst_pwm_servo_2/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[8]~FF  (.D(\Inst_pwm_servo_2/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[9]~FF  (.D(\Inst_pwm_servo_2/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[10]~FF  (.D(\Inst_pwm_servo_2/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[11]~FF  (.D(\Inst_pwm_servo_2/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[12]~FF  (.D(\Inst_pwm_servo_2/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[13]~FF  (.D(\Inst_pwm_servo_2/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[14]~FF  (.D(\Inst_pwm_servo_2/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[15]~FF  (.D(\Inst_pwm_servo_2/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[16]~FF  (.D(\Inst_pwm_servo_2/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[19]~FF  (.D(\Inst_pwm_servo_2/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \tx_data_sig[1]~FF  (.D(rom_out_0[1]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[2]~FF  (.D(rom_out_0[2]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[3]~FF  (.D(rom_out_0[3]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[4]~FF  (.D(rom_out_0[4]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[5]~FF  (.D(rom_out_0[5]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[6]~FF  (.D(rom_out_0[6]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[7]~FF  (.D(rom_out_0[7]), .CE(tx_busy_sig), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(339)
    defparam \tx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n906), .O(\Inst_pwm_servo_0/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n905), .O(\Inst_pwm_servo_1/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_0/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i3 .I1_POLARITY = 1'b1;
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
    EFX_ADD \Inst_pwm_servo_1/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [15]), 
            .CI(\Inst_pwm_servo_1/add_6/n28 ), .O(\Inst_pwm_servo_1/n24 [14]), 
            .CO(n905)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [14]), 
            .CI(\Inst_pwm_servo_1/add_6/n26 ), .O(\Inst_pwm_servo_1/n24 [13]), 
            .CO(\Inst_pwm_servo_1/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [13]), 
            .CI(\Inst_pwm_servo_1/add_6/n24 ), .O(\Inst_pwm_servo_1/n24 [12]), 
            .CO(\Inst_pwm_servo_1/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [12]), 
            .CI(\Inst_pwm_servo_1/add_6/n22 ), .O(\Inst_pwm_servo_1/n24 [11]), 
            .CO(\Inst_pwm_servo_1/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [11]), 
            .CI(\Inst_pwm_servo_1/add_6/n20 ), .O(\Inst_pwm_servo_1/n24 [10]), 
            .CO(\Inst_pwm_servo_1/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [10]), 
            .CI(\Inst_pwm_servo_1/add_6/n18 ), .O(\Inst_pwm_servo_1/n24 [9]), 
            .CO(\Inst_pwm_servo_1/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [9]), 
            .CI(\Inst_pwm_servo_1/add_6/n16 ), .O(\Inst_pwm_servo_1/n24 [8]), 
            .CO(\Inst_pwm_servo_1/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [8]), 
            .CI(\Inst_pwm_servo_1/add_6/n14 ), .O(\Inst_pwm_servo_1/n24 [7]), 
            .CO(\Inst_pwm_servo_1/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [7]), 
            .CI(\Inst_pwm_servo_1/add_6/n12 ), .O(\Inst_pwm_servo_1/n24 [6]), 
            .CO(\Inst_pwm_servo_1/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [6]), 
            .CI(\Inst_pwm_servo_1/add_6/n10 ), .O(\Inst_pwm_servo_1/n24 [5]), 
            .CO(\Inst_pwm_servo_1/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [5]), 
            .CI(\Inst_pwm_servo_1/add_6/n8 ), .O(\Inst_pwm_servo_1/n24 [4]), 
            .CO(\Inst_pwm_servo_1/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [4]), 
            .CI(\Inst_pwm_servo_1/add_6/n6 ), .O(\Inst_pwm_servo_1/n24 [3]), 
            .CO(\Inst_pwm_servo_1/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i19  (.I0(\Inst_pwm_servo_0/counter [19]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n36 ), .O(\Inst_pwm_servo_0/n42 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i18  (.I0(\Inst_pwm_servo_0/counter [18]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n34 ), .O(\Inst_pwm_servo_0/n42 [18]), 
            .CO(\Inst_pwm_servo_0/add_20/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i17  (.I0(\Inst_pwm_servo_0/counter [17]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n32 ), .O(\Inst_pwm_servo_0/n42 [17]), 
            .CO(\Inst_pwm_servo_0/add_20/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i16  (.I0(\Inst_pwm_servo_0/counter [16]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n30 ), .O(\Inst_pwm_servo_0/n42 [16]), 
            .CO(\Inst_pwm_servo_0/add_20/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i15  (.I0(\Inst_pwm_servo_0/counter [15]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n28 ), .O(\Inst_pwm_servo_0/n42 [15]), 
            .CO(\Inst_pwm_servo_0/add_20/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i14  (.I0(\Inst_pwm_servo_0/counter [14]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n26 ), .O(\Inst_pwm_servo_0/n42 [14]), 
            .CO(\Inst_pwm_servo_0/add_20/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i13  (.I0(\Inst_pwm_servo_0/counter [13]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n24 ), .O(\Inst_pwm_servo_0/n42 [13]), 
            .CO(\Inst_pwm_servo_0/add_20/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i12  (.I0(\Inst_pwm_servo_0/counter [12]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n22 ), .O(\Inst_pwm_servo_0/n42 [12]), 
            .CO(\Inst_pwm_servo_0/add_20/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i11  (.I0(\Inst_pwm_servo_0/counter [11]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n20 ), .O(\Inst_pwm_servo_0/n42 [11]), 
            .CO(\Inst_pwm_servo_0/add_20/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i10  (.I0(\Inst_pwm_servo_0/counter [10]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n18 ), .O(\Inst_pwm_servo_0/n42 [10]), 
            .CO(\Inst_pwm_servo_0/add_20/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i9  (.I0(\Inst_pwm_servo_0/counter [9]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n16 ), .O(\Inst_pwm_servo_0/n42 [9]), 
            .CO(\Inst_pwm_servo_0/add_20/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i8  (.I0(\Inst_pwm_servo_0/counter [8]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n14 ), .O(\Inst_pwm_servo_0/n42 [8]), 
            .CO(\Inst_pwm_servo_0/add_20/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i7  (.I0(\Inst_pwm_servo_0/counter [7]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n12 ), .O(\Inst_pwm_servo_0/n42 [7]), 
            .CO(\Inst_pwm_servo_0/add_20/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i6  (.I0(\Inst_pwm_servo_0/counter [6]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n10 ), .O(\Inst_pwm_servo_0/n42 [6]), 
            .CO(\Inst_pwm_servo_0/add_20/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i5  (.I0(\Inst_pwm_servo_0/counter [5]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n8 ), .O(\Inst_pwm_servo_0/n42 [5]), 
            .CO(\Inst_pwm_servo_0/add_20/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i4  (.I0(\Inst_pwm_servo_0/counter [4]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n6 ), .O(\Inst_pwm_servo_0/n42 [4]), 
            .CO(\Inst_pwm_servo_0/add_20/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i3  (.I0(\Inst_pwm_servo_0/counter [3]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n4 ), .O(\Inst_pwm_servo_0/n42 [3]), 
            .CO(\Inst_pwm_servo_0/add_20/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i2  (.I0(\Inst_pwm_servo_0/counter [2]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_20/n2 ), .O(\Inst_pwm_servo_0/n42 [2]), 
            .CO(\Inst_pwm_servo_0/add_20/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [15]), 
            .CI(\Inst_pwm_servo_0/add_6/n28 ), .O(\Inst_pwm_servo_0/n24 [14]), 
            .CO(n906)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [14]), 
            .CI(\Inst_pwm_servo_0/add_6/n26 ), .O(\Inst_pwm_servo_0/n24 [13]), 
            .CO(\Inst_pwm_servo_0/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [13]), 
            .CI(\Inst_pwm_servo_0/add_6/n24 ), .O(\Inst_pwm_servo_0/n24 [12]), 
            .CO(\Inst_pwm_servo_0/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [12]), 
            .CI(\Inst_pwm_servo_0/add_6/n22 ), .O(\Inst_pwm_servo_0/n24 [11]), 
            .CO(\Inst_pwm_servo_0/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [11]), 
            .CI(\Inst_pwm_servo_0/add_6/n20 ), .O(\Inst_pwm_servo_0/n24 [10]), 
            .CO(\Inst_pwm_servo_0/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [10]), 
            .CI(\Inst_pwm_servo_0/add_6/n18 ), .O(\Inst_pwm_servo_0/n24 [9]), 
            .CO(\Inst_pwm_servo_0/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [9]), 
            .CI(\Inst_pwm_servo_0/add_6/n16 ), .O(\Inst_pwm_servo_0/n24 [8]), 
            .CO(\Inst_pwm_servo_0/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [8]), 
            .CI(\Inst_pwm_servo_0/add_6/n14 ), .O(\Inst_pwm_servo_0/n24 [7]), 
            .CO(\Inst_pwm_servo_0/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [7]), 
            .CI(\Inst_pwm_servo_0/add_6/n12 ), .O(\Inst_pwm_servo_0/n24 [6]), 
            .CO(\Inst_pwm_servo_0/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [6]), 
            .CI(\Inst_pwm_servo_0/add_6/n10 ), .O(\Inst_pwm_servo_0/n24 [5]), 
            .CO(\Inst_pwm_servo_0/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [5]), 
            .CI(\Inst_pwm_servo_0/add_6/n8 ), .O(\Inst_pwm_servo_0/n24 [4]), 
            .CO(\Inst_pwm_servo_0/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [4]), 
            .CI(\Inst_pwm_servo_0/add_6/n6 ), .O(\Inst_pwm_servo_0/n24 [3]), 
            .CO(\Inst_pwm_servo_0/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_1/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_20/i1  (.I0(\Inst_pwm_servo_1/counter [1]), 
            .I1(\Inst_pwm_servo_1/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_1/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_1/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_RAM_5K \Inst_AccelRom_0/mux_4  (.WCLK(1'b0), .RCLK(\clk_i~O ), .WCLKE(1'b0), 
            .WE(1'b0), .RE(1'b1), .WADDR({9'b000000000}), .RADDR({2'b00, 
            \lut_addr_0[6] , \lut_addr_0[5] , \lut_addr_0[4] , \lut_addr_0[3] , 
            \lut_addr_0[2] , \lut_addr_0[1] , \lut_addr_0[0] }), .RDATA({rom_out_0})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="READ_UNKNOWN", INIT_0=256'h615E5B5855524F4C494643403C393633302D2A2724201D1A1714100D0A070300, INIT_1=256'hC3BFBCB9B6B3B0ADAAA7A4A19E9B9895928F8C8986837F7C797673706D6A6764, INIT_2=256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5F2EFEBE8E5E2DFDBD8D5D2CFCCC9C6, INIT_3=256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/AccelRom.vhd(31)
    defparam \Inst_AccelRom_0/mux_4 .READ_WIDTH = 8;
    defparam \Inst_AccelRom_0/mux_4 .WRITE_WIDTH = 8;
    defparam \Inst_AccelRom_0/mux_4 .WCLK_POLARITY = 1'b1;
    defparam \Inst_AccelRom_0/mux_4 .WCLKE_POLARITY = 1'b1;
    defparam \Inst_AccelRom_0/mux_4 .WE_POLARITY = 1'b1;
    defparam \Inst_AccelRom_0/mux_4 .RCLK_POLARITY = 1'b1;
    defparam \Inst_AccelRom_0/mux_4 .RE_POLARITY = 1'b1;
    defparam \Inst_AccelRom_0/mux_4 .INIT_0 = 256'h615E5B5855524F4C494643403C393633302D2A2724201D1A1714100D0A070300;
    defparam \Inst_AccelRom_0/mux_4 .INIT_1 = 256'hC3BFBCB9B6B3B0ADAAA7A4A19E9B9895928F8C8986837F7C797673706D6A6764;
    defparam \Inst_AccelRom_0/mux_4 .INIT_2 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5F2EFEBE8E5E2DFDBD8D5D2CFCCC9C6;
    defparam \Inst_AccelRom_0/mux_4 .INIT_3 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    defparam \Inst_AccelRom_0/mux_4 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_0/mux_4 .OUTPUT_REG = 1'b0;
    defparam \Inst_AccelRom_0/mux_4 .WRITE_MODE = "READ_UNKNOWN";
    EFX_RAM_5K \Inst_AccelRom_1/mux_4  (.WCLK(1'b0), .RCLK(\clk_i~O ), .WCLKE(1'b0), 
            .WE(1'b0), .RE(1'b1), .WADDR({9'b000000000}), .RADDR({2'b00, 
            \lut_addr_1[6] , \lut_addr_1[5] , \lut_addr_1[4] , \lut_addr_1[3] , 
            \lut_addr_1[2] , \lut_addr_1[1] , \lut_addr_1[0] }), .RDATA({rom_out_1})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="READ_UNKNOWN", INIT_0=256'h615E5B5855524F4C494643403C393633302D2A2724201D1A1714100D0A070300, INIT_1=256'hC3BFBCB9B6B3B0ADAAA7A4A19E9B9895928F8C8986837F7C797673706D6A6764, INIT_2=256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5F2EFEBE8E5E2DFDBD8D5D2CFCCC9C6, INIT_3=256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/AccelRom.vhd(31)
    defparam \Inst_AccelRom_1/mux_4 .READ_WIDTH = 8;
    defparam \Inst_AccelRom_1/mux_4 .WRITE_WIDTH = 8;
    defparam \Inst_AccelRom_1/mux_4 .WCLK_POLARITY = 1'b1;
    defparam \Inst_AccelRom_1/mux_4 .WCLKE_POLARITY = 1'b1;
    defparam \Inst_AccelRom_1/mux_4 .WE_POLARITY = 1'b1;
    defparam \Inst_AccelRom_1/mux_4 .RCLK_POLARITY = 1'b1;
    defparam \Inst_AccelRom_1/mux_4 .RE_POLARITY = 1'b1;
    defparam \Inst_AccelRom_1/mux_4 .INIT_0 = 256'h615E5B5855524F4C494643403C393633302D2A2724201D1A1714100D0A070300;
    defparam \Inst_AccelRom_1/mux_4 .INIT_1 = 256'hC3BFBCB9B6B3B0ADAAA7A4A19E9B9895928F8C8986837F7C797673706D6A6764;
    defparam \Inst_AccelRom_1/mux_4 .INIT_2 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5F2EFEBE8E5E2DFDBD8D5D2CFCCC9C6;
    defparam \Inst_AccelRom_1/mux_4 .INIT_3 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    defparam \Inst_AccelRom_1/mux_4 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \Inst_AccelRom_1/mux_4 .OUTPUT_REG = 1'b0;
    defparam \Inst_AccelRom_1/mux_4 .WRITE_MODE = "READ_UNKNOWN";
    EFX_MULT \Inst_pwm_servo_0/mult_5  (.CLK(\clk_i~O ), .CEA(1'b1), .RSTA(rst_n_i), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            rom_out_0}), .B({18'b000000000000111101}), .O({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, \Inst_pwm_servo_0/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b1, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b0, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo_0/mult_5 .A_REG = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .RSTA_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .RSTA_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_MULT \Inst_pwm_servo_1/mult_5  (.CLK(\clk_i~O ), .CEA(1'b1), .RSTA(rst_n_i), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            rom_out_1}), .B({18'b000000000000111101}), .O({Open_22, Open_23, 
            Open_24, Open_25, Open_26, Open_27, Open_28, Open_29, 
            Open_30, Open_31, Open_32, Open_33, Open_34, Open_35, 
            Open_36, Open_37, Open_38, Open_39, Open_40, Open_41, 
            Open_42, Open_43, \Inst_pwm_servo_1/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b1, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b0, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo_1/mult_5 .A_REG = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .RSTA_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .RSTA_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__1411 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .I3(accel_x[9]), .O(\lut_addr_0[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1411.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1412 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .I3(accel_x[10]), .O(\lut_addr_0[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1412.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1413 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .I3(accel_x[11]), .O(\lut_addr_0[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1413.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1414 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .I3(accel_x[12]), .O(\lut_addr_0[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1414.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1415 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .O(\lut_addr_0[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1415.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1416 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n698)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1416.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1417 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n699)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1417.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1418 (.I0(n698), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(n699), .O(\Inst_MPU6500_Controller/n737 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1418.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__1419 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n700)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1419.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1420 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n700), .I3(\Inst_MPU6500_Controller/state [1]), .O(ceg_net313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf32f */ ;
    defparam LUT__1420.LUTMASK = 16'hf32f;
    EFX_LUT4 LUT__1421 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n733 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1421.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1422 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n701)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1422.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1423 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n702)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1423.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1424 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n703)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1424.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1425 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(switch_out), 
            .I2(n700), .O(n704)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1425.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1426 (.I0(n702), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n703), .I3(n704), .O(n705)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1426.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1427 (.I0(n705), .I1(n701), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1427.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1428 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n706)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1428.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1429 (.I0(n706), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n5116 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1429.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__1430 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(spi_data_valid), 
            .O(n707)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1430.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1431 (.I0(n703), .I1(n707), .O(n708)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1431.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1432 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n708), .O(\Inst_MPU6500_Controller/n6142 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1432.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1433 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n709)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1433.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1434 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n710)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1434.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1435 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [4]), .I3(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(n711)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1435.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1436 (.I0(\Inst_MPU6500_Controller/delay_cntr [14]), .I1(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [17]), .O(n712)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1436.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1437 (.I0(n709), .I1(n710), .I2(n711), .I3(n712), 
            .O(n713)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1437.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1438 (.I0(\Inst_MPU6500_Controller/delay_cntr [3]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [13]), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n714)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1438.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1439 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n715)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1439.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1440 (.I0(n714), .I1(n715), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n716)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1440.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1441 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n717)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1441.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1442 (.I0(n716), .I1(n713), .I2(n717), .O(n718)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__1442.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__1443 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n719)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1443.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1444 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(n719), .O(n720)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1444.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1445 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1445.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1446 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(n721), .O(n722)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1446.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1447 (.I0(n722), .I1(n716), .I2(n720), .I3(n701), 
            .O(n723)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1447.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1448 (.I0(n723), .I1(n718), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1448.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1449 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n725)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1449.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1450 (.I0(n725), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n726)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1450.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1451 (.I0(n698), .I1(spi_data_valid), .O(n727)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1451.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1452 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n703), 
            .I2(n727), .O(n728)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1452.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1453 (.I0(n725), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1453.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1454 (.I0(n728), .I1(n729), .O(n730)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1454.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1455 (.I0(n726), .I1(n724), .I2(n730), .I3(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n742 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1455.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__1456 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf05 */ ;
    defparam LUT__1456.LUTMASK = 16'hcf05;
    EFX_LUT4 LUT__1457 (.I0(n706), .I1(n731), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(\Inst_MPU6500_Controller/state [1]), .O(ceg_net299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__1457.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__1458 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n779 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1458.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__1459 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n723), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n732)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haccc */ ;
    defparam LUT__1459.LUTMASK = 16'haccc;
    EFX_LUT4 LUT__1460 (.I0(n714), .I1(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n733)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1460.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1461 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [16]), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1461.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1462 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(n734), 
            .I2(n711), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), .O(n735)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1462.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1463 (.I0(n733), .I1(n720), .I2(n735), .O(n736)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1463.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1464 (.I0(n736), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__1464.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__1465 (.I0(n737), .I1(n732), .I2(\Inst_MPU6500_Controller/state [0]), 
            .O(\Inst_MPU6500_Controller/n765 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1465.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1466 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n738)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1466.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1467 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n738), .O(n739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1467.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1468 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n740)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f0a */ ;
    defparam LUT__1468.LUTMASK = 16'h3f0a;
    EFX_LUT4 LUT__1469 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n740), 
            .O(n741)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1469.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1470 (.I0(n716), .I1(n738), .I2(n713), .I3(n741), 
            .O(n742)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1470.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1471 (.I0(n742), .I1(n739), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1471.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1472 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(n708), .O(\Inst_MPU6500_Controller/n6149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1472.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1473 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(n708), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .O(\Inst_MPU6500_Controller/n6156 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1473.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1474 (.I0(n708), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .O(\Inst_MPU6500_Controller/n6163 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1474.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1475 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1475.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1476 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(n744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3001 */ ;
    defparam LUT__1476.LUTMASK = 16'h3001;
    EFX_LUT4 LUT__1477 (.I0(mpu_to_spi_data[0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n743), .I3(n744), .O(\Inst_MPU6500_Controller/n770 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1477.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1478 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(12)
    defparam LUT__1478.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__1479 (.I0(spi_cs_n_o), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n745)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he00f */ ;
    defparam LUT__1479.LUTMASK = 16'he00f;
    EFX_LUT4 LUT__1480 (.I0(n727), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(spi_cs_n_o), .I3(\Inst_MPU6500_Controller/state [3]), .O(n746)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__1480.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__1481 (.I0(n745), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n746), .O(\Inst_MPU6500_Controller/n732 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1481.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1482 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(switch_out), 
            .O(n747)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1482.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1483 (.I0(n747), .I1(n700), .I2(n738), .I3(spi_data_valid), 
            .O(n748)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1483.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1484 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n748), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(n738), .O(ceg_net302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;
    defparam LUT__1484.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__1485 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(n725), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__1485.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1487 (.I0(n736), .I1(n728), .I2(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I3(n749), .O(n751)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1487.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1409 (.I0(accel_x[13]), .I1(accel_x[14]), .I2(accel_x[15]), 
            .I3(accel_x[7]), .O(\lut_addr_0[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1409.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1488 (.I0(n751), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [1]), .I3(n724), .O(\Inst_MPU6500_Controller/n742 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1488.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__1489 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n752)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1489.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1490 (.I0(n736), .I1(n729), .I2(n752), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n753)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__1490.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__1491 (.I0(n729), .I1(n752), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__1491.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1492 (.I0(n727), .I1(n703), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__1492.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__1493 (.I0(n723), .I1(n718), .I2(n754), .I3(n755), 
            .O(n756)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__1493.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1494 (.I0(n753), .I1(n756), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n742 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5333 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1494.LUTMASK = 16'h5333;
    EFX_LUT4 LUT__1495 (.I0(n729), .I1(n752), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1495.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1496 (.I0(n723), .I1(n718), .I2(n728), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n758)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__1496.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__1497 (.I0(n757), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(n758), .O(\Inst_MPU6500_Controller/n742 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1497.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1498 (.I0(n733), .I1(n735), .I2(n720), .I3(n726), 
            .O(n759)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1498.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1499 (.I0(n723), .I1(n718), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n759), .O(n760)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__1499.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__1500 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1500.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1501 (.I0(n730), .I1(n760), .I2(n761), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n742 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1501.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1502 (.I0(n729), .I1(n761), .I2(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(n762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1502.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1503 (.I0(n762), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(n758), .O(\Inst_MPU6500_Controller/n742 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1503.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1504 (.I0(n762), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .I3(n758), .O(\Inst_MPU6500_Controller/n742 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1504.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1505 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .O(n763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1505.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1506 (.I0(n761), .I1(n763), .O(n764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1506.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1507 (.I0(n764), .I1(n725), .O(n765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1507.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1508 (.I0(n728), .I1(n765), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__1508.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__1509 (.I0(n766), .I1(n764), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(n724), .O(\Inst_MPU6500_Controller/n742 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1509.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__1510 (.I0(n729), .I1(n764), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__1510.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__1511 (.I0(n767), .I1(n758), .O(\Inst_MPU6500_Controller/n742 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1511.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1512 (.I0(n723), .I1(n718), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1512.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1513 (.I0(n764), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1513.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1514 (.I0(n728), .I1(n769), .I2(n729), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacf3 */ ;
    defparam LUT__1514.LUTMASK = 16'hacf3;
    EFX_LUT4 LUT__1515 (.I0(n736), .I1(n726), .I2(n768), .I3(n770), 
            .O(\Inst_MPU6500_Controller/n742 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1515.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__1516 (.I0(n769), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1516.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1517 (.I0(n730), .I1(n760), .I2(n771), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(\Inst_MPU6500_Controller/n742 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1517.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1518 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [9]), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(n772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1518.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1519 (.I0(n764), .I1(n772), .O(n773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1519.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1520 (.I0(n729), .I1(n773), .I2(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I3(n758), .O(\Inst_MPU6500_Controller/n742 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1520.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__1521 (.I0(n764), .I1(n772), .I2(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(n774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1521.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1522 (.I0(n736), .I1(n729), .I2(n774), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__1522.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__1523 (.I0(n723), .I1(n718), .O(n776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1523.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1524 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n774), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .O(n777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__1524.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1525 (.I0(n728), .I1(n775), .I2(n776), .I3(n777), 
            .O(\Inst_MPU6500_Controller/n742 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1525.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__1526 (.I0(n709), .I1(n761), .I2(n763), .I3(n772), 
            .O(n778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1526.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1527 (.I0(n778), .I1(n725), .O(n779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1527.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1528 (.I0(n728), .I1(n779), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__1528.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__1529 (.I0(n780), .I1(n778), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(n724), .O(\Inst_MPU6500_Controller/n742 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1529.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__1530 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [13]), .O(n781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1530.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1531 (.I0(n761), .I1(n763), .I2(n772), .I3(n781), 
            .O(n782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1531.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1532 (.I0(n782), .I1(n725), .O(n783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1532.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1533 (.I0(n728), .I1(n783), .I2(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__1533.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__1534 (.I0(n784), .I1(n782), .I2(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I3(n724), .O(\Inst_MPU6500_Controller/n742 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1534.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__1535 (.I0(n729), .I1(n782), .O(n785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1535.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1536 (.I0(n785), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(n758), .O(\Inst_MPU6500_Controller/n742 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1536.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1537 (.I0(n782), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1537.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1538 (.I0(n730), .I1(n760), .I2(n786), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(\Inst_MPU6500_Controller/n742 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1538.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__1539 (.I0(n785), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1539.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1540 (.I0(n787), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(n758), .O(\Inst_MPU6500_Controller/n742 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1540.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1541 (.I0(n712), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1541.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1542 (.I0(n782), .I1(n788), .O(n789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1542.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1543 (.I0(n736), .I1(n729), .I2(n789), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__1543.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__1544 (.I0(n735), .I1(n724), .I2(n790), .I3(n758), 
            .O(\Inst_MPU6500_Controller/n742 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1544.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1545 (.I0(n728), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1545.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1546 (.I0(n729), .I1(n782), .I2(n788), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1546.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1547 (.I0(n791), .I1(n768), .I2(n792), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(\Inst_MPU6500_Controller/n742 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0130 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1547.LUTMASK = 16'h0130;
    EFX_LUT4 LUT__1548 (.I0(n792), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1548.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1549 (.I0(n791), .I1(n768), .I2(n793), .I3(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(\Inst_MPU6500_Controller/n742 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0130 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1549.LUTMASK = 16'h0130;
    EFX_LUT4 LUT__1550 (.I0(n793), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [21]), .I3(n758), .O(\Inst_MPU6500_Controller/n742 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1550.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1553 (.I0(\Inst_MPU6500_Controller/raw_data[1] [1]), .I1(\Inst_MPU6500_Controller/raw_data[1] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [3]), .O(n794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1553.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1557 (.I0(\Inst_MPU6500_Controller/raw_data[1] [5]), .I1(n794), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [4]), .I3(\Inst_MPU6500_Controller/raw_data[1] [6]), 
            .O(n795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1557.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1558 (.I0(n795), .I1(\Inst_MPU6500_Controller/raw_data[1] [7]), 
            .O(\Inst_MPU6500_Controller/n1937 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1558.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1559 (.I0(n795), .I1(\Inst_MPU6500_Controller/raw_data[1] [7]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [0]), .O(\Inst_MPU6500_Controller/n1942 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1559.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__1560 (.I0(n795), .I1(\Inst_MPU6500_Controller/raw_data[1] [7]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [0]), .O(n796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1560.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1561 (.I0(n796), .I1(\Inst_MPU6500_Controller/raw_data[0] [1]), 
            .O(\Inst_MPU6500_Controller/n1947 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1561.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1562 (.I0(n796), .I1(\Inst_MPU6500_Controller/raw_data[0] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [2]), .O(\Inst_MPU6500_Controller/n1952 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1562.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__1563 (.I0(n796), .I1(\Inst_MPU6500_Controller/raw_data[0] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [2]), .I3(\Inst_MPU6500_Controller/raw_data[0] [3]), 
            .O(\Inst_MPU6500_Controller/n1957 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1563.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__1564 (.I0(\Inst_MPU6500_Controller/raw_data[0] [2]), .I1(\Inst_MPU6500_Controller/raw_data[0] [3]), 
            .O(n797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1564.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1565 (.I0(n796), .I1(\Inst_MPU6500_Controller/raw_data[0] [1]), 
            .I2(n797), .I3(\Inst_MPU6500_Controller/raw_data[0] [4]), .O(\Inst_MPU6500_Controller/n1962 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1565.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__1566 (.I0(n796), .I1(\Inst_MPU6500_Controller/raw_data[0] [1]), 
            .I2(n797), .I3(\Inst_MPU6500_Controller/raw_data[0] [4]), .O(n798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__1566.LUTMASK = 16'he000;
    EFX_LUT4 LUT__1567 (.I0(n798), .I1(\Inst_MPU6500_Controller/raw_data[0] [5]), 
            .O(\Inst_MPU6500_Controller/n1967 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1567.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1568 (.I0(n798), .I1(\Inst_MPU6500_Controller/raw_data[0] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [6]), .O(\Inst_MPU6500_Controller/n1972 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1568.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1569 (.I0(n798), .I1(\Inst_MPU6500_Controller/raw_data[0] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [6]), .I3(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .O(\Inst_MPU6500_Controller/n1977 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1569.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1572 (.I0(\Inst_MPU6500_Controller/raw_data[3] [0]), .I1(\Inst_MPU6500_Controller/raw_data[3] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [2]), .O(n799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1572.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1575 (.I0(n799), .I1(\Inst_MPU6500_Controller/raw_data[3] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [4]), .O(n800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1575.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1578 (.I0(n800), .I1(\Inst_MPU6500_Controller/raw_data[3] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [6]), .O(n801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1578.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1579 (.I0(n801), .I1(\Inst_MPU6500_Controller/raw_data[3] [7]), 
            .O(\Inst_MPU6500_Controller/n4349 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1579.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1580 (.I0(\Inst_MPU6500_Controller/raw_data[3] [7]), .I1(n801), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [0]), .O(\Inst_MPU6500_Controller/n4354 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1580.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__1581 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[3] [7]), 
            .I2(n801), .I3(\Inst_MPU6500_Controller/raw_data[2] [1]), .O(\Inst_MPU6500_Controller/n4359 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1581.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__1582 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[2] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [7]), .I3(n801), .O(n802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1582.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1583 (.I0(n802), .I1(\Inst_MPU6500_Controller/raw_data[2] [2]), 
            .O(\Inst_MPU6500_Controller/n4364 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1583.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1584 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[2] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [2]), .I3(\Inst_MPU6500_Controller/raw_data[3] [7]), 
            .O(n803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1584.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1585 (.I0(n801), .I1(n803), .I2(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .O(\Inst_MPU6500_Controller/n4369 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1585.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1586 (.I0(\Inst_MPU6500_Controller/raw_data[2] [3]), .I1(n801), 
            .I2(n803), .I3(\Inst_MPU6500_Controller/raw_data[2] [4]), .O(\Inst_MPU6500_Controller/n4374 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1586.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__1587 (.I0(\Inst_MPU6500_Controller/raw_data[2] [3]), .I1(\Inst_MPU6500_Controller/raw_data[2] [4]), 
            .I2(n803), .O(n804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1587.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1588 (.I0(n801), .I1(n804), .I2(\Inst_MPU6500_Controller/raw_data[2] [5]), 
            .O(\Inst_MPU6500_Controller/n4379 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1588.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1589 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n801), 
            .I2(n804), .I3(\Inst_MPU6500_Controller/raw_data[2] [6]), .O(\Inst_MPU6500_Controller/n4384 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1589.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__1590 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(\Inst_MPU6500_Controller/raw_data[2] [6]), 
            .I2(n801), .I3(n804), .O(n805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1590.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1591 (.I0(n805), .I1(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .O(\Inst_MPU6500_Controller/n4389 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(268)
    defparam LUT__1591.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1592 (.I0(mpu_to_spi_data[1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__1592.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__1593 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/config_idx [0]), .I3(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(\Inst_MPU6500_Controller/n770 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1593.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1594 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n806), .I3(\Inst_MPU6500_Controller/n770 [2]), .O(\Inst_MPU6500_Controller/n770 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1594.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__1595 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc154 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(12)
    defparam LUT__1595.LUTMASK = 16'hc154;
    EFX_LUT4 LUT__1596 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(mpu_to_spi_data[3]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__1596.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__1597 (.I0(n807), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n770 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1597.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1598 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n733 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1598.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1599 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__1599.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__1600 (.I0(mpu_to_spi_data[4]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n743), .I3(n808), .O(n809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1600.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1601 (.I0(\Inst_MPU6500_Controller/n733 [1]), .I1(n809), 
            .O(\Inst_MPU6500_Controller/n770 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1601.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1602 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(\Inst_MPU6500_Controller/n770 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1602.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1603 (.I0(mpu_to_spi_data[5]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n743), .I3(\Inst_MPU6500_Controller/n770 [6]), .O(\Inst_MPU6500_Controller/n770 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1603.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1604 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n743), 
            .O(\Inst_MPU6500_Controller/n770 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1604.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1605 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1605.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1606 (.I0(n698), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n810), .I3(n699), .O(\Inst_MPU6500_Controller/n737 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1606.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__1607 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(spi_data_valid), .O(n811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1607.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1608 (.I0(n811), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(n699), .O(\Inst_MPU6500_Controller/n737 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1608.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1609 (.I0(n811), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(n699), .O(\Inst_MPU6500_Controller/n737 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1609.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1610 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n702), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd00f */ ;
    defparam LUT__1610.LUTMASK = 16'hd00f;
    EFX_LUT4 LUT__1611 (.I0(n698), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(spi_data_valid), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fc0 */ ;
    defparam LUT__1611.LUTMASK = 16'h7fc0;
    EFX_LUT4 LUT__1612 (.I0(n736), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n813), .I3(\Inst_MPU6500_Controller/state [2]), .O(n814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbb0f */ ;
    defparam LUT__1612.LUTMASK = 16'hbb0f;
    EFX_LUT4 LUT__1613 (.I0(n814), .I1(n812), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n765 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1613.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1614 (.I0(n727), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n703), .O(n815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1614.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1615 (.I0(n736), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h573f */ ;
    defparam LUT__1615.LUTMASK = 16'h573f;
    EFX_LUT4 LUT__1616 (.I0(n816), .I1(n815), .I2(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n765 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1616.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1617 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1617.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1618 (.I0(n722), .I1(n716), .I2(n720), .I3(n817), 
            .O(n818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1618.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1619 (.I0(n742), .I1(n739), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n818), .O(ceg_net314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff0e */ ;
    defparam LUT__1619.LUTMASK = 16'hff0e;
    EFX_LUT4 LUT__1620 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n702), 
            .I2(n703), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n765 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1620.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__1621 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n717), .O(n819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1621.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1622 (.I0(ceg_net314), .I1(n759), .I2(n819), .O(ceg_net315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;
    defparam LUT__1622.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__1623 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1623.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1624 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n820), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n733 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(283)
    defparam LUT__1624.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1625 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .I3(accel_y[7]), .O(\lut_addr_1[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1625.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1626 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .I3(accel_y[8]), .O(\lut_addr_1[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1626.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1627 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .I3(accel_y[9]), .O(\lut_addr_1[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1627.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1628 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .I3(accel_y[10]), .O(\lut_addr_1[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1628.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1629 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .I3(accel_y[11]), .O(\lut_addr_1[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1629.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1630 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .I3(accel_y[12]), .O(\lut_addr_1[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8100 */ ;
    defparam LUT__1630.LUTMASK = 16'h8100;
    EFX_LUT4 LUT__1631 (.I0(accel_y[13]), .I1(accel_y[14]), .I2(accel_y[15]), 
            .O(\lut_addr_1[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1631.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1632 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [0]), .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1632.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1633 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .I3(\Inst_Spi_Mode_3/bitcounter [3]), 
            .O(n821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1633.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1634 (.I0(n821), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1634.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1635 (.I0(spi_start), .I1(n821), .I2(\Inst_Spi_Mode_3/state [0]), 
            .I3(\Inst_Spi_Mode_3/state [1]), .O(ceg_net318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3335 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(160)
    defparam LUT__1635.LUTMASK = 16'h3335;
    EFX_LUT4 LUT__1636 (.I0(miso_i), .I1(mpu_to_spi_data[0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1636.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1637 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(n821), .I3(\Inst_Spi_Mode_3/state [1]), .O(n822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1637.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1638 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(spi_start), .O(n823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1638.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1639 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n822), .I3(n823), .O(ceg_net207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1639.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1640 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1640.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__1641 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .O(n824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1641.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1642 (.I0(n824), .I1(n821), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__1642.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1643 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net69 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__1643.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1644 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n821), .O(ceg_net209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1644.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1645 (.I0(\Inst_Spi_Mode_3/data_buffer [4]), .I1(\Inst_Spi_Mode_3/data_buffer [6]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1645.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1646 (.I0(\Inst_Spi_Mode_3/data_buffer [5]), .I1(\Inst_Spi_Mode_3/data_buffer [7]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [1]), .I3(\Inst_Spi_Mode_3/bit_idx [0]), 
            .O(n826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1646.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1647 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n827)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__1647.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__1648 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n827), .O(n828)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__1648.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__1649 (.I0(n826), .I1(n825), .I2(n828), .I3(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h110f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__1649.LUTMASK = 16'h110f;
    EFX_LUT4 LUT__1650 (.I0(\~ceg_net69 ), .I1(n821), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(250)
    defparam LUT__1650.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1651 (.I0(miso_i), .I1(mpu_to_spi_data[1]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1651.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1652 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(n822), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n823), .O(ceg_net210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1652.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1653 (.I0(miso_i), .I1(mpu_to_spi_data[2]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1653.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1654 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n822), .I3(n823), .O(ceg_net211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1654.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1655 (.I0(miso_i), .I1(mpu_to_spi_data[3]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1655.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1656 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n822), .I3(n823), .O(ceg_net212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__1656.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__1657 (.I0(miso_i), .I1(mpu_to_spi_data[4]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1657.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1658 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(n821), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I3(\Inst_Spi_Mode_3/state [1]), .O(n829)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1658.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1659 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n829), .I3(n823), .O(ceg_net213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1659.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1660 (.I0(miso_i), .I1(mpu_to_spi_data[5]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1660.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1661 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(n829), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n823), .O(ceg_net214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1661.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1662 (.I0(miso_i), .I1(mpu_to_spi_data[6]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1662.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1663 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n829), .I3(n823), .O(ceg_net215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1663.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1664 (.I0(miso_i), .I1(mpu_to_spi_data[7]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1664.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1665 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n829), .I3(n823), .O(ceg_net216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__1665.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__1666 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .I3(\Inst_Spi_Mode_3/bitcounter [0]), 
            .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1666.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__1667 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n830)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__1667.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1668 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n830), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1668.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1669 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .I3(\Inst_Spi_Mode_3/bitcounter [3]), 
            .O(n831)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1669.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1670 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n831), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1670.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1671 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1671.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__1672 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .I3(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1672.LUTMASK = 16'he1ff;
    EFX_LUT4 LUT__1673 (.I0(n824), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1673.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__1674 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/state [1]), 
            .O(n832)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1674.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1675 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/bitcounter [6]), .I3(\Inst_uart_tx/bitcounter [8]), 
            .O(n833)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1675.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1676 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .I2(n833), .O(n834)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1676.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1677 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net90)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(153)
    defparam LUT__1677.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1678 (.I0(n832), .I1(\Inst_uart_tx/state [0]), .I2(n834), 
            .I3(ceg_net90), .O(ceg_net319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff2 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(153)
    defparam LUT__1678.LUTMASK = 16'hfff2;
    EFX_LUT4 LUT__1679 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n834), .O(\Inst_uart_tx/n150 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1679.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1680 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1680.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1681 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n139 ), 
            .O(\Inst_uart_tx/n404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(221)
    defparam LUT__1681.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1682 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1682.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1683 (.I0(n833), .I1(n832), .I2(\Inst_uart_tx/n139 ), 
            .I3(\Inst_uart_tx/state [0]), .O(ceg_net222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff07 */ ;
    defparam LUT__1683.LUTMASK = 16'hff07;
    EFX_LUT4 LUT__1684 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1684.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1685 (.I0(n834), .I1(\Inst_uart_tx/n136 [1]), .O(ceg_net219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(52)
    defparam LUT__1685.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1686 (.I0(tx_start_sig), .I1(\Inst_uart_tx/data_buffer [0]), 
            .I2(\Inst_uart_tx/state [0]), .O(n835)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__1686.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__1687 (.I0(\Inst_uart_tx/data_buffer [1]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n836)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1687.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1688 (.I0(\Inst_uart_tx/data_buffer [3]), .I1(\Inst_uart_tx/data_buffer [7]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n837)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1688.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1689 (.I0(\Inst_uart_tx/data_buffer [2]), .I1(\Inst_uart_tx/data_buffer [6]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n838)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__1689.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1690 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/data_buffer [4]), 
            .I2(n838), .I3(\Inst_uart_tx/bit_idx [1]), .O(n839)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__1690.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__1691 (.I0(n837), .I1(n836), .I2(n839), .I3(\Inst_uart_tx/bit_idx [0]), 
            .O(n840)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__1691.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__1692 (.I0(n840), .I1(n835), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n140 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1692.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1693 (.I0(n833), .I1(\Inst_uart_tx/state [0]), .I2(\Inst_uart_tx/state [1]), 
            .O(ceg_net220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4d4 */ ;
    defparam LUT__1693.LUTMASK = 16'hd4d4;
    EFX_LUT4 LUT__1694 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n834), .O(\Inst_uart_tx/n150 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1694.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1695 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(n834), .O(\Inst_uart_tx/n150 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1695.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1696 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(\Inst_uart_tx/bitcounter [3]), 
            .O(n841)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1696.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1697 (.I0(n841), .I1(n834), .O(\Inst_uart_tx/n150 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1697.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1698 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(\Inst_uart_tx/bitcounter [3]), 
            .O(n842)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1698.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1699 (.I0(n842), .I1(\Inst_uart_tx/bitcounter [4]), .I2(n834), 
            .O(\Inst_uart_tx/n150 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1699.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1700 (.I0(n842), .I1(\Inst_uart_tx/bitcounter [4]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(n834), .O(\Inst_uart_tx/n150 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1700.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1701 (.I0(n842), .I1(\Inst_uart_tx/bitcounter [4]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(\Inst_uart_tx/bitcounter [6]), .O(n843)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__1701.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1702 (.I0(n843), .I1(n834), .O(\Inst_uart_tx/n150 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1702.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1703 (.I0(n842), .I1(\Inst_uart_tx/bitcounter [4]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(\Inst_uart_tx/bitcounter [6]), .O(n844)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1703.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1704 (.I0(n844), .I1(\Inst_uart_tx/bitcounter [7]), .I2(n834), 
            .O(\Inst_uart_tx/n150 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1704.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1705 (.I0(\Inst_uart_tx/bitcounter [7]), .I1(n844), .I2(\Inst_uart_tx/bitcounter [8]), 
            .I3(n834), .O(\Inst_uart_tx/n150 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(86)
    defparam LUT__1705.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1706 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n160 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1706.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1707 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n160 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_rx.vhd(114)
    defparam LUT__1707.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1708 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .O(n845)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1708.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1709 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .O(n846)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1709.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1710 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n847)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1710.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1711 (.I0(\Inst_pwm_servo_0/counter [4]), .I1(n846), .I2(\Inst_pwm_servo_0/counter [5]), 
            .I3(n847), .O(n848)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1711.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1712 (.I0(n848), .I1(\Inst_pwm_servo_0/counter [10]), 
            .I2(\Inst_pwm_servo_0/counter [11]), .O(n849)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1712.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1713 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/counter [18]), 
            .O(n850)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1713.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1714 (.I0(n849), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/counter [13]), .I3(n850), .O(n851)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1714.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1715 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1715.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1716 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1716.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1717 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1717.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1718 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/counter [0]), .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1718.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1719 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [1]), .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1719.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1720 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/pulse_width [2]), .I3(\Inst_pwm_servo_0/counter [3]), 
            .O(n852)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8e71 */ ;
    defparam LUT__1720.LUTMASK = 16'h8e71;
    EFX_LUT4 LUT__1721 (.I0(\Inst_pwm_servo_0/pulse_width[3] ), .I1(\Inst_pwm_servo_0/counter [3]), 
            .I2(n852), .O(n853)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1721.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1722 (.I0(\Inst_pwm_servo_0/counter [4]), .I1(n853), .I2(\Inst_pwm_servo_0/pulse_width[4] ), 
            .O(n854)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__1722.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__1723 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/pulse_width [5]), 
            .I2(\Inst_pwm_servo_0/counter [4]), .I3(n854), .O(n855)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4dd4 */ ;
    defparam LUT__1723.LUTMASK = 16'h4dd4;
    EFX_LUT4 LUT__1724 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/pulse_width [9]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n856)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1724.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1725 (.I0(\Inst_pwm_servo_0/pulse_width [7]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/pulse_width [10]), .I3(\Inst_pwm_servo_0/counter [10]), 
            .O(n857)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1725.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1726 (.I0(n856), .I1(n857), .O(n858)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1726.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1727 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/pulse_width [6]), 
            .I2(n858), .O(n859)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1727.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1728 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/counter [7]), .I3(\Inst_pwm_servo_0/pulse_width [7]), 
            .O(n860)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1728.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1729 (.I0(\Inst_pwm_servo_0/pulse_width [10]), .I1(\Inst_pwm_servo_0/counter [10]), 
            .O(n861)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1729.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1730 (.I0(n860), .I1(\Inst_pwm_servo_0/counter [9]), .I2(\Inst_pwm_servo_0/pulse_width [9]), 
            .I3(n861), .O(n862)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0071 */ ;
    defparam LUT__1730.LUTMASK = 16'h0071;
    EFX_LUT4 LUT__1731 (.I0(\Inst_pwm_servo_0/counter [13]), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/pulse_width [13]), .I3(\Inst_pwm_servo_0/pulse_width [12]), 
            .O(n863)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1731.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1732 (.I0(\Inst_pwm_servo_0/counter [15]), .I1(\Inst_pwm_servo_0/pulse_width [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/pulse_width [16]), 
            .O(n864)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1732.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1733 (.I0(n863), .I1(\Inst_pwm_servo_0/counter [14]), 
            .I2(\Inst_pwm_servo_0/pulse_width[14] ), .I3(n864), .O(n865)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__1733.LUTMASK = 16'he800;
    EFX_LUT4 LUT__1734 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/pulse_width [10]), 
            .I2(\Inst_pwm_servo_0/counter [11]), .I3(\Inst_pwm_servo_0/pulse_width [11]), 
            .O(n866)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1734.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1735 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/pulse_width [6]), 
            .I2(n858), .I3(n866), .O(n867)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__1735.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__1736 (.I0(n862), .I1(n865), .I2(n867), .O(n868)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1736.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1737 (.I0(\Inst_pwm_servo_0/pulse_width [11]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .I2(\Inst_pwm_servo_0/pulse_width [12]), .I3(\Inst_pwm_servo_0/counter [12]), 
            .O(n869)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1737.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1738 (.I0(\Inst_pwm_servo_0/pulse_width [13]), .I1(\Inst_pwm_servo_0/counter [13]), 
            .I2(\Inst_pwm_servo_0/counter [14]), .I3(\Inst_pwm_servo_0/pulse_width[14] ), 
            .O(n870)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1738.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1739 (.I0(\Inst_pwm_servo_0/counter [16]), .I1(\Inst_pwm_servo_0/pulse_width [16]), 
            .I2(\Inst_pwm_servo_0/pulse_width [15]), .I3(\Inst_pwm_servo_0/counter [15]), 
            .O(n871)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1739.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1740 (.I0(\Inst_pwm_servo_0/counter [19]), .I1(n871), 
            .I2(n845), .O(n872)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1740.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1741 (.I0(n870), .I1(n869), .I2(n865), .I3(n872), 
            .O(n873)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1741.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1742 (.I0(n859), .I1(n855), .I2(n868), .I3(n873), 
            .O(\Inst_pwm_servo_0/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1742.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1743 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1743.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1744 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1744.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1745 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1745.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1746 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1746.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1747 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1747.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1748 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1748.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1749 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1749.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1750 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1750.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1751 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1751.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1752 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1752.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1753 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1753.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1754 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1754.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1755 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [17]), .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1755.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1756 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [18]), .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1756.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1757 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_0/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1757.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1758 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_1/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1758.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1759 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_1/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1759.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1760 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_1/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1760.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1761 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_1/counter [0]), .O(\Inst_pwm_servo_1/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1761.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1762 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_1/n42 [1]), .O(\Inst_pwm_servo_1/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1762.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1763 (.I0(\Inst_pwm_servo_1/counter [16]), .I1(\Inst_pwm_servo_1/pulse_width [16]), 
            .I2(\Inst_pwm_servo_1/pulse_width [15]), .I3(\Inst_pwm_servo_1/counter [15]), 
            .O(n874)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1763.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1764 (.I0(\Inst_pwm_servo_0/counter [19]), .I1(n845), 
            .I2(n874), .O(n875)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1764.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1765 (.I0(\Inst_pwm_servo_1/counter [2]), .I1(\Inst_pwm_servo_1/counter [1]), 
            .I2(\Inst_pwm_servo_1/pulse_width [2]), .O(n876)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1765.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1766 (.I0(n876), .I1(\Inst_pwm_servo_1/counter [3]), .I2(\Inst_pwm_servo_1/pulse_width[3] ), 
            .O(n877)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2b2b */ ;
    defparam LUT__1766.LUTMASK = 16'h2b2b;
    EFX_LUT4 LUT__1767 (.I0(\Inst_pwm_servo_1/pulse_width [5]), .I1(\Inst_pwm_servo_1/counter [5]), 
            .I2(\Inst_pwm_servo_1/pulse_width [6]), .I3(\Inst_pwm_servo_1/counter [6]), 
            .O(n878)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1767.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1768 (.I0(\Inst_pwm_servo_1/counter [4]), .I1(\Inst_pwm_servo_1/pulse_width[4] ), 
            .I2(n878), .O(n879)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__1768.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__1769 (.I0(\Inst_pwm_servo_1/counter [4]), .I1(\Inst_pwm_servo_1/pulse_width[4] ), 
            .I2(\Inst_pwm_servo_1/counter [5]), .I3(\Inst_pwm_servo_1/pulse_width [5]), 
            .O(n880)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ee */ ;
    defparam LUT__1769.LUTMASK = 16'he0ee;
    EFX_LUT4 LUT__1770 (.I0(\Inst_pwm_servo_1/counter [6]), .I1(\Inst_pwm_servo_1/pulse_width [6]), 
            .I2(\Inst_pwm_servo_1/counter [7]), .I3(\Inst_pwm_servo_1/pulse_width [7]), 
            .O(n881)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1770.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1771 (.I0(n878), .I1(n880), .I2(n881), .O(n882)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1771.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1772 (.I0(\Inst_pwm_servo_1/pulse_width [7]), .I1(\Inst_pwm_servo_1/counter [7]), 
            .I2(\Inst_pwm_servo_1/counter [8]), .I3(\Inst_pwm_servo_1/pulse_width[8] ), 
            .O(n883)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1772.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1773 (.I0(\Inst_pwm_servo_1/pulse_width [9]), .I1(\Inst_pwm_servo_1/counter [9]), 
            .I2(\Inst_pwm_servo_1/pulse_width [10]), .I3(\Inst_pwm_servo_1/counter [10]), 
            .O(n884)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1773.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1774 (.I0(n883), .I1(n884), .O(n885)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1774.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1775 (.I0(n879), .I1(n877), .I2(n882), .I3(n885), 
            .O(n886)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1775.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1776 (.I0(\Inst_pwm_servo_1/counter [9]), .I1(\Inst_pwm_servo_1/counter [8]), 
            .I2(\Inst_pwm_servo_1/pulse_width[8] ), .I3(\Inst_pwm_servo_1/pulse_width [9]), 
            .O(n887)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__1776.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__1777 (.I0(n887), .I1(\Inst_pwm_servo_1/pulse_width [10]), 
            .I2(\Inst_pwm_servo_1/counter [10]), .O(n888)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__1777.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__1778 (.I0(\Inst_pwm_servo_1/counter [11]), .I1(\Inst_pwm_servo_1/pulse_width [11]), 
            .I2(n886), .I3(n888), .O(n889)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1778.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1779 (.I0(\Inst_pwm_servo_1/pulse_width [13]), .I1(\Inst_pwm_servo_1/counter [13]), 
            .I2(\Inst_pwm_servo_1/counter [14]), .I3(\Inst_pwm_servo_1/pulse_width[14] ), 
            .O(n890)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1779.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1780 (.I0(\Inst_pwm_servo_1/pulse_width [12]), .I1(\Inst_pwm_servo_1/counter [12]), 
            .I2(n890), .O(n891)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1780.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1781 (.I0(\Inst_pwm_servo_1/counter [13]), .I1(\Inst_pwm_servo_1/counter [12]), 
            .I2(\Inst_pwm_servo_1/pulse_width [13]), .I3(\Inst_pwm_servo_1/pulse_width [12]), 
            .O(n892)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1781.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1782 (.I0(\Inst_pwm_servo_1/counter [15]), .I1(\Inst_pwm_servo_1/pulse_width [15]), 
            .I2(\Inst_pwm_servo_1/counter [16]), .I3(\Inst_pwm_servo_1/pulse_width [16]), 
            .O(n893)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1782.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1783 (.I0(n892), .I1(\Inst_pwm_servo_1/counter [14]), 
            .I2(\Inst_pwm_servo_1/pulse_width[14] ), .I3(n893), .O(n894)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__1783.LUTMASK = 16'he800;
    EFX_LUT4 LUT__1784 (.I0(n889), .I1(n891), .I2(n894), .I3(n875), 
            .O(\Inst_pwm_servo_1/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1784.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1785 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_1/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1785.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1786 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_1/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1786.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1787 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_1/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1787.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1788 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_1/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1788.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1789 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_1/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1789.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1790 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_1/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1790.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1791 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_1/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1791.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1792 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_1/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1792.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1793 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_1/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1793.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1794 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_1/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1794.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1795 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_1/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1795.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1796 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_1/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1796.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1797 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_1/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_1/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1797.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1798 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_2/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1798.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1799 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_2/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1799.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1802 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_2/counter [4]), .I3(\Inst_pwm_servo_2/counter [3]), 
            .O(n895)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__1802.LUTMASK = 16'he000;
    EFX_LUT4 LUT__1803 (.I0(n895), .I1(\Inst_pwm_servo_2/counter [5]), .I2(\Inst_pwm_servo_2/counter [6]), 
            .I3(\Inst_pwm_servo_2/counter [7]), .O(n896)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1803.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1804 (.I0(\Inst_pwm_servo_2/counter [9]), .I1(\Inst_pwm_servo_2/counter [10]), 
            .I2(\Inst_pwm_servo_2/counter [11]), .I3(\Inst_pwm_servo_2/counter [12]), 
            .O(n897)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1804.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1805 (.I0(n896), .I1(\Inst_pwm_servo_2/counter [8]), .I2(\Inst_pwm_servo_2/counter [13]), 
            .I3(n897), .O(n898)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__1805.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1806 (.I0(\Inst_pwm_servo_0/counter [19]), .I1(\Inst_pwm_servo_2/counter [15]), 
            .I2(\Inst_pwm_servo_2/counter [16]), .I3(n845), .O(n899)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1806.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1807 (.I0(n898), .I1(\Inst_pwm_servo_2/counter [14]), 
            .I2(n899), .O(\Inst_pwm_servo_2/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1807.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1808 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_2/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1808.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1809 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_2/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1809.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1810 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_2/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1810.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1811 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_2/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1811.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1812 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_2/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1812.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1813 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_2/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1813.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1814 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_2/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1814.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1815 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_2/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1815.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1816 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_2/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1816.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1817 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_2/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1817.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1818 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_2/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1818.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1819 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_2/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1819.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1820 (.I0(n851), .I1(n845), .I2(\Inst_pwm_servo_2/counter [19]), 
            .I3(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_2/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1820.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1821 (.I0(\Inst_debounce/count_reg [8]), .I1(\Inst_debounce/count_reg [6]), 
            .I2(\Inst_debounce/count_reg [7]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n900)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1821.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1822 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n901)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1822.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1823 (.I0(n900), .I1(n901), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n902)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1823.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1824 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n903)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1824.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1825 (.I0(n902), .I1(n903), .O(n904)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1825.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1826 (.I0(n904), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(213)
    defparam LUT__1826.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1827 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n904), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top_MPU_Servo.vhd(213)
    defparam LUT__1827.LUTMASK = 16'h9f9f;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_4f404d17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4f404d17_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_4f404d17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_4f404d17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_4f404d17__8_8_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_4f404d17__8_8_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_4f404d17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4f404d17_122
// module not written out since it is a black box. 
//

