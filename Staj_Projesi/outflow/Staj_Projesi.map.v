
//
// Verific Verilog Description of module top
//

module top (clk_i, rst_n_i, switch_in, pwm_out_0, pwm_out_1, pwm_out_2, 
            rx, tx, spi_cs_n_o, mosi_o, miso_i, sclk_o) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(25)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    input switch_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(27)
    output pwm_out_0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    output pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(30)
    output pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(31)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(33)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(34)
    output spi_cs_n_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(36)
    output mosi_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(37)
    input miso_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(38)
    output sclk_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(39)
    
    wire [21:0]n872_2;
    wire [31:0]n301_2;
    wire [21:0]n872_3;
    wire [21:0]n872_4;
    wire [21:0]n872_5;
    wire [21:0]n872_6;
    wire [21:0]n872_7;
    wire [21:0]n872_8;
    wire [21:0]n872_9;
    wire [21:0]n872_10;
    wire [21:0]n872_11;
    wire [21:0]n872_12;
    wire [21:0]n872_13;
    wire [21:0]n872_14;
    wire [21:0]n872_15;
    wire [21:0]n872_16;
    wire [21:0]n872_17;
    wire [21:0]n872_18;
    wire [21:0]n872_19;
    wire [21:0]n872_20;
    wire [21:0]n872_21;
    wire [21:0]n872_22;
    wire [31:0]n301_33;
    wire [31:0]n301_32;
    wire [31:0]n301_31;
    wire [31:0]n301_30;
    wire [31:0]n301_29;
    wire [31:0]n301_28;
    wire [31:0]n301_27;
    wire [31:0]n301_26;
    wire [31:0]n301_25;
    wire [31:0]n301_24;
    wire [31:0]n301_23;
    wire [31:0]n301_22;
    wire [31:0]n301_21;
    wire [31:0]n301_20;
    wire [31:0]n301_19;
    wire [21:0]n906_2;
    wire [7:0]n861_2;
    wire [21:0]n906_3;
    wire [21:0]n906_4;
    wire [21:0]n906_5;
    wire [21:0]n906_6;
    wire [21:0]n906_7;
    wire [21:0]n906_8;
    wire [21:0]n906_9;
    wire [21:0]n906_10;
    wire [21:0]n906_11;
    wire [21:0]n906_12;
    wire [21:0]n906_13;
    wire [21:0]n906_14;
    wire [21:0]n906_15;
    wire [21:0]n906_16;
    wire [21:0]n906_17;
    wire [21:0]n906_18;
    wire [21:0]n906_19;
    wire [21:0]n906_20;
    wire [21:0]n906_21;
    wire [21:0]n906_22;
    wire [21:0]n906_23;
    wire [7:0]n861_3;
    wire [7:0]n861_4;
    wire [7:0]n861_5;
    wire [7:0]n861_6;
    wire [7:0]n861_7;
    wire [7:0]n861_8;
    wire [7:0]n861_9;
    wire [7:0]\Inst_MPU6500_Controller/raw_data[12] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [31:0]angle_pool;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    
    wire \add_267/n2 ;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(89)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(92)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(68)
    wire [21:0]uart_timer;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(240)
    
    wire \Inst_pwm_servo_0/add_6/n6 ;
    wire [7:0]angle_raw_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(231)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(173)
    
    wire tx_start_sig;
    wire [7:0]\Inst_MPU6500_Controller/raw_data[13] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    
    wire \angle_filtered_x[0] ;
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(181)
    wire [15:0]gyro_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(186)
    
    wire \add_29/n2 ;
    wire [31:0]n301_3;
    
    wire \add_29/n4 ;
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n36 , \Inst_debounce/add_30/n34 , \Inst_debounce/add_30/n32 , 
        \Inst_debounce/add_30/n30 , \Inst_debounce/add_30/n28 , \Inst_debounce/add_30/n26 , 
        \Inst_debounce/add_30/n24 , \Inst_debounce/add_30/n22 ;
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(182)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid, \Inst_debounce/add_30/n20 , \Inst_debounce/add_30/n18 , 
        \Inst_debounce/add_30/n16 , \Inst_debounce/add_30/n14 , \Inst_debounce/add_30/n12 , 
        \Inst_debounce/add_30/n10 , \Inst_debounce/add_30/n8 , \Inst_debounce/add_30/n6 , 
        \Inst_debounce/add_30/n4 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_pwm_servo_0/n42 ;
    
    wire \Inst_pwm_servo_0/add_20/n2 , \Inst_pwm_servo_2/add_6/n6 ;
    wire [14:0]\Inst_pwm_servo_2/n24 ;
    
    wire \Inst_pwm_servo_2/n23 ;
    wire [19:0]\Inst_pwm_servo_0/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_0/pulse_width[3] , \Inst_pwm_servo_0/pulse_width[4] , 
        \Inst_pwm_servo_0/pulse_width[8] , \Inst_pwm_servo_0/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_2/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_pwm_servo_2/n42 ;
    
    wire \Inst_debounce/add_30/n2 , \Inst_pwm_servo_2/add_6/n28 ;
    wire [19:0]\Inst_pwm_servo_2/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_2/pulse_width[3] , \Inst_pwm_servo_2/pulse_width[4] , 
        \Inst_pwm_servo_2/pulse_width[8] , \Inst_pwm_servo_2/pulse_width[14] ;
    wire [31:0]n301_4;
    
    wire \add_29/n6 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(49)
    
    wire \Inst_pwm_servo_2/add_6/n26 ;
    wire [5:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(47)
    
    wire \Inst_pwm_servo_2/add_6/n24 , \Inst_pwm_servo_2/add_6/n22 , \Inst_pwm_servo_2/add_6/n20 , 
        \Inst_pwm_servo_2/add_6/n18 , \Inst_pwm_servo_2/add_6/n16 , \Inst_pwm_servo_2/add_6/n14 , 
        \Inst_pwm_servo_2/add_6/n12 , \Inst_pwm_servo_2/add_6/n10 , \Inst_pwm_servo_2/add_6/n8 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(48)
    
    wire tx_busy_sig, \Inst_pwm_servo_0/add_20/n36 , \Inst_pwm_servo_0/add_20/n34 , 
        \Inst_pwm_servo_0/add_20/n32 , \Inst_pwm_servo_0/add_20/n30 , \Inst_pwm_servo_0/add_20/n28 , 
        \Inst_pwm_servo_0/add_20/n26 , \Inst_pwm_servo_0/add_20/n24 , \Inst_pwm_servo_0/add_20/n22 , 
        \Inst_pwm_servo_0/add_20/n20 , \Inst_pwm_servo_0/add_20/n18 , \Inst_pwm_servo_0/add_20/n16 , 
        \Inst_pwm_servo_0/add_20/n14 , \Inst_pwm_servo_0/add_20/n12 , \Inst_pwm_servo_0/add_20/n10 , 
        \Inst_pwm_servo_0/add_20/n8 , \Inst_pwm_servo_0/add_20/n6 , \Inst_pwm_servo_0/add_20/n4 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \Inst_debounce/sync_1 , switch_out, \Inst_debounce/sync_0 ;
    wire [14:0]\Inst_pwm_servo_0/n24 ;
    
    wire \Inst_pwm_servo_0/n23 , \Inst_pwm_servo_0/add_6/n28 , \Inst_pwm_servo_0/add_6/n26 , 
        \Inst_pwm_servo_0/add_6/n24 , \Inst_pwm_servo_0/add_6/n22 , \Inst_pwm_servo_0/add_6/n20 , 
        \Inst_pwm_servo_0/add_6/n18 , \Inst_pwm_servo_0/add_6/n16 , \Inst_pwm_servo_0/add_6/n14 , 
        \Inst_pwm_servo_0/add_6/n12 , \Inst_pwm_servo_0/add_6/n10 , \Inst_pwm_servo_0/add_6/n8 , 
        \add_267/n40 , \add_267/n38 , \add_267/n36 , \add_267/n34 , 
        \add_267/n32 , \add_267/n30 , \add_267/n28 , \add_267/n26 , 
        \add_267/n24 , \add_267/n22 , \add_267/n20 , \add_267/n18 , 
        \add_267/n16 , \add_267/n14 , \add_267/n12 , \add_267/n10 , 
        \add_267/n8 , \add_267/n6 , \add_267/n4 , \add_29/n62 , \add_29/n60 , 
        \add_29/n58 , \add_29/n56 , \add_29/n54 , \add_29/n52 , \add_29/n50 , 
        \add_29/n48 , \add_29/n46 , \add_29/n44 , \add_29/n42 , \add_29/n40 , 
        \add_29/n38 , \add_29/n36 ;
    wire [31:0]n301_18;
    
    wire \add_29/n34 ;
    wire [31:0]n301_17;
    
    wire \add_29/n32 ;
    wire [31:0]n301_16;
    
    wire \add_29/n30 ;
    wire [31:0]n301_15;
    
    wire \add_29/n28 ;
    wire [31:0]n301_14;
    
    wire \add_29/n26 ;
    wire [15:0]\Inst_pwm_servo_2/n6 ;
    wire [31:0]n301_13;
    
    wire \add_29/n24 ;
    wire [31:0]n301_12;
    
    wire \add_29/n22 ;
    wire [31:0]n301_11;
    
    wire \add_29/n20 ;
    wire [31:0]n301_10;
    
    wire \add_29/n18 ;
    wire [31:0]n301_9;
    
    wire \add_29/n16 ;
    wire [31:0]n301_8;
    
    wire \add_29/n14 ;
    wire [31:0]n301_7;
    
    wire \add_29/n12 ;
    wire [31:0]n301_6;
    
    wire \add_29/n10 ;
    wire [15:0]\Inst_pwm_servo_0/n6 ;
    wire [31:0]n301_5;
    
    wire \add_29/n8 , \clk_i~O , \Inst_MPU6500_Controller/n6273 , n977, 
        n1516;
    wire [3:0]\Inst_MPU6500_Controller/n763 ;
    
    wire ceg_net298, \Inst_MPU6500_Controller/n777 ;
    wire [3:0]\Inst_MPU6500_Controller/n735 ;
    
    wire ceg_net313;
    wire [21:0]\Inst_MPU6500_Controller/n740 ;
    
    wire ceg_net300;
    wire [2:0]\Inst_MPU6500_Controller/n731 ;
    
    wire ceg_net279, n1526, n1518, \Inst_MPU6500_Controller/n6280 ;
    wire [7:0]\Inst_MPU6500_Controller/n768 ;
    
    wire ceg_net308, \Inst_MPU6500_Controller/n5614 , \Inst_MPU6500_Controller/n730 , 
        ceg_net302, \Inst_MPU6500_Controller/n4570 , \Inst_MPU6500_Controller/n4575 , 
        \Inst_MPU6500_Controller/n4580 , \Inst_MPU6500_Controller/n4585 , 
        \Inst_MPU6500_Controller/n4590 , \Inst_MPU6500_Controller/n4595 , 
        \Inst_MPU6500_Controller/n4600 , \Inst_MPU6500_Controller/n4605 , 
        \Inst_MPU6500_Controller/n4610 , \Inst_MPU6500_Controller/n4615 , 
        \Inst_MPU6500_Controller/n4620 , \Inst_MPU6500_Controller/n4625 , 
        \Inst_MPU6500_Controller/n4630 , \Inst_MPU6500_Controller/n4635 , 
        \Inst_MPU6500_Controller/n4640 , ceg_net309, ceg_net314, ceg_net315;
    wire [3:0]\Inst_Spi_Mode_3/n129 ;
    
    wire ceg_net61, ceg_net318;
    wire [7:0]\Inst_Spi_Mode_3/n135 ;
    
    wire ceg_net207;
    wire [3:0]\Inst_Spi_Mode_3/n124 ;
    
    wire ceg_net208, \~ceg_net69 , ceg_net209, \Inst_Spi_Mode_3/n25 , 
        \Inst_Spi_Mode_3/n466 , ceg_net210, ceg_net211, ceg_net212, 
        ceg_net213, ceg_net214, ceg_net215, ceg_net216;
    wire [1:0]\Inst_Spi_Mode_3/n144 ;
    wire [19:0]\Inst_pwm_servo_0/n63 ;
    
    wire \Inst_pwm_servo_0/n85 ;
    wire [19:0]\Inst_pwm_servo_2/n63 ;
    
    wire \Inst_pwm_servo_2/n85 , \Inst_uart_tx/n333 ;
    wire [5:0]\Inst_uart_tx/n129 ;
    
    wire ceg_net92, ceg_net319;
    wire [2:0]\Inst_uart_tx/n136 ;
    
    wire ceg_net222, \Inst_uart_tx/n118 , ceg_net219, \Inst_uart_tx/n119 , 
        ceg_net220;
    wire [1:0]\Inst_uart_tx/n115 ;
    
    wire \Inst_debounce/n151 , \Inst_debounce/n149 , n976, n762, n763, 
        n764, n765, n766, n767, n768, n769, n770, n771, n772, 
        n773, n774, n775, n776, n777, n778, n779, n780, n781, 
        n782, n783, n784, n785, n786, n787, n788, n789, n790, 
        n791, n792, n793, n794, n795, n796, n797, n798, n799, 
        n800, n801, n802, n803, n804, n805, n806, n807, n808, 
        n809, n810, n811, n812, n813, n814, n815, n816, n817, 
        n818, n819, n820, n821, n822, n823, n824, n825, n826, 
        n827, n828, n829, n830, n831, n832, n833, n834, n835, 
        n836, n837, n838, n839, n840, n841, n842, n843, n844, 
        n845, n846, n847, n848, n849, n850, n851, n852, n853, 
        n854, n855, n856, n857, n858, n859, n860, n861, n862, 
        n863, n864, n865, n866, n867, n868, n869, n870, n871, 
        n872, n873, n874, n875, n876, n877, n878, n879, n880, 
        n881, n882, n883, n884, n885, n886, n887, n888, n889, 
        n890, n891, n892, n893, n894, n895, n896, n897, n898, 
        n899, n900, n901, n902, n903, n904, n905, n906, n907, 
        n908, n909, n910, n911, n912, n913, n914, n915, n916, 
        n917, n918, n919, n920, n921, n922, n923, n924, n925, 
        n926, n927, n928, n929, n930, n931, n932, n933, n934, 
        n935, n936, n937, n938, n939, n940, n941, n942, n943, 
        n944, n945, n946, n947, n948, n949, n950, n951, n952, 
        n953, n954, n955, n956, n957, n958, n959, n960, n961, 
        n962, n963, n964, n965, n966, n967, n968, n969, n970, 
        n971, n972, n973, n974, n975;
    
    assign pwm_out_0 = pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    EFX_LUT4 LUT__1679 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1679.LUTMASK = 16'h4000;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[0]~FF  (.D(n301_2[0]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[0]~FF  (.D(\Inst_MPU6500_Controller/n763 [0]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_start~FF  (.D(\Inst_MPU6500_Controller/n777 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \spi_start~FF .CLK_POLARITY = 1'b1;
    defparam \spi_start~FF .CE_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_POLARITY = 1'b0;
    defparam \spi_start~FF .D_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_SYNC = 1'b0;
    defparam \spi_start~FF .SR_VALUE = 1'b0;
    defparam \spi_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n735 [0]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n740 [0]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n731 [0]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[0]~FF  (.D(n906_2[0]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[0]~FF  (.D(n861_2[0]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[0]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[0]~FF  (.D(angle_raw_z[0]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(n1518), .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[0]~FF  (.D(\Inst_MPU6500_Controller/n768 [0]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [0]), 
           .CE(\Inst_MPU6500_Controller/n5614 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .D_POLARITY = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_cs_n_o~FF  (.D(\Inst_MPU6500_Controller/n730 ), .CE(ceg_net302), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_cs_n_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \spi_cs_n_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .CE_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .SR_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .D_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC = 1'b0;
    defparam \spi_cs_n_o~FF .SR_VALUE = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n740 [1]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n740 [2]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n740 [3]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n740 [4]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n740 [5]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n740 [6]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n740 [7]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n740 [8]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n740 [9]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n740 [10]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n740 [11]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n740 [12]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n740 [13]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n740 [14]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n740 [15]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n740 [16]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n740 [17]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n740 [18]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n740 [19]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n740 [20]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n740 [21]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[1]~FF  (.D(\Inst_MPU6500_Controller/n4570 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[2]~FF  (.D(\Inst_MPU6500_Controller/n4575 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[3]~FF  (.D(\Inst_MPU6500_Controller/n4580 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[4]~FF  (.D(\Inst_MPU6500_Controller/n4585 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[5]~FF  (.D(\Inst_MPU6500_Controller/n4590 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[6]~FF  (.D(\Inst_MPU6500_Controller/n4595 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[7]~FF  (.D(\Inst_MPU6500_Controller/n4600 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[8]~FF  (.D(\Inst_MPU6500_Controller/n4605 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[9]~FF  (.D(\Inst_MPU6500_Controller/n4610 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[10]~FF  (.D(\Inst_MPU6500_Controller/n4615 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[11]~FF  (.D(\Inst_MPU6500_Controller/n4620 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[12]~FF  (.D(\Inst_MPU6500_Controller/n4625 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[13]~FF  (.D(\Inst_MPU6500_Controller/n4630 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[14]~FF  (.D(\Inst_MPU6500_Controller/n4635 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[15]~FF  (.D(\Inst_MPU6500_Controller/n4640 ), .CE(\Inst_MPU6500_Controller/n5614 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6273 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6280 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[1]~FF  (.D(\Inst_MPU6500_Controller/n768 [1]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[2]~FF  (.D(\Inst_MPU6500_Controller/n768 [2]), 
           .CE(ceg_net309), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[3]~FF  (.D(\Inst_MPU6500_Controller/n768 [3]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n768 [4]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n768 [5]), 
           .CE(ceg_net308), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[6]~FF  (.D(\Inst_MPU6500_Controller/n768 [6]), 
           .CE(ceg_net309), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[7]~FF  (.D(\Inst_MPU6500_Controller/n768 [7]), 
           .CE(ceg_net309), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n735 [1]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n735 [2]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n735 [3]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[1]~FF  (.D(\Inst_MPU6500_Controller/n763 [1]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[2]~FF  (.D(\Inst_MPU6500_Controller/n763 [2]), 
           .CE(ceg_net314), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[3]~FF  (.D(\Inst_MPU6500_Controller/n763 [3]), 
           .CE(ceg_net315), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[1]~FF  (.D(\Inst_MPU6500_Controller/n731 [1]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[2]~FF  (.D(\Inst_MPU6500_Controller/n731 [2]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
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
           .SR(rst_n_i), .Q(pwm_out_1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
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
    EFX_FF \Inst_pwm_servo_2/counter[2]~FF  (.D(\Inst_pwm_servo_2/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[0]~FF  (.D(\Inst_pwm_servo_2/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[1]~FF  (.D(\Inst_pwm_servo_2/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \Inst_pwm_servo_2/pulse_width[2]~FF  (.D(\Inst_pwm_servo_2/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[3]~FF  (.D(\Inst_pwm_servo_2/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[4]~FF  (.D(\Inst_pwm_servo_2/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[5]~FF  (.D(\Inst_pwm_servo_2/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[6]~FF  (.D(\Inst_pwm_servo_2/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[7]~FF  (.D(\Inst_pwm_servo_2/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[8]~FF  (.D(\Inst_pwm_servo_2/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[9]~FF  (.D(\Inst_pwm_servo_2/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[10]~FF  (.D(\Inst_pwm_servo_2/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[11]~FF  (.D(\Inst_pwm_servo_2/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[12]~FF  (.D(\Inst_pwm_servo_2/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[13]~FF  (.D(\Inst_pwm_servo_2/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[14]~FF  (.D(\Inst_pwm_servo_2/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[15]~FF  (.D(\Inst_pwm_servo_2/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[16]~FF  (.D(\Inst_pwm_servo_2/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[4]~FF  (.D(tx_data_sig[4]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[3]~FF  (.D(tx_data_sig[3]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[2]~FF  (.D(tx_data_sig[2]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n129 [0]), .CE(ceg_net92), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[1]~FF  (.D(tx_data_sig[1]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net319), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[0]~FF  (.D(tx_data_sig[0]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n136 [0]), .CE(ceg_net222), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n118 ), .CE(ceg_net219), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_busy_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \tx_busy_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_busy_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_busy_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[5]~FF  (.D(tx_data_sig[5]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n119 ), .CE(ceg_net220), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[6]~FF  (.D(tx_data_sig[6]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[7]~FF  (.D(tx_data_sig[7]), .CE(\Inst_uart_tx/n333 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n129 [1]), .CE(ceg_net92), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n129 [2]), .CE(ceg_net92), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n129 [3]), .CE(ceg_net92), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n129 [4]), .CE(ceg_net92), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n129 [5]), .CE(ceg_net92), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net222), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n136 [2]), .CE(ceg_net222), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n115 [1]), .CE(ceg_net319), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \angle_pool[1]~FF  (.D(n301_3[1]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[2]~FF  (.D(n301_4[2]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[3]~FF  (.D(n301_5[3]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[4]~FF  (.D(n301_6[4]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[5]~FF  (.D(n301_7[5]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[6]~FF  (.D(n301_8[6]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[7]~FF  (.D(n301_9[7]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[8]~FF  (.D(n301_10[8]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[8]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[8]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[9]~FF  (.D(n301_11[9]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[9]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[9]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[10]~FF  (.D(n301_12[10]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[10]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[10]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[11]~FF  (.D(n301_13[11]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[11]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[11]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[12]~FF  (.D(n301_14[12]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[12]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[12]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[13]~FF  (.D(n301_15[13]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[13]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[13]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[14]~FF  (.D(n301_16[14]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[14]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[14]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[15]~FF  (.D(n301_17[15]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[15]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[15]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[16]~FF  (.D(n301_18[16]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[16]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[16]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[17]~FF  (.D(n301_19[17]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[17]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[17]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[18]~FF  (.D(n301_20[18]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[18]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[18]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[19]~FF  (.D(n301_21[19]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[19]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[19]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[20]~FF  (.D(n301_22[20]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[20]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[20]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[21]~FF  (.D(n301_23[21]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[21]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[21]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[22]~FF  (.D(n301_24[22]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[22]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[22]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[23]~FF  (.D(n301_25[23]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[23]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[23]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[24]~FF  (.D(n301_26[24]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[24]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[24]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[25]~FF  (.D(n301_27[25]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[25]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[25]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[26]~FF  (.D(n301_28[26]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[26]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[26]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[27]~FF  (.D(n301_29[27]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[27]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[27]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[28]~FF  (.D(n301_30[28]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[28]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[28]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[29]~FF  (.D(n301_31[29]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[29]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[29]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[30]~FF  (.D(n301_32[30]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[30]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[30]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[31]~FF  (.D(n301_33[31]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[31]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[31]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[1]~FF  (.D(n906_3[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[2]~FF  (.D(n906_4[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[3]~FF  (.D(n906_5[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[4]~FF  (.D(n906_6[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[5]~FF  (.D(n906_7[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[6]~FF  (.D(n906_8[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[7]~FF  (.D(n906_9[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[8]~FF  (.D(n906_10[8]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[9]~FF  (.D(n906_11[9]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[9]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[9]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[10]~FF  (.D(n906_12[10]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[10]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[10]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[11]~FF  (.D(n906_13[11]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[11]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[11]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[11]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[12]~FF  (.D(n906_14[12]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[12]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[12]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[12]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[13]~FF  (.D(n906_15[13]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[13]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[13]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[13]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[14]~FF  (.D(n906_16[14]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[14]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[14]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[14]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[15]~FF  (.D(n906_17[15]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[15]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[15]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[15]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[16]~FF  (.D(n906_18[16]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[16]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[16]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[16]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[17]~FF  (.D(n906_19[17]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[17]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[17]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[17]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[18]~FF  (.D(n906_20[18]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[18]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[18]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[18]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[19]~FF  (.D(n906_21[19]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[19]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[19]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[19]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[20]~FF  (.D(n906_22[20]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[20]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[20]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[20]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[21]~FF  (.D(n906_23[21]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[21]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[21]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[21]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[1]~FF  (.D(n861_3[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[1]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[2]~FF  (.D(n861_4[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[2]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[3]~FF  (.D(n861_5[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[3]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[4]~FF  (.D(n861_6[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[4]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[5]~FF  (.D(n861_7[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[5]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[6]~FF  (.D(n861_8[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[6]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[7]~FF  (.D(n861_9[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_raw_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[1]~FF  (.D(angle_raw_z[1]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[2]~FF  (.D(angle_raw_z[2]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[3]~FF  (.D(angle_raw_z[3]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[4]~FF  (.D(angle_raw_z[4]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[5]~FF  (.D(angle_raw_z[5]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[6]~FF  (.D(angle_raw_z[6]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[7]~FF  (.D(angle_raw_z[7]), .CE(n1526), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \tx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__1680 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(spi_data_valid), 
            .O(n763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1680.LUTMASK = 16'h4000;
    EFX_ADD \add_267/i1  (.I0(uart_timer[1]), .I1(uart_timer[0]), .CI(1'b0), 
            .O(n872_2[1]), .CO(\add_267/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i1 .I0_POLARITY = 1'b1;
    defparam \add_267/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_0/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i1  (.I0(angle_pool[0]), .I1(gyro_z[0]), .CI(1'b0), 
            .O(n301_2[0]), .CO(\add_29/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i1 .I0_POLARITY = 1'b1;
    defparam \add_29/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i2  (.I0(angle_pool[1]), .I1(gyro_z[1]), .CI(\add_29/n2 ), 
            .O(n301_3[1]), .CO(\add_29/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i2 .I0_POLARITY = 1'b1;
    defparam \add_29/i2 .I1_POLARITY = 1'b1;
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
    EFX_ADD \Inst_pwm_servo_0/add_20/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_2/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [15]), 
            .CI(\Inst_pwm_servo_2/add_6/n28 ), .O(\Inst_pwm_servo_2/n24 [14]), 
            .CO(n976)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_20/i1  (.I0(\Inst_pwm_servo_2/counter [1]), 
            .I1(\Inst_pwm_servo_2/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_2/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_2/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [14]), 
            .CI(\Inst_pwm_servo_2/add_6/n26 ), .O(\Inst_pwm_servo_2/n24 [13]), 
            .CO(\Inst_pwm_servo_2/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i3  (.I0(angle_pool[2]), .I1(gyro_z[2]), .CI(\add_29/n4 ), 
            .O(n301_4[2]), .CO(\add_29/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i3 .I0_POLARITY = 1'b1;
    defparam \add_29/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [13]), 
            .CI(\Inst_pwm_servo_2/add_6/n24 ), .O(\Inst_pwm_servo_2/n24 [12]), 
            .CO(\Inst_pwm_servo_2/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [12]), 
            .CI(\Inst_pwm_servo_2/add_6/n22 ), .O(\Inst_pwm_servo_2/n24 [11]), 
            .CO(\Inst_pwm_servo_2/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [11]), 
            .CI(\Inst_pwm_servo_2/add_6/n20 ), .O(\Inst_pwm_servo_2/n24 [10]), 
            .CO(\Inst_pwm_servo_2/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [10]), 
            .CI(\Inst_pwm_servo_2/add_6/n18 ), .O(\Inst_pwm_servo_2/n24 [9]), 
            .CO(\Inst_pwm_servo_2/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [9]), 
            .CI(\Inst_pwm_servo_2/add_6/n16 ), .O(\Inst_pwm_servo_2/n24 [8]), 
            .CO(\Inst_pwm_servo_2/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [8]), 
            .CI(\Inst_pwm_servo_2/add_6/n14 ), .O(\Inst_pwm_servo_2/n24 [7]), 
            .CO(\Inst_pwm_servo_2/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [7]), 
            .CI(\Inst_pwm_servo_2/add_6/n12 ), .O(\Inst_pwm_servo_2/n24 [6]), 
            .CO(\Inst_pwm_servo_2/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [6]), 
            .CI(\Inst_pwm_servo_2/add_6/n10 ), .O(\Inst_pwm_servo_2/n24 [5]), 
            .CO(\Inst_pwm_servo_2/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [5]), 
            .CI(\Inst_pwm_servo_2/add_6/n8 ), .O(\Inst_pwm_servo_2/n24 [4]), 
            .CO(\Inst_pwm_servo_2/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [4]), 
            .CI(\Inst_pwm_servo_2/add_6/n6 ), .O(\Inst_pwm_servo_2/n24 [3]), 
            .CO(\Inst_pwm_servo_2/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i4 .I1_POLARITY = 1'b1;
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
            .CO(n977)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
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
    EFX_ADD \add_267/i21  (.I0(uart_timer[21]), .I1(1'b0), .CI(\add_267/n40 ), 
            .O(n872_3[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i21 .I0_POLARITY = 1'b1;
    defparam \add_267/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i20  (.I0(uart_timer[20]), .I1(1'b0), .CI(\add_267/n38 ), 
            .O(n872_4[20]), .CO(\add_267/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i20 .I0_POLARITY = 1'b1;
    defparam \add_267/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i19  (.I0(uart_timer[19]), .I1(1'b0), .CI(\add_267/n36 ), 
            .O(n872_5[19]), .CO(\add_267/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i19 .I0_POLARITY = 1'b1;
    defparam \add_267/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i18  (.I0(uart_timer[18]), .I1(1'b0), .CI(\add_267/n34 ), 
            .O(n872_6[18]), .CO(\add_267/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i18 .I0_POLARITY = 1'b1;
    defparam \add_267/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i17  (.I0(uart_timer[17]), .I1(1'b0), .CI(\add_267/n32 ), 
            .O(n872_7[17]), .CO(\add_267/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i17 .I0_POLARITY = 1'b1;
    defparam \add_267/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i16  (.I0(uart_timer[16]), .I1(1'b0), .CI(\add_267/n30 ), 
            .O(n872_8[16]), .CO(\add_267/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i16 .I0_POLARITY = 1'b1;
    defparam \add_267/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i15  (.I0(uart_timer[15]), .I1(1'b0), .CI(\add_267/n28 ), 
            .O(n872_9[15]), .CO(\add_267/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i15 .I0_POLARITY = 1'b1;
    defparam \add_267/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i14  (.I0(uart_timer[14]), .I1(1'b0), .CI(\add_267/n26 ), 
            .O(n872_10[14]), .CO(\add_267/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i14 .I0_POLARITY = 1'b1;
    defparam \add_267/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i13  (.I0(uart_timer[13]), .I1(1'b0), .CI(\add_267/n24 ), 
            .O(n872_11[13]), .CO(\add_267/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i13 .I0_POLARITY = 1'b1;
    defparam \add_267/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i12  (.I0(uart_timer[12]), .I1(1'b0), .CI(\add_267/n22 ), 
            .O(n872_12[12]), .CO(\add_267/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i12 .I0_POLARITY = 1'b1;
    defparam \add_267/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i11  (.I0(uart_timer[11]), .I1(1'b0), .CI(\add_267/n20 ), 
            .O(n872_13[11]), .CO(\add_267/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i11 .I0_POLARITY = 1'b1;
    defparam \add_267/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i10  (.I0(uart_timer[10]), .I1(1'b0), .CI(\add_267/n18 ), 
            .O(n872_14[10]), .CO(\add_267/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i10 .I0_POLARITY = 1'b1;
    defparam \add_267/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i9  (.I0(uart_timer[9]), .I1(1'b0), .CI(\add_267/n16 ), 
            .O(n872_15[9]), .CO(\add_267/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i9 .I0_POLARITY = 1'b1;
    defparam \add_267/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i8  (.I0(uart_timer[8]), .I1(1'b0), .CI(\add_267/n14 ), 
            .O(n872_16[8]), .CO(\add_267/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i8 .I0_POLARITY = 1'b1;
    defparam \add_267/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i7  (.I0(uart_timer[7]), .I1(1'b0), .CI(\add_267/n12 ), 
            .O(n872_17[7]), .CO(\add_267/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i7 .I0_POLARITY = 1'b1;
    defparam \add_267/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i6  (.I0(uart_timer[6]), .I1(1'b0), .CI(\add_267/n10 ), 
            .O(n872_18[6]), .CO(\add_267/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i6 .I0_POLARITY = 1'b1;
    defparam \add_267/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i5  (.I0(uart_timer[5]), .I1(1'b0), .CI(\add_267/n8 ), 
            .O(n872_19[5]), .CO(\add_267/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i5 .I0_POLARITY = 1'b1;
    defparam \add_267/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i4  (.I0(uart_timer[4]), .I1(1'b0), .CI(\add_267/n6 ), 
            .O(n872_20[4]), .CO(\add_267/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i4 .I0_POLARITY = 1'b1;
    defparam \add_267/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i3  (.I0(uart_timer[3]), .I1(1'b0), .CI(\add_267/n4 ), 
            .O(n872_21[3]), .CO(\add_267/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i3 .I0_POLARITY = 1'b1;
    defparam \add_267/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i2  (.I0(uart_timer[2]), .I1(1'b0), .CI(\add_267/n2 ), 
            .O(n872_22[2]), .CO(\add_267/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i2 .I0_POLARITY = 1'b1;
    defparam \add_267/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i32  (.I0(angle_pool[31]), .I1(gyro_z[15]), .CI(\add_29/n62 ), 
            .O(n301_33[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i32 .I0_POLARITY = 1'b1;
    defparam \add_29/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i31  (.I0(angle_pool[30]), .I1(gyro_z[15]), .CI(\add_29/n60 ), 
            .O(n301_32[30]), .CO(\add_29/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i31 .I0_POLARITY = 1'b1;
    defparam \add_29/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i30  (.I0(angle_pool[29]), .I1(gyro_z[15]), .CI(\add_29/n58 ), 
            .O(n301_31[29]), .CO(\add_29/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i30 .I0_POLARITY = 1'b1;
    defparam \add_29/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i29  (.I0(angle_pool[28]), .I1(gyro_z[15]), .CI(\add_29/n56 ), 
            .O(n301_30[28]), .CO(\add_29/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i29 .I0_POLARITY = 1'b1;
    defparam \add_29/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i28  (.I0(angle_pool[27]), .I1(gyro_z[15]), .CI(\add_29/n54 ), 
            .O(n301_29[27]), .CO(\add_29/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i28 .I0_POLARITY = 1'b1;
    defparam \add_29/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i27  (.I0(angle_pool[26]), .I1(gyro_z[15]), .CI(\add_29/n52 ), 
            .O(n301_28[26]), .CO(\add_29/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i27 .I0_POLARITY = 1'b1;
    defparam \add_29/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i26  (.I0(angle_pool[25]), .I1(gyro_z[15]), .CI(\add_29/n50 ), 
            .O(n301_27[25]), .CO(\add_29/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i26 .I0_POLARITY = 1'b1;
    defparam \add_29/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i25  (.I0(angle_pool[24]), .I1(gyro_z[15]), .CI(\add_29/n48 ), 
            .O(n301_26[24]), .CO(\add_29/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i25 .I0_POLARITY = 1'b1;
    defparam \add_29/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i24  (.I0(angle_pool[23]), .I1(gyro_z[15]), .CI(\add_29/n46 ), 
            .O(n301_25[23]), .CO(\add_29/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i24 .I0_POLARITY = 1'b1;
    defparam \add_29/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i23  (.I0(angle_pool[22]), .I1(gyro_z[15]), .CI(\add_29/n44 ), 
            .O(n301_24[22]), .CO(\add_29/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i23 .I0_POLARITY = 1'b1;
    defparam \add_29/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i22  (.I0(angle_pool[21]), .I1(gyro_z[15]), .CI(\add_29/n42 ), 
            .O(n301_23[21]), .CO(\add_29/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i22 .I0_POLARITY = 1'b1;
    defparam \add_29/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i21  (.I0(angle_pool[20]), .I1(gyro_z[15]), .CI(\add_29/n40 ), 
            .O(n301_22[20]), .CO(\add_29/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i21 .I0_POLARITY = 1'b1;
    defparam \add_29/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i20  (.I0(angle_pool[19]), .I1(gyro_z[15]), .CI(\add_29/n38 ), 
            .O(n301_21[19]), .CO(\add_29/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i20 .I0_POLARITY = 1'b1;
    defparam \add_29/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i19  (.I0(angle_pool[18]), .I1(gyro_z[15]), .CI(\add_29/n36 ), 
            .O(n301_20[18]), .CO(\add_29/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i19 .I0_POLARITY = 1'b1;
    defparam \add_29/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i18  (.I0(angle_pool[17]), .I1(gyro_z[15]), .CI(\add_29/n34 ), 
            .O(n301_19[17]), .CO(\add_29/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i18 .I0_POLARITY = 1'b1;
    defparam \add_29/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i17  (.I0(angle_pool[16]), .I1(gyro_z[15]), .CI(\add_29/n32 ), 
            .O(n301_18[16]), .CO(\add_29/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i17 .I0_POLARITY = 1'b1;
    defparam \add_29/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i16  (.I0(angle_pool[15]), .I1(gyro_z[15]), .CI(\add_29/n30 ), 
            .O(n301_17[15]), .CO(\add_29/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i16 .I0_POLARITY = 1'b1;
    defparam \add_29/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i15  (.I0(angle_pool[14]), .I1(gyro_z[14]), .CI(\add_29/n28 ), 
            .O(n301_16[14]), .CO(\add_29/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i15 .I0_POLARITY = 1'b1;
    defparam \add_29/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i14  (.I0(angle_pool[13]), .I1(gyro_z[13]), .CI(\add_29/n26 ), 
            .O(n301_15[13]), .CO(\add_29/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i14 .I0_POLARITY = 1'b1;
    defparam \add_29/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i13  (.I0(angle_pool[12]), .I1(gyro_z[12]), .CI(\add_29/n24 ), 
            .O(n301_14[12]), .CO(\add_29/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i13 .I0_POLARITY = 1'b1;
    defparam \add_29/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i12  (.I0(angle_pool[11]), .I1(gyro_z[11]), .CI(\add_29/n22 ), 
            .O(n301_13[11]), .CO(\add_29/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i12 .I0_POLARITY = 1'b1;
    defparam \add_29/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i11  (.I0(angle_pool[10]), .I1(gyro_z[10]), .CI(\add_29/n20 ), 
            .O(n301_12[10]), .CO(\add_29/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i11 .I0_POLARITY = 1'b1;
    defparam \add_29/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i10  (.I0(angle_pool[9]), .I1(gyro_z[9]), .CI(\add_29/n18 ), 
            .O(n301_11[9]), .CO(\add_29/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i10 .I0_POLARITY = 1'b1;
    defparam \add_29/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i9  (.I0(angle_pool[8]), .I1(gyro_z[8]), .CI(\add_29/n16 ), 
            .O(n301_10[8]), .CO(\add_29/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i9 .I0_POLARITY = 1'b1;
    defparam \add_29/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i8  (.I0(angle_pool[7]), .I1(gyro_z[7]), .CI(\add_29/n14 ), 
            .O(n301_9[7]), .CO(\add_29/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i8 .I0_POLARITY = 1'b1;
    defparam \add_29/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i7  (.I0(angle_pool[6]), .I1(gyro_z[6]), .CI(\add_29/n12 ), 
            .O(n301_8[6]), .CO(\add_29/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i7 .I0_POLARITY = 1'b1;
    defparam \add_29/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i6  (.I0(angle_pool[5]), .I1(gyro_z[5]), .CI(\add_29/n10 ), 
            .O(n301_7[5]), .CO(\add_29/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i6 .I0_POLARITY = 1'b1;
    defparam \add_29/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i5  (.I0(angle_pool[4]), .I1(gyro_z[4]), .CI(\add_29/n8 ), 
            .O(n301_6[4]), .CO(\add_29/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i5 .I0_POLARITY = 1'b1;
    defparam \add_29/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i4  (.I0(angle_pool[3]), .I1(gyro_z[3]), .CI(\add_29/n6 ), 
            .O(n301_5[3]), .CO(\add_29/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i4 .I0_POLARITY = 1'b1;
    defparam \add_29/i4 .I1_POLARITY = 1'b1;
    EFX_MULT \Inst_pwm_servo_2/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            angle_raw_z}), .B({18'b000000000000111101}), .O({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, \Inst_pwm_servo_2/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo_2/mult_5 .A_REG = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .RSTA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .RSTA_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .RSTA_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .CEB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .RSTB_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .RSTB_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .RSTB_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .CEO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .RSTO_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/mult_5 .RSTO_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .RSTO_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/mult_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_MULT \Inst_pwm_servo_0/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({11'b00000000000, 
            \angle_filtered_x[0] , \angle_filtered_x[0] , \angle_filtered_x[0] , 
            \angle_filtered_x[0] , \angle_filtered_x[0] , \angle_filtered_x[0] , 
            \angle_filtered_x[0] }), .B({18'b000000000000111101}), .O({Open_22, 
            Open_23, Open_24, Open_25, Open_26, Open_27, Open_28, 
            Open_29, Open_30, Open_31, Open_32, Open_33, Open_34, 
            Open_35, Open_36, Open_37, Open_38, Open_39, Open_40, 
            Open_41, Open_42, Open_43, \Inst_pwm_servo_0/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo_0/mult_5 .A_REG = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo_0/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/mult_5 .RSTA_POLARITY = 1'b1;
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
    EFX_LUT4 LUT__1681 (.I0(n762), .I1(n763), .O(\Inst_MPU6500_Controller/n6273 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1681.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1682 (.I0(gyro_z[4]), .I1(gyro_z[9]), .I2(gyro_z[10]), 
            .I3(gyro_z[14]), .O(n764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__1682.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__1683 (.I0(gyro_z[0]), .I1(gyro_z[1]), .I2(gyro_z[2]), 
            .I3(gyro_z[3]), .O(n765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1683.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1684 (.I0(n765), .I1(gyro_z[15]), .O(n766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1684.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1685 (.I0(n764), .I1(gyro_z[7]), .I2(gyro_z[4]), .I3(n766), 
            .O(n767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__1685.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__1686 (.I0(gyro_z[4]), .I1(gyro_z[5]), .I2(gyro_z[6]), 
            .I3(gyro_z[8]), .O(n768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__1686.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__1687 (.I0(gyro_z[4]), .I1(gyro_z[11]), .I2(gyro_z[12]), 
            .I3(gyro_z[13]), .O(n769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__1687.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__1688 (.I0(n768), .I1(n769), .I2(n767), .I3(spi_data_valid), 
            .O(n1516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(687)
    defparam LUT__1688.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1689 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [14]), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(n770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1689.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1690 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1690.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1691 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(n770), 
            .I2(n771), .O(n772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1691.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1692 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(n773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1692.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1693 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [16]), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1693.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1694 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(n775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1694.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1695 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .O(n776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1695.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1696 (.I0(n773), .I1(n774), .I2(n775), .I3(n776), 
            .O(n777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1696.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1697 (.I0(n772), .I1(n777), .O(n778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1697.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1698 (.I0(n778), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__1698.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__1699 (.I0(\Inst_MPU6500_Controller/delay_cntr [8]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [16]), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1699.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1700 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1700.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1701 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [3]), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1701.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1702 (.I0(n780), .I1(n781), .I2(n782), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1702.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1703 (.I0(n772), .I1(n783), .O(n784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1703.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1704 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1704.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1705 (.I0(n784), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n785), .O(n786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1705.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1706 (.I0(n786), .I1(n779), .I2(\Inst_MPU6500_Controller/state [0]), 
            .O(\Inst_MPU6500_Controller/n763 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1706.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1707 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(switch_out), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__1707.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__1708 (.I0(n775), .I1(n776), .O(n788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1708.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1709 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1709.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1710 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(n790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1710.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1711 (.I0(n789), .I1(n790), .I2(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I3(\Inst_MPU6500_Controller/delay_cntr [11]), .O(n791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1711.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1712 (.I0(n780), .I1(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1712.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1713 (.I0(n791), .I1(n792), .I2(n788), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1713.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1714 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(spi_data_valid), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1714.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1715 (.I0(n793), .I1(n787), .I2(n794), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__1715.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__1716 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1716.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__1717 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .O(n795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1717.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1718 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1718.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1719 (.I0(n795), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(n796), .O(\Inst_MPU6500_Controller/n735 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1719.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__1720 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1720.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1721 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n797), .I3(\Inst_MPU6500_Controller/state [1]), .O(ceg_net313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf32f */ ;
    defparam LUT__1721.LUTMASK = 16'hf32f;
    EFX_LUT4 LUT__1722 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1722.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1723 (.I0(n762), .I1(n798), .I2(\Inst_MPU6500_Controller/state [1]), 
            .O(n799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1723.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1724 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1724.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1725 (.I0(n800), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1725.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1726 (.I0(n799), .I1(n801), .O(n802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1726.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1727 (.I0(n772), .I1(n783), .I2(n785), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__1727.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__1728 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1728.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1729 (.I0(n791), .I1(n792), .I2(n788), .I3(n804), 
            .O(n805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1729.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1730 (.I0(n805), .I1(n803), .I2(n801), .O(n806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1730.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1731 (.I0(n806), .I1(n802), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n740 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1731.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__1732 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c00 */ ;
    defparam LUT__1732.LUTMASK = 16'h2c00;
    EFX_LUT4 LUT__1733 (.I0(n787), .I1(n807), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1733.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1734 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n731 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1734.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1735 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1735.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1736 (.I0(n808), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1736.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1737 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1737.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1738 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(switch_out), .I3(n810), .O(n811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1738.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1739 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n809), 
            .I2(n785), .I3(n811), .O(ceg_net279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__1739.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1740 (.I0(uart_timer[10]), .I1(uart_timer[11]), .I2(uart_timer[12]), 
            .O(n812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1740.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1741 (.I0(n812), .I1(uart_timer[13]), .I2(uart_timer[17]), 
            .I3(uart_timer[15]), .O(n813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__1741.LUTMASK = 16'he000;
    EFX_LUT4 LUT__1742 (.I0(uart_timer[16]), .I1(uart_timer[17]), .I2(uart_timer[18]), 
            .I3(uart_timer[19]), .O(n814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__1742.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__1743 (.I0(uart_timer[14]), .I1(n813), .I2(n814), .I3(uart_timer[21]), 
            .O(n815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1743.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1744 (.I0(uart_timer[0]), .I1(uart_timer[1]), .I2(uart_timer[2]), 
            .I3(uart_timer[3]), .O(n816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__1744.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1745 (.I0(n816), .I1(uart_timer[4]), .I2(uart_timer[5]), 
            .O(n817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1745.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1746 (.I0(uart_timer[8]), .I1(uart_timer[9]), .I2(uart_timer[13]), 
            .I3(n814), .O(n818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1746.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1747 (.I0(n817), .I1(uart_timer[7]), .I2(uart_timer[6]), 
            .I3(n818), .O(n819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__1747.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__1748 (.I0(n819), .I1(uart_timer[20]), .I2(n815), .O(n820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1748.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1749 (.I0(n820), .I1(uart_timer[0]), .O(n906_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__1749.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1750 (.I0(angle_pool[19]), .I1(angle_pool[20]), .I2(angle_pool[21]), 
            .I3(angle_pool[22]), .O(n821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1750.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1751 (.I0(angle_pool[23]), .I1(angle_pool[24]), .I2(angle_pool[25]), 
            .I3(angle_pool[26]), .O(n822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1751.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1752 (.I0(angle_pool[23]), .I1(angle_pool[24]), .I2(angle_pool[25]), 
            .I3(angle_pool[26]), .O(n823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1752.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1753 (.I0(angle_pool[19]), .I1(angle_pool[20]), .I2(angle_pool[21]), 
            .I3(angle_pool[22]), .O(n824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1753.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1754 (.I0(n823), .I1(n824), .O(n825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1754.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1755 (.I0(n822), .I1(n821), .I2(n825), .O(n826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1755.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1756 (.I0(n825), .I1(angle_pool[31]), .O(n827)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1756.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1757 (.I0(n826), .I1(angle_pool[12]), .I2(n827), .O(n861_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__1757.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1758 (.I0(tx_busy_sig), .I1(rst_n_i), .I2(n820), .O(n1526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1758.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1759 (.I0(tx_busy_sig), .I1(n820), .O(n1518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1759.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1760 (.I0(n799), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n6280 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1760.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1761 (.I0(mpu_to_spi_data[0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n828)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__1761.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1762 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(n810), .I3(n828), .O(\Inst_MPU6500_Controller/n768 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1762.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__1763 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__1763.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__1764 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n5614 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1764.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__1765 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n795), 
            .I2(n798), .I3(\Inst_MPU6500_Controller/state [3]), .O(n829)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__1765.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__1766 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n797), 
            .I2(n829), .I3(spi_cs_n_o), .O(n830)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__1766.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__1767 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n830), .O(\Inst_MPU6500_Controller/n730 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00eb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1767.LUTMASK = 16'h00eb;
    EFX_LUT4 LUT__1768 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n831)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__1768.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__1769 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n831), .O(n832)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030e */ ;
    defparam LUT__1769.LUTMASK = 16'h030e;
    EFX_LUT4 LUT__1770 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n832), .O(ceg_net302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;
    defparam LUT__1770.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__1771 (.I0(n805), .I1(n785), .O(n833)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1771.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1772 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n834)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__1772.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1773 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(spi_data_valid), 
            .O(n835)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1773.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1774 (.I0(n762), .I1(n835), .O(n836)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1774.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1775 (.I0(n800), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(n837)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1775.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1776 (.I0(n778), .I1(n836), .I2(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I3(n837), .O(n838)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__1776.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__1777 (.I0(n834), .I1(n833), .I2(n838), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n740 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1777.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__1778 (.I0(n801), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [1]), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n839)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc0bf */ ;
    defparam LUT__1778.LUTMASK = 16'hc0bf;
    EFX_LUT4 LUT__1779 (.I0(n836), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n840)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1779.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1780 (.I0(n840), .I1(n775), .I2(n801), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n841)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1780.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1781 (.I0(n805), .I1(n803), .I2(n801), .I3(n840), 
            .O(n842)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__1781.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__1782 (.I0(n839), .I1(n778), .I2(n841), .I3(n842), 
            .O(\Inst_MPU6500_Controller/n740 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1782.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__1783 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .O(n843)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1783.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1784 (.I0(n802), .I1(n843), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(\Inst_MPU6500_Controller/n740 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1784.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1785 (.I0(n805), .I1(n803), .O(n844)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1785.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1786 (.I0(n772), .I1(n777), .I2(n800), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n845)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1786.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1787 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n846)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1787.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1788 (.I0(n802), .I1(n845), .I2(n846), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(n847)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h54cf */ ;
    defparam LUT__1788.LUTMASK = 16'h54cf;
    EFX_LUT4 LUT__1789 (.I0(n844), .I1(n847), .O(\Inst_MPU6500_Controller/n740 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1789.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1790 (.I0(n846), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(n848)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1790.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1791 (.I0(n802), .I1(n848), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(\Inst_MPU6500_Controller/n740 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1791.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1792 (.I0(n801), .I1(n848), .I2(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n849)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1792.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1793 (.I0(n842), .I1(n849), .I2(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(\Inst_MPU6500_Controller/n740 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1793.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1794 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .O(n850)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1794.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1795 (.I0(n846), .I1(n850), .O(n851)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1795.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1796 (.I0(n802), .I1(n851), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .O(\Inst_MPU6500_Controller/n740 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1796.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1797 (.I0(n801), .I1(n851), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .O(n852)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1797.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1798 (.I0(n842), .I1(n852), .I2(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(\Inst_MPU6500_Controller/n740 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1798.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1799 (.I0(n851), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n853)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1799.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1800 (.I0(n778), .I1(n801), .I2(n853), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n854)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__1800.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__1801 (.I0(n840), .I1(n777), .I2(n854), .I3(n842), 
            .O(\Inst_MPU6500_Controller/n740 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1801.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1802 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [9]), .O(n855)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1802.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1803 (.I0(n846), .I1(n850), .I2(n855), .O(n856)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1803.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1804 (.I0(n802), .I1(n845), .I2(n856), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(n857)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h54cf */ ;
    defparam LUT__1804.LUTMASK = 16'h54cf;
    EFX_LUT4 LUT__1805 (.I0(n844), .I1(n857), .O(\Inst_MPU6500_Controller/n740 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1805.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1806 (.I0(n856), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(n858)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1806.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1807 (.I0(n802), .I1(n858), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(\Inst_MPU6500_Controller/n740 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1807.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1808 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(n859)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1808.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1809 (.I0(n846), .I1(n850), .I2(n859), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n860)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1809.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1810 (.I0(n772), .I1(n777), .I2(n860), .I3(n801), 
            .O(n861)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__1810.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__1811 (.I0(n861), .I1(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .I2(n840), .O(n862)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1811.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1812 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(n861), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .O(n863)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c7c */ ;
    defparam LUT__1812.LUTMASK = 16'h7c7c;
    EFX_LUT4 LUT__1813 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n833), 
            .I2(n862), .I3(n863), .O(\Inst_MPU6500_Controller/n740 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1813.LUTMASK = 16'hf100;
    EFX_LUT4 LUT__1814 (.I0(n856), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n864)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1814.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1815 (.I0(n802), .I1(n864), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .O(\Inst_MPU6500_Controller/n740 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1815.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1816 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .O(n865)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1816.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1817 (.I0(n856), .I1(n865), .O(n866)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1817.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1818 (.I0(n802), .I1(n866), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(\Inst_MPU6500_Controller/n740 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1818.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1819 (.I0(n801), .I1(n866), .I2(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(n867)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1819.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1820 (.I0(n842), .I1(n867), .I2(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(\Inst_MPU6500_Controller/n740 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1820.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1821 (.I0(n866), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n868)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1821.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1822 (.I0(n805), .I1(n803), .I2(n845), .O(n869)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1822.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1823 (.I0(n802), .I1(n868), .I2(n869), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(\Inst_MPU6500_Controller/n740 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1823.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1824 (.I0(n865), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n870)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1824.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1825 (.I0(n856), .I1(n870), .O(n871)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1825.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1826 (.I0(n802), .I1(n871), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(\Inst_MPU6500_Controller/n740 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1826.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1827 (.I0(n800), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n872)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1827.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1828 (.I0(n856), .I1(n870), .I2(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(n873)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1828.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1829 (.I0(n802), .I1(n801), .I2(n873), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n874)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h54cf */ ;
    defparam LUT__1829.LUTMASK = 16'h54cf;
    EFX_LUT4 LUT__1830 (.I0(n778), .I1(n872), .I2(n844), .I3(n874), 
            .O(\Inst_MPU6500_Controller/n740 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1830.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__1831 (.I0(n873), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n875)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1831.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1832 (.I0(n802), .I1(n875), .I2(n806), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(\Inst_MPU6500_Controller/n740 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1832.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__1833 (.I0(n801), .I1(n873), .I2(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .I3(\Inst_MPU6500_Controller/delay_cntr [19]), .O(n876)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1833.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1834 (.I0(n842), .I1(n876), .I2(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(\Inst_MPU6500_Controller/n740 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1834.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__1835 (.I0(n876), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(n842), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), .O(\Inst_MPU6500_Controller/n740 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1835.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__1836 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .O(\Inst_MPU6500_Controller/n4570 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1836.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__1837 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .O(\Inst_MPU6500_Controller/n4575 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1837.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__1838 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(\Inst_MPU6500_Controller/n4580 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1838.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__1839 (.I0(\Inst_MPU6500_Controller/raw_data[13] [2]), .I1(\Inst_MPU6500_Controller/raw_data[13] [0]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [1]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(n877)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__1839.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__1840 (.I0(n877), .I1(\Inst_MPU6500_Controller/raw_data[13] [4]), 
            .O(\Inst_MPU6500_Controller/n4585 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1840.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1841 (.I0(n877), .I1(\Inst_MPU6500_Controller/raw_data[13] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [5]), .O(\Inst_MPU6500_Controller/n4590 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1841.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1842 (.I0(n877), .I1(\Inst_MPU6500_Controller/raw_data[13] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [5]), .I3(\Inst_MPU6500_Controller/raw_data[13] [6]), 
            .O(\Inst_MPU6500_Controller/n4595 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1842.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1843 (.I0(n877), .I1(\Inst_MPU6500_Controller/raw_data[13] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [5]), .I3(\Inst_MPU6500_Controller/raw_data[13] [6]), 
            .O(n878)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1843.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1844 (.I0(n878), .I1(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .O(\Inst_MPU6500_Controller/n4600 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1844.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1845 (.I0(n878), .I1(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [0]), .O(\Inst_MPU6500_Controller/n4605 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1845.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1846 (.I0(n878), .I1(\Inst_MPU6500_Controller/raw_data[12] [0]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [7]), .I3(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .O(\Inst_MPU6500_Controller/n4610 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1846.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1847 (.I0(n878), .I1(\Inst_MPU6500_Controller/raw_data[12] [0]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [1]), .I3(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .O(n879)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1847.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1848 (.I0(n879), .I1(\Inst_MPU6500_Controller/raw_data[12] [2]), 
            .O(\Inst_MPU6500_Controller/n4615 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1848.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1849 (.I0(n879), .I1(\Inst_MPU6500_Controller/raw_data[12] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [3]), .O(\Inst_MPU6500_Controller/n4620 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1849.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1850 (.I0(n879), .I1(\Inst_MPU6500_Controller/raw_data[12] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [3]), .O(n880)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1850.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1851 (.I0(n880), .I1(\Inst_MPU6500_Controller/raw_data[12] [4]), 
            .O(\Inst_MPU6500_Controller/n4625 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1851.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__1852 (.I0(n880), .I1(\Inst_MPU6500_Controller/raw_data[12] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [5]), .O(\Inst_MPU6500_Controller/n4630 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1852.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1853 (.I0(n880), .I1(\Inst_MPU6500_Controller/raw_data[12] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [5]), .I3(\Inst_MPU6500_Controller/raw_data[12] [6]), 
            .O(\Inst_MPU6500_Controller/n4635 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1853.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__1854 (.I0(\Inst_MPU6500_Controller/raw_data[12] [4]), .I1(\Inst_MPU6500_Controller/raw_data[12] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [6]), .O(n881)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1854.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1855 (.I0(n880), .I1(n881), .I2(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .O(\Inst_MPU6500_Controller/n4640 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__1855.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__1856 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(n882)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1856.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1857 (.I0(mpu_to_spi_data[1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n883)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__1857.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1858 (.I0(n882), .I1(n810), .I2(n883), .O(\Inst_MPU6500_Controller/n768 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1858.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__1859 (.I0(n882), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n768 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1859.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__1860 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc154 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__1860.LUTMASK = 16'hc154;
    EFX_LUT4 LUT__1861 (.I0(n882), .I1(mpu_to_spi_data[3]), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n884)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1861.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1862 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n884), .O(\Inst_MPU6500_Controller/n768 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1862.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1863 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n810), .O(n885)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1863.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1864 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n731 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1864.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1865 (.I0(mpu_to_spi_data[4]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n886)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__1865.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1866 (.I0(n885), .I1(\Inst_MPU6500_Controller/n731 [1]), 
            .I2(n886), .O(\Inst_MPU6500_Controller/n768 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1866.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__1867 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n810), .O(\Inst_MPU6500_Controller/n768 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1867.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1868 (.I0(mpu_to_spi_data[5]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n887)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__1868.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__1869 (.I0(\Inst_MPU6500_Controller/n768 [6]), .I1(n887), 
            .O(\Inst_MPU6500_Controller/n768 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1869.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1870 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n768 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1870.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1871 (.I0(n795), .I1(n798), .I2(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I3(n796), .O(\Inst_MPU6500_Controller/n735 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1871.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1872 (.I0(n798), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n796), .O(\Inst_MPU6500_Controller/n735 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1872.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1873 (.I0(n798), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n888)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1873.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1874 (.I0(n888), .I1(n796), .O(\Inst_MPU6500_Controller/n735 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1874.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1875 (.I0(n808), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n889)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ff0 */ ;
    defparam LUT__1875.LUTMASK = 16'h4ff0;
    EFX_LUT4 LUT__1876 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_data_valid), 
            .O(n890)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1876.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1877 (.I0(n778), .I1(n890), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [1]), .O(n891)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5f0c */ ;
    defparam LUT__1877.LUTMASK = 16'h5f0c;
    EFX_LUT4 LUT__1878 (.I0(n891), .I1(n889), .I2(n840), .O(\Inst_MPU6500_Controller/n763 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1878.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1879 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n892)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1879.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1880 (.I0(n778), .I1(n800), .I2(n799), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n893)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7770 */ ;
    defparam LUT__1880.LUTMASK = 16'h7770;
    EFX_LUT4 LUT__1881 (.I0(n893), .I1(n892), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n763 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1881.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__1882 (.I0(n784), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n785), .O(n894)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1882.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1883 (.I0(ceg_net298), .I1(n894), .O(ceg_net314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__1883.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1884 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n785), 
            .I2(n808), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n763 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1884.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__1885 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n778), .I3(n800), .O(n895)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__1885.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__1886 (.I0(n895), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(ceg_net298), .I3(n894), .O(ceg_net315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;
    defparam LUT__1886.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__1887 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n882), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n731 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__1887.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__1888 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [0]), .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1888.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1889 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .I3(\Inst_Spi_Mode_3/bitcounter [3]), 
            .O(n896)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1889.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1890 (.I0(n896), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1890.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1891 (.I0(spi_start), .I1(n896), .I2(\Inst_Spi_Mode_3/state [0]), 
            .I3(\Inst_Spi_Mode_3/state [1]), .O(ceg_net318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3335 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(179)
    defparam LUT__1891.LUTMASK = 16'h3335;
    EFX_LUT4 LUT__1892 (.I0(miso_i), .I1(mpu_to_spi_data[0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1892.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1893 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(n896), .I3(\Inst_Spi_Mode_3/state [1]), .O(n897)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__1893.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__1894 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(spi_start), .O(n898)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1894.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1895 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n897), .I3(n898), .O(ceg_net207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1895.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1896 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1896.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__1897 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .O(n899)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__1897.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__1898 (.I0(n899), .I1(n896), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__1898.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__1899 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net69 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__1899.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1900 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n896), .O(ceg_net209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1900.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1901 (.I0(\Inst_Spi_Mode_3/data_buffer [4]), .I1(\Inst_Spi_Mode_3/data_buffer [6]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n900)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__1901.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__1902 (.I0(\Inst_Spi_Mode_3/data_buffer [5]), .I1(\Inst_Spi_Mode_3/data_buffer [7]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [1]), .I3(\Inst_Spi_Mode_3/bit_idx [0]), 
            .O(n901)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__1902.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__1903 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n902)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha0cf */ ;
    defparam LUT__1903.LUTMASK = 16'ha0cf;
    EFX_LUT4 LUT__1904 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n902), .O(n903)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc0a */ ;
    defparam LUT__1904.LUTMASK = 16'hfc0a;
    EFX_LUT4 LUT__1905 (.I0(n901), .I1(n900), .I2(n903), .I3(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h11f0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__1905.LUTMASK = 16'h11f0;
    EFX_LUT4 LUT__1906 (.I0(\~ceg_net69 ), .I1(n896), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(347)
    defparam LUT__1906.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__1907 (.I0(miso_i), .I1(mpu_to_spi_data[1]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1907.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1908 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(n897), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n898), .O(ceg_net210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1908.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1909 (.I0(miso_i), .I1(mpu_to_spi_data[2]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1909.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1910 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n897), .I3(n898), .O(ceg_net211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1910.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1911 (.I0(miso_i), .I1(mpu_to_spi_data[3]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1911.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1912 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n897), .I3(n898), .O(ceg_net212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__1912.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__1913 (.I0(miso_i), .I1(mpu_to_spi_data[4]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1913.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1914 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(n896), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I3(\Inst_Spi_Mode_3/state [1]), .O(n904)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__1914.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__1915 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n904), .I3(n898), .O(ceg_net213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__1915.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__1916 (.I0(miso_i), .I1(mpu_to_spi_data[5]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1916.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1917 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(n904), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n898), .O(ceg_net214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1917.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1918 (.I0(miso_i), .I1(mpu_to_spi_data[6]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1918.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1919 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n904), .I3(n898), .O(ceg_net215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__1919.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__1920 (.I0(miso_i), .I1(mpu_to_spi_data[7]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1920.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__1921 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n904), .I3(n898), .O(ceg_net216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__1921.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__1922 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .I3(\Inst_Spi_Mode_3/bitcounter [0]), 
            .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1922.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__1923 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n905)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__1923.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__1924 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n905), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1924.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1925 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .I3(\Inst_Spi_Mode_3/bitcounter [3]), 
            .O(n906)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__1925.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__1926 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n906), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1926.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1927 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1927.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__1928 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .I3(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1928.LUTMASK = 16'he1ff;
    EFX_LUT4 LUT__1929 (.I0(n899), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__1929.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__1930 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .O(n907)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1930.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1931 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n908)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1931.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1932 (.I0(\Inst_pwm_servo_0/counter [4]), .I1(n907), .I2(\Inst_pwm_servo_0/counter [5]), 
            .I3(n908), .O(n909)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__1932.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__1933 (.I0(n909), .I1(\Inst_pwm_servo_0/counter [10]), 
            .I2(\Inst_pwm_servo_0/counter [11]), .O(n910)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1933.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1934 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/counter [18]), 
            .O(n911)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__1934.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__1935 (.I0(\Inst_pwm_servo_0/counter [12]), .I1(n911), 
            .O(n912)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1935.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1936 (.I0(\Inst_pwm_servo_0/counter [13]), .I1(n911), 
            .O(n913)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1936.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1937 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .I2(n913), .I3(\Inst_pwm_servo_0/counter [19]), .O(n914)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__1937.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__1938 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [4]), 
            .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1938.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1939 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [3]), 
            .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1939.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1940 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [2]), 
            .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1940.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1941 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/counter [0]), 
            .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1941.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1942 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [1]), 
            .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1942.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1943 (.I0(\Inst_pwm_servo_0/counter [4]), .I1(\Inst_pwm_servo_0/pulse_width[4] ), 
            .I2(\Inst_pwm_servo_0/pulse_width[3] ), .I3(\Inst_pwm_servo_0/counter [3]), 
            .O(n915)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1943.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1944 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/pulse_width [5]), 
            .I2(n915), .O(n916)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1944.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1945 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/pulse_width [2]), .O(n917)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1945.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1946 (.I0(\Inst_pwm_servo_0/counter [3]), .I1(\Inst_pwm_servo_0/pulse_width[3] ), 
            .I2(n917), .O(n918)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1946.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1947 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/counter [4]), 
            .I2(\Inst_pwm_servo_0/pulse_width[4] ), .I3(\Inst_pwm_servo_0/pulse_width [5]), 
            .O(n919)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__1947.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__1948 (.I0(n918), .I1(n916), .I2(n919), .O(n920)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1948.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1949 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/pulse_width [9]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n921)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1949.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1950 (.I0(\Inst_pwm_servo_0/pulse_width [7]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/pulse_width [10]), .I3(\Inst_pwm_servo_0/counter [10]), 
            .O(n922)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1950.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1951 (.I0(n921), .I1(n922), .O(n923)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1951.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1952 (.I0(n920), .I1(\Inst_pwm_servo_0/counter [6]), .I2(\Inst_pwm_servo_0/pulse_width [6]), 
            .I3(n923), .O(n924)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7100 */ ;
    defparam LUT__1952.LUTMASK = 16'h7100;
    EFX_LUT4 LUT__1953 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/counter [7]), .I3(\Inst_pwm_servo_0/pulse_width [7]), 
            .O(n925)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1953.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1954 (.I0(n925), .I1(\Inst_pwm_servo_0/counter [9]), .I2(\Inst_pwm_servo_0/pulse_width [9]), 
            .O(n926)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1954.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1955 (.I0(n926), .I1(\Inst_pwm_servo_0/counter [10]), 
            .I2(\Inst_pwm_servo_0/pulse_width [10]), .O(n927)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__1955.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__1956 (.I0(\Inst_pwm_servo_0/counter [11]), .I1(\Inst_pwm_servo_0/pulse_width [11]), 
            .I2(n927), .O(n928)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__1956.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__1957 (.I0(\Inst_pwm_servo_0/counter [13]), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/pulse_width [13]), .I3(\Inst_pwm_servo_0/pulse_width [12]), 
            .O(n929)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__1957.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__1958 (.I0(\Inst_pwm_servo_0/counter [15]), .I1(\Inst_pwm_servo_0/pulse_width [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/pulse_width [16]), 
            .O(n930)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1958.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1959 (.I0(n929), .I1(\Inst_pwm_servo_0/counter [14]), 
            .I2(\Inst_pwm_servo_0/pulse_width[14] ), .I3(n930), .O(n931)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__1959.LUTMASK = 16'he800;
    EFX_LUT4 LUT__1960 (.I0(\Inst_pwm_servo_0/pulse_width [13]), .I1(\Inst_pwm_servo_0/counter [13]), 
            .I2(\Inst_pwm_servo_0/counter [14]), .I3(\Inst_pwm_servo_0/pulse_width[14] ), 
            .O(n932)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__1960.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__1961 (.I0(\Inst_pwm_servo_0/pulse_width [11]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .I2(\Inst_pwm_servo_0/pulse_width [12]), .I3(\Inst_pwm_servo_0/counter [12]), 
            .O(n933)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1961.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1962 (.I0(\Inst_pwm_servo_0/counter [16]), .I1(\Inst_pwm_servo_0/pulse_width [16]), 
            .I2(\Inst_pwm_servo_0/pulse_width [15]), .I3(\Inst_pwm_servo_0/counter [15]), 
            .O(n934)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__1962.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__1963 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .I2(\Inst_pwm_servo_0/counter [19]), .I3(n934), .O(n935)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__1963.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__1964 (.I0(n933), .I1(n932), .I2(n931), .I3(n935), 
            .O(n936)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__1964.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__1965 (.I0(n924), .I1(n931), .I2(n928), .I3(n936), 
            .O(\Inst_pwm_servo_0/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__1965.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__1966 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [5]), 
            .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1966.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1967 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [6]), 
            .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1967.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1968 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [7]), 
            .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1968.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1969 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [8]), 
            .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1969.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1970 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [9]), 
            .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1970.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1971 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [10]), 
            .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1971.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1972 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [11]), 
            .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1972.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1973 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [12]), 
            .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1973.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1974 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [13]), 
            .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1974.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1975 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [14]), 
            .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1975.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1976 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [15]), 
            .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1976.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1977 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [16]), 
            .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1977.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1978 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [17]), 
            .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1978.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1979 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [18]), 
            .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1979.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1980 (.I0(n910), .I1(n912), .I2(n914), .I3(\Inst_pwm_servo_0/n42 [19]), 
            .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1980.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1981 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .I2(n913), .I3(\Inst_pwm_servo_2/counter [19]), .O(n937)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__1981.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__1982 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [4]), 
            .O(\Inst_pwm_servo_2/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1982.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1983 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [3]), 
            .O(\Inst_pwm_servo_2/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1983.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1984 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [2]), 
            .O(\Inst_pwm_servo_2/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1984.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1985 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_2/counter [0]), 
            .O(\Inst_pwm_servo_2/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1985.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1986 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_2/n42 [1]), 
            .O(\Inst_pwm_servo_2/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__1986.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1987 (.I0(\Inst_pwm_servo_2/counter [4]), .I1(\Inst_pwm_servo_2/pulse_width[4] ), 
            .I2(\Inst_pwm_servo_2/pulse_width[3] ), .I3(\Inst_pwm_servo_2/counter [3]), 
            .O(n938)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__1987.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__1988 (.I0(\Inst_pwm_servo_2/counter [5]), .I1(\Inst_pwm_servo_2/pulse_width [5]), 
            .I2(n938), .O(n939)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1988.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1989 (.I0(\Inst_pwm_servo_2/counter [2]), .I1(\Inst_pwm_servo_2/counter [1]), 
            .I2(\Inst_pwm_servo_2/pulse_width [2]), .O(n940)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1989.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1990 (.I0(\Inst_pwm_servo_2/counter [3]), .I1(\Inst_pwm_servo_2/pulse_width[3] ), 
            .I2(n940), .O(n941)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__1990.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__1991 (.I0(\Inst_pwm_servo_2/counter [5]), .I1(\Inst_pwm_servo_2/counter [4]), 
            .I2(\Inst_pwm_servo_2/pulse_width[4] ), .I3(\Inst_pwm_servo_2/pulse_width [5]), 
            .O(n942)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__1991.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__1992 (.I0(n941), .I1(n939), .I2(n942), .O(n943)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__1992.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__1993 (.I0(\Inst_pwm_servo_2/counter [8]), .I1(\Inst_pwm_servo_2/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_2/pulse_width [9]), .I3(\Inst_pwm_servo_2/counter [9]), 
            .O(n944)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__1993.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__1994 (.I0(\Inst_pwm_servo_2/pulse_width [7]), .I1(\Inst_pwm_servo_2/counter [7]), 
            .I2(\Inst_pwm_servo_2/pulse_width [10]), .I3(\Inst_pwm_servo_2/counter [10]), 
            .O(n945)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__1994.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__1995 (.I0(n944), .I1(n945), .O(n946)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1995.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1996 (.I0(n943), .I1(\Inst_pwm_servo_2/counter [6]), .I2(\Inst_pwm_servo_2/pulse_width [6]), 
            .I3(n946), .O(n947)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7100 */ ;
    defparam LUT__1996.LUTMASK = 16'h7100;
    EFX_LUT4 LUT__1997 (.I0(\Inst_pwm_servo_2/counter [8]), .I1(\Inst_pwm_servo_2/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_2/counter [7]), .I3(\Inst_pwm_servo_2/pulse_width [7]), 
            .O(n948)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__1997.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__1998 (.I0(n948), .I1(\Inst_pwm_servo_2/counter [9]), .I2(\Inst_pwm_servo_2/pulse_width [9]), 
            .O(n949)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__1998.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__1999 (.I0(n949), .I1(\Inst_pwm_servo_2/counter [10]), 
            .I2(\Inst_pwm_servo_2/pulse_width [10]), .O(n950)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__1999.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2000 (.I0(\Inst_pwm_servo_2/counter [11]), .I1(\Inst_pwm_servo_2/pulse_width [11]), 
            .I2(n950), .O(n951)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__2000.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2001 (.I0(\Inst_pwm_servo_2/counter [13]), .I1(\Inst_pwm_servo_2/counter [12]), 
            .I2(\Inst_pwm_servo_2/pulse_width [13]), .I3(\Inst_pwm_servo_2/pulse_width [12]), 
            .O(n952)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2001.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2002 (.I0(\Inst_pwm_servo_2/counter [15]), .I1(\Inst_pwm_servo_2/pulse_width [15]), 
            .I2(\Inst_pwm_servo_2/counter [16]), .I3(\Inst_pwm_servo_2/pulse_width [16]), 
            .O(n953)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2002.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2003 (.I0(n952), .I1(\Inst_pwm_servo_2/counter [14]), 
            .I2(\Inst_pwm_servo_2/pulse_width[14] ), .I3(n953), .O(n954)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__2003.LUTMASK = 16'he800;
    EFX_LUT4 LUT__2004 (.I0(\Inst_pwm_servo_2/pulse_width [13]), .I1(\Inst_pwm_servo_2/counter [13]), 
            .I2(\Inst_pwm_servo_2/counter [14]), .I3(\Inst_pwm_servo_2/pulse_width[14] ), 
            .O(n955)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__2004.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__2005 (.I0(\Inst_pwm_servo_2/pulse_width [11]), .I1(\Inst_pwm_servo_2/counter [11]), 
            .I2(\Inst_pwm_servo_2/pulse_width [12]), .I3(\Inst_pwm_servo_2/counter [12]), 
            .O(n956)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2005.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2006 (.I0(\Inst_pwm_servo_2/counter [16]), .I1(\Inst_pwm_servo_2/pulse_width [16]), 
            .I2(\Inst_pwm_servo_2/pulse_width [15]), .I3(\Inst_pwm_servo_2/counter [15]), 
            .O(n957)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2006.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2007 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .I2(\Inst_pwm_servo_0/counter [19]), .I3(n957), .O(n958)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2007.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2008 (.I0(n956), .I1(n955), .I2(n954), .I3(n958), 
            .O(n959)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__2008.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__2009 (.I0(n947), .I1(n954), .I2(n951), .I3(n959), 
            .O(\Inst_pwm_servo_2/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__2009.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__2010 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [5]), 
            .O(\Inst_pwm_servo_2/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2010.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2011 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [6]), 
            .O(\Inst_pwm_servo_2/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2011.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2012 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [7]), 
            .O(\Inst_pwm_servo_2/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2012.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2013 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [8]), 
            .O(\Inst_pwm_servo_2/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2013.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2014 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [9]), 
            .O(\Inst_pwm_servo_2/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2014.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2015 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [10]), 
            .O(\Inst_pwm_servo_2/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2015.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2016 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [11]), 
            .O(\Inst_pwm_servo_2/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2016.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2017 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [12]), 
            .O(\Inst_pwm_servo_2/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2017.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2018 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [13]), 
            .O(\Inst_pwm_servo_2/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2018.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2019 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [14]), 
            .O(\Inst_pwm_servo_2/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2019.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2020 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [15]), 
            .O(\Inst_pwm_servo_2/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2020.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2021 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [16]), 
            .O(\Inst_pwm_servo_2/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2021.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2022 (.I0(n910), .I1(n912), .I2(n937), .I3(\Inst_pwm_servo_0/n42 [19]), 
            .O(\Inst_pwm_servo_2/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2022.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2023 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2023.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2024 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n118 ), 
            .O(\Inst_uart_tx/n333 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(308)
    defparam LUT__2024.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2025 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .I2(\Inst_uart_tx/bitcounter [5]), .O(n960)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2025.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2026 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n960), .O(\Inst_uart_tx/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2026.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2027 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net92)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(172)
    defparam LUT__2027.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2028 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .I2(\Inst_uart_tx/bitcounter [5]), .O(n961)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2028.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2029 (.I0(\Inst_uart_tx/bit_idx [1]), .I1(\Inst_uart_tx/bit_idx [2]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(\Inst_uart_tx/state [0]), 
            .O(n962)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2029.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2030 (.I0(n962), .I1(n961), .I2(\Inst_uart_tx/n333 ), 
            .O(ceg_net319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(172)
    defparam LUT__2030.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2031 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2031.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2032 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(\Inst_uart_tx/state [1]), 
            .I2(n962), .I3(\Inst_uart_tx/n333 ), .O(ceg_net222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2032.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2033 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n115 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2033.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2034 (.I0(n960), .I1(\Inst_uart_tx/n115 [1]), .O(ceg_net219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    defparam LUT__2034.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2035 (.I0(tx_start_sig), .I1(\Inst_uart_tx/data_buffer [0]), 
            .I2(\Inst_uart_tx/state [0]), .O(n963)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2035.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2036 (.I0(\Inst_uart_tx/data_buffer [3]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n964)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2036.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2037 (.I0(n964), .I1(\Inst_uart_tx/data_buffer [4]), .I2(\Inst_uart_tx/bit_idx [0]), 
            .O(n965)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__2037.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__2038 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n966)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05f3 */ ;
    defparam LUT__2038.LUTMASK = 16'h05f3;
    EFX_LUT4 LUT__2039 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(n966), .O(n967)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c00 */ ;
    defparam LUT__2039.LUTMASK = 16'h7c00;
    EFX_LUT4 LUT__2040 (.I0(\Inst_uart_tx/data_buffer [2]), .I1(n965), .I2(\Inst_uart_tx/bit_idx [2]), 
            .I3(n967), .O(n968)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0af3 */ ;
    defparam LUT__2040.LUTMASK = 16'h0af3;
    EFX_LUT4 LUT__2041 (.I0(n968), .I1(n963), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n119 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2041.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2042 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2042.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2043 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n960), .O(\Inst_uart_tx/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2043.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2044 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(n960), .O(\Inst_uart_tx/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2044.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2045 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(\Inst_uart_tx/bitcounter [3]), 
            .O(n969)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__2045.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__2046 (.I0(n969), .I1(n960), .O(\Inst_uart_tx/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2046.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2047 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(\Inst_uart_tx/bitcounter [2]), .I3(\Inst_uart_tx/bitcounter [3]), 
            .O(n970)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2047.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2048 (.I0(n970), .I1(\Inst_uart_tx/bitcounter [4]), .I2(n960), 
            .O(\Inst_uart_tx/n129 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2048.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2049 (.I0(n960), .I1(n970), .I2(\Inst_uart_tx/bitcounter [4]), 
            .O(\Inst_uart_tx/n129 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2049.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2050 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2050.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2051 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2051.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2052 (.I0(\Inst_debounce/count_reg [8]), .I1(\Inst_debounce/count_reg [6]), 
            .I2(\Inst_debounce/count_reg [7]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n971)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2052.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2053 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n972)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2053.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2054 (.I0(n971), .I1(n972), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n973)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2054.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2055 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n974)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2055.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2056 (.I0(n973), .I1(n974), .O(n975)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2056.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2057 (.I0(n975), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(324)
    defparam LUT__2057.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__2058 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n975), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(324)
    defparam LUT__2058.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__2059 (.I0(n820), .I1(n872_2[1]), .O(n906_3[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2059.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2060 (.I0(n820), .I1(n872_22[2]), .O(n906_4[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2060.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2061 (.I0(n820), .I1(n872_21[3]), .O(n906_5[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2061.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2062 (.I0(n820), .I1(n872_20[4]), .O(n906_6[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2062.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2063 (.I0(n820), .I1(n872_19[5]), .O(n906_7[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2063.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2064 (.I0(n820), .I1(n872_18[6]), .O(n906_8[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2064.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2065 (.I0(n820), .I1(n872_17[7]), .O(n906_9[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2065.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2066 (.I0(n820), .I1(n872_16[8]), .O(n906_10[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2066.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2067 (.I0(n820), .I1(n872_15[9]), .O(n906_11[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2067.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2068 (.I0(n820), .I1(n872_14[10]), .O(n906_12[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2068.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2069 (.I0(n820), .I1(n872_13[11]), .O(n906_13[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2069.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2070 (.I0(n820), .I1(n872_12[12]), .O(n906_14[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2070.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2071 (.I0(n820), .I1(n872_11[13]), .O(n906_15[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2071.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2072 (.I0(n820), .I1(n872_10[14]), .O(n906_16[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2072.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2073 (.I0(n820), .I1(n872_9[15]), .O(n906_17[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2073.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2074 (.I0(n820), .I1(n872_8[16]), .O(n906_18[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2074.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2075 (.I0(n820), .I1(n872_7[17]), .O(n906_19[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2075.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2076 (.I0(n820), .I1(n872_6[18]), .O(n906_20[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2076.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2077 (.I0(n820), .I1(n872_5[19]), .O(n906_21[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2077.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2078 (.I0(n820), .I1(n872_4[20]), .O(n906_22[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2078.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2079 (.I0(n820), .I1(n872_3[21]), .O(n906_23[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2079.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2080 (.I0(n826), .I1(angle_pool[13]), .I2(n827), .O(n861_3[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2080.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2081 (.I0(n826), .I1(angle_pool[14]), .I2(n827), .O(n861_4[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2081.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2082 (.I0(n826), .I1(angle_pool[15]), .I2(n827), .O(n861_5[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2082.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2083 (.I0(n826), .I1(angle_pool[16]), .I2(n827), .O(n861_6[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2083.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2084 (.I0(n826), .I1(angle_pool[17]), .I2(n827), .O(n861_7[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2084.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2085 (.I0(n826), .I1(angle_pool[18]), .I2(n827), .O(n861_8[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2085.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2086 (.I0(n825), .I1(angle_pool[31]), .O(n861_9[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2086.LUTMASK = 16'h4444;
    EFX_LUT4 \dlatchrs_240/i1  (.I0(\angle_filtered_x[0] ), .I1(rst_n_i), 
            .O(\angle_filtered_x[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(751)
    defparam \dlatchrs_240/i1 .LUTMASK = 16'hbbbb;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n977), .O(\Inst_pwm_servo_0/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n976), .O(\Inst_pwm_servo_2/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_87ad7055_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_87ad7055_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_87ad7055_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_87ad7055_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_87ad7055_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_87ad7055_0
// module not written out since it is a black box. 
//

