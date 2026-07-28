
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
    
    wire [31:0]n506_2;
    wire [31:0]n678_2;
    wire [31:0]n301_2;
    wire [32:0]n469_9;
    wire [21:0]n872;
    wire [31:0]n678;
    wire [31:0]n678_3;
    wire [31:0]n506;
    wire [31:0]n301_29;
    wire [31:0]n301_27;
    wire [31:0]n301_25;
    wire [31:0]n301_23;
    wire [31:0]n301_21;
    wire [31:0]n301_19;
    wire [31:0]n301_17;
    wire [31:0]n301_15;
    wire [31:0]n301_13;
    wire [31:0]n301_11;
    wire [31:0]n301_9;
    wire [21:0]n906_2;
    wire [7:0]n861_2;
    wire [7:0]n861_3;
    wire [7:0]n861_4;
    wire [7:0]n861_5;
    wire [7:0]n861_6;
    wire [7:0]n861_7;
    wire [7:0]n861_8;
    wire [7:0]n861_9;
    wire [31:0]angle_pool;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(237)
    
    wire \add_55/n2 ;
    wire [7:0]\Inst_MPU6500_Controller/raw_data[2] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(89)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(92)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[0] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(68)
    
    wire \add_80/n2 ;
    wire [21:0]n872_2;
    
    wire \add_267/n2 ;
    wire [21:0]uart_timer;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(240)
    wire [32:0]n469_2;
    
    wire \sub_52/add_2/n2 , \Inst_pwm_servo_0/add_6/n6 ;
    wire [7:0]angle_raw_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(231)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(173)
    
    wire tx_start_sig;
    wire [31:0]angle_pool_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(238)
    wire [31:0]angle_pool_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(239)
    wire [7:0]angle_raw_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(225)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[12] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[13] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(181)
    wire [15:0]gyro_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(186)
    wire [15:0]accel_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(185)
    wire [15:0]accel_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(185)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[1] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[3] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    
    wire \add_29/n2 ;
    wire [32:0]n641;
    
    wire \sub_77/add_2/n36 , \sub_77/add_2/n34 , \sub_77/add_2/n32 , \sub_77/add_2/n30 , 
        \sub_77/add_2/n28 , \sub_77/add_2/n26 , \sub_77/add_2/n24 , \sub_77/add_2/n22 , 
        \sub_77/add_2/n20 , \sub_77/add_2/n18 , \sub_77/add_2/n16 , \sub_77/add_2/n14 , 
        \sub_77/add_2/n12 , \sub_77/add_2/n10 , \sub_77/add_2/n8 , \sub_77/add_2/n6 , 
        \sub_77/add_2/n4 ;
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n36 , \Inst_debounce/add_30/n34 , \Inst_debounce/add_30/n32 , 
        \Inst_debounce/add_30/n30 , \Inst_debounce/add_30/n28 , \Inst_debounce/add_30/n26 , 
        \Inst_debounce/add_30/n24 , \Inst_debounce/add_30/n22 , \Inst_debounce/add_30/n20 , 
        \Inst_debounce/add_30/n18 , \Inst_debounce/add_30/n16 , \Inst_debounce/add_30/n14 , 
        \Inst_debounce/add_30/n12 , \Inst_debounce/add_30/n10 , \Inst_debounce/add_30/n8 , 
        \Inst_debounce/add_30/n6 , \Inst_debounce/add_30/n4 ;
    wire [14:0]\Inst_pwm_servo_2/n24 ;
    
    wire \Inst_pwm_servo_2/n23 , \Inst_pwm_servo_2/add_6/n28 , \Inst_pwm_servo_2/add_6/n26 , 
        \Inst_pwm_servo_2/add_6/n24 , \Inst_pwm_servo_2/add_6/n22 , \Inst_pwm_servo_2/add_6/n20 , 
        \Inst_pwm_servo_2/add_6/n18 , \Inst_pwm_servo_2/add_6/n16 , \Inst_pwm_servo_2/add_6/n14 , 
        \Inst_pwm_servo_2/add_6/n12 , \Inst_pwm_servo_2/add_6/n10 , \Inst_pwm_servo_2/add_6/n8 ;
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
        \Inst_pwm_servo_0/add_20/n12 , \Inst_pwm_servo_0/add_20/n10 , \Inst_pwm_servo_0/add_20/n8 ;
    wire [31:0]n301_3;
    
    wire \add_29/n4 , \Inst_pwm_servo_0/add_20/n6 , \Inst_pwm_servo_0/add_20/n4 ;
    wire [14:0]\Inst_pwm_servo_0/n24 ;
    
    wire \Inst_pwm_servo_0/n23 ;
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    
    wire \Inst_pwm_servo_0/add_6/n28 , \Inst_pwm_servo_0/add_6/n26 , \Inst_pwm_servo_0/add_6/n24 , 
        \Inst_pwm_servo_0/add_6/n22 , \Inst_pwm_servo_0/add_6/n20 , \Inst_pwm_servo_0/add_6/n18 , 
        \Inst_pwm_servo_0/add_6/n16 , \Inst_pwm_servo_0/add_6/n14 , \Inst_pwm_servo_0/add_6/n12 , 
        \Inst_pwm_servo_0/add_6/n10 , \Inst_pwm_servo_0/add_6/n8 ;
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(182)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid;
    wire [32:0]n469_3;
    wire [32:0]n469_4;
    
    wire \sub_52/add_2/n38 ;
    wire [32:0]n469_5;
    
    wire \sub_52/add_2/n36 ;
    wire [32:0]n469_6;
    
    wire \sub_52/add_2/n34 ;
    wire [32:0]n469_7;
    
    wire \sub_52/add_2/n32 ;
    wire [32:0]n469_8;
    
    wire \sub_52/add_2/n30 , \sub_52/add_2/n28 ;
    wire [32:0]n469_10;
    
    wire \sub_52/add_2/n26 ;
    wire [32:0]n469_11;
    
    wire \sub_52/add_2/n24 ;
    wire [32:0]n469_12;
    
    wire \sub_52/add_2/n22 ;
    wire [32:0]n469_13;
    
    wire \sub_52/add_2/n20 ;
    wire [32:0]n469_14;
    
    wire \sub_52/add_2/n18 ;
    wire [32:0]n469_15;
    
    wire \sub_52/add_2/n16 ;
    wire [32:0]n469_16;
    
    wire \sub_52/add_2/n14 ;
    wire [32:0]n469_17;
    
    wire \sub_52/add_2/n12 ;
    wire [32:0]n469_18;
    
    wire \sub_52/add_2/n10 ;
    wire [32:0]n469_19;
    
    wire \sub_52/add_2/n8 ;
    wire [32:0]n469_20;
    
    wire \sub_52/add_2/n6 ;
    wire [32:0]n469_21;
    
    wire \sub_52/add_2/n4 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_pwm_servo_0/add_20/n2 , \Inst_pwm_servo_1/add_6/n6 , \add_267/n40 ;
    wire [19:0]\Inst_pwm_servo_0/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_0/pulse_width[3] , \Inst_pwm_servo_0/pulse_width[4] , 
        \Inst_pwm_servo_0/pulse_width[8] , \Inst_pwm_servo_0/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_1/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_pwm_servo_1/n42 ;
    wire [15:0]\Inst_pwm_servo_2/n6 ;
    
    wire \Inst_pwm_servo_2/add_6/n6 , \add_267/n38 ;
    wire [19:0]\Inst_pwm_servo_1/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_1/pulse_width[3] , \Inst_pwm_servo_1/pulse_width[4] , 
        \Inst_pwm_servo_1/pulse_width[8] , \Inst_pwm_servo_1/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_2/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_pwm_servo_2/n42 ;
    
    wire \Inst_debounce/add_30/n2 , \add_267/n36 ;
    wire [19:0]\Inst_pwm_servo_2/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(23)
    
    wire \Inst_pwm_servo_2/pulse_width[3] , \Inst_pwm_servo_2/pulse_width[4] , 
        \Inst_pwm_servo_2/pulse_width[8] , \Inst_pwm_servo_2/pulse_width[14] ;
    wire [31:0]n301_4;
    
    wire \add_29/n6 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(49)
    
    wire \add_267/n34 ;
    wire [5:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(47)
    
    wire \add_267/n32 , \add_267/n30 , \add_267/n28 , \add_267/n26 , 
        \add_267/n24 , \add_267/n22 , \add_267/n20 , \add_267/n18 , 
        \add_267/n16 , \add_267/n14 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    
    wire \add_267/n12 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(48)
    
    wire tx_busy_sig, \add_267/n10 , \add_267/n8 , \add_267/n6 , \add_267/n4 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \sub_77/add_2/n2 , \Inst_debounce/sync_1 , switch_out, \Inst_debounce/sync_0 , 
        \add_80/n36 , \add_80/n34 , \add_80/n32 , \add_80/n30 , \add_80/n28 , 
        \add_80/n26 , \add_80/n24 , \add_80/n22 , \add_80/n20 , \add_80/n18 , 
        \add_80/n16 , \add_80/n14 , \add_80/n12 , \add_80/n10 ;
    wire [31:0]n678_5;
    
    wire \add_80/n8 ;
    wire [31:0]n678_4;
    
    wire \add_80/n6 , \add_80/n4 , \add_55/n38 , \add_55/n36 , \add_55/n34 , 
        \add_55/n32 , \add_55/n30 , \add_55/n28 , \add_55/n26 , \add_55/n24 , 
        \add_55/n22 , \add_55/n20 , \add_55/n18 , \add_55/n16 , \add_55/n14 , 
        \add_55/n12 , \add_55/n10 , \add_55/n8 , \add_55/n6 , \add_55/n4 ;
    wire [31:0]n301_33;
    wire [31:0]n301_32;
    
    wire \add_29/n62 ;
    wire [31:0]n301_31;
    
    wire \add_29/n60 ;
    wire [31:0]n301_30;
    
    wire \add_29/n58 , \add_29/n56 ;
    wire [31:0]n301_28;
    
    wire \add_29/n54 , \add_29/n52 ;
    wire [31:0]n301_26;
    
    wire \add_29/n50 , \add_29/n48 ;
    wire [15:0]\Inst_pwm_servo_1/n6 ;
    wire [31:0]n301_24;
    
    wire \add_29/n46 , \add_29/n44 ;
    wire [31:0]n301_22;
    
    wire \add_29/n42 , \add_29/n40 ;
    wire [31:0]n301_20;
    
    wire \add_29/n38 , \add_29/n36 ;
    wire [31:0]n301_18;
    
    wire \add_29/n34 , \add_29/n32 ;
    wire [31:0]n301_16;
    
    wire \add_29/n30 , \add_29/n28 ;
    wire [31:0]n301_14;
    
    wire \add_29/n26 , \add_29/n24 ;
    wire [31:0]n301_12;
    
    wire \add_29/n22 , \add_29/n20 ;
    wire [31:0]n301_10;
    
    wire \add_29/n18 ;
    wire [7:0]angle_raw_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(228)
    
    wire \add_29/n16 ;
    wire [31:0]n301_8;
    
    wire \add_29/n14 ;
    wire [31:0]n301_7;
    
    wire \add_29/n12 ;
    wire [15:0]\Inst_pwm_servo_0/n6 ;
    wire [31:0]n301_5;
    
    wire \add_29/n8 ;
    wire [31:0]n301_6;
    
    wire \add_29/n10 , n1516, \Inst_MPU6500_Controller/n6171 ;
    wire [3:0]\Inst_MPU6500_Controller/n763 ;
    
    wire ceg_net298, \Inst_MPU6500_Controller/n777 ;
    wire [3:0]\Inst_MPU6500_Controller/n735 ;
    
    wire ceg_net313;
    wire [21:0]\Inst_MPU6500_Controller/n740 ;
    
    wire ceg_net300, \Inst_MPU6500_Controller/n6169 ;
    wire [2:0]\Inst_MPU6500_Controller/n731 ;
    
    wire ceg_net279, n1526, n1518, n1524, \Inst_MPU6500_Controller/n6273 , 
        \Inst_MPU6500_Controller/n6280 ;
    wire [7:0]\Inst_MPU6500_Controller/n768 ;
    
    wire ceg_net301, \Inst_MPU6500_Controller/n5110 , \Inst_MPU6500_Controller/n730 , 
        ceg_net302, \Inst_MPU6500_Controller/n4275 , \Inst_MPU6500_Controller/n4280 , 
        \Inst_MPU6500_Controller/n4285 , \Inst_MPU6500_Controller/n4290 , 
        \Inst_MPU6500_Controller/n4295 , \Inst_MPU6500_Controller/n4300 , 
        \Inst_MPU6500_Controller/n4305 , \Inst_MPU6500_Controller/n4310 , 
        \Inst_MPU6500_Controller/n4315 , \Inst_MPU6500_Controller/n4320 , 
        \Inst_MPU6500_Controller/n4570 , \Inst_MPU6500_Controller/n4575 , 
        \Inst_MPU6500_Controller/n4580 , \Inst_MPU6500_Controller/n4585 , 
        \Inst_MPU6500_Controller/n4590 , \Inst_MPU6500_Controller/n4595 , 
        \Inst_MPU6500_Controller/n4600 , \Inst_MPU6500_Controller/n4605 , 
        \Inst_MPU6500_Controller/n4610 , \Inst_MPU6500_Controller/n4615 , 
        \Inst_MPU6500_Controller/n4620 , \Inst_MPU6500_Controller/n4625 , 
        \Inst_MPU6500_Controller/n4630 , \Inst_MPU6500_Controller/n4635 , 
        \Inst_MPU6500_Controller/n4640 , \Inst_MPU6500_Controller/n6195 , 
        \Inst_MPU6500_Controller/n6209 , ceg_net309, ceg_net314, ceg_net315;
    wire [3:0]\Inst_Spi_Mode_3/n129 ;
    
    wire ceg_net61, ceg_net318;
    wire [7:0]\Inst_Spi_Mode_3/n135 ;
    
    wire ceg_net207;
    wire [3:0]\Inst_Spi_Mode_3/n124 ;
    
    wire ceg_net208, \~ceg_net69 , ceg_net209, \Inst_Spi_Mode_3/n25 , 
        \Inst_Spi_Mode_3/n466 , ceg_net210, ceg_net211, ceg_net212, 
        ceg_net213, ceg_net214, ceg_net215, ceg_net216, \clk_i~O , 
        n1427, n1426;
    wire [1:0]\Inst_Spi_Mode_3/n144 ;
    
    wire n1425;
    wire [19:0]\Inst_pwm_servo_0/n63 ;
    
    wire \Inst_pwm_servo_0/n85 ;
    wire [19:0]\Inst_pwm_servo_1/n63 ;
    
    wire \Inst_pwm_servo_1/n85 ;
    wire [19:0]\Inst_pwm_servo_2/n63 ;
    
    wire \Inst_pwm_servo_2/n85 , \Inst_uart_tx/n333 ;
    wire [5:0]\Inst_uart_tx/n129 ;
    
    wire ceg_net92, ceg_net319;
    wire [2:0]\Inst_uart_tx/n136 ;
    
    wire ceg_net222, \Inst_uart_tx/n118 , ceg_net219, \Inst_uart_tx/n119 , 
        ceg_net220;
    wire [1:0]\Inst_uart_tx/n115 ;
    
    wire \Inst_debounce/n151 , \Inst_debounce/n149 , n1424;
    wire [21:0]n906;
    
    wire n1423, n1643, n1648, n1653, n1658;
    wire [7:0]n841;
    
    wire n1669, n1563, n1568, n1573, n1578, n1583, n1584, n1176, 
        n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, 
        n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, 
        n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, 
        n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, 
        n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, 
        n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, 
        n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, 
        n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, 
        n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, 
        n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, 
        n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, 
        n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, 
        n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, 
        n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, 
        n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, 
        n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, 
        n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, 
        n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, 
        n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, 
        n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, 
        n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, 
        n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, 
        n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, 
        n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, 
        n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, 
        n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, 
        n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, 
        n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, 
        n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, 
        n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, 
        n1417, n1418, n1419, n1420, n1421, n1422;
    
    EFX_FF \angle_pool[0]~FF  (.D(n301_2[0]), .CE(n1516), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \angle_pool_x[0]~FF  (.D(n506_2[0]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[0]~FF  (.D(n678_2[0]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[0]~FF  (.D(angle_pool_x[14]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[0]~FF .D_POLARITY = 1'b0;
    defparam \angle_raw_x[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[0]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
           .CE(ceg_net301), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [0]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
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
    EFX_FF \accel_x[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [6]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [7]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [0]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [1]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [2]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [3]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [4]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [5]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [6]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [7]), 
           .CE(\Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[6]~FF  (.D(\Inst_MPU6500_Controller/n4275 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[7]~FF  (.D(\Inst_MPU6500_Controller/n4280 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[8]~FF  (.D(\Inst_MPU6500_Controller/n4285 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[9]~FF  (.D(\Inst_MPU6500_Controller/n4290 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[10]~FF  (.D(\Inst_MPU6500_Controller/n4295 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[11]~FF  (.D(\Inst_MPU6500_Controller/n4300 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[12]~FF  (.D(\Inst_MPU6500_Controller/n4305 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[13]~FF  (.D(\Inst_MPU6500_Controller/n4310 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[14]~FF  (.D(\Inst_MPU6500_Controller/n4315 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[15]~FF  (.D(\Inst_MPU6500_Controller/n4320 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[1]~FF  (.D(\Inst_MPU6500_Controller/n4570 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[2]~FF  (.D(\Inst_MPU6500_Controller/n4575 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[3]~FF  (.D(\Inst_MPU6500_Controller/n4580 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[4]~FF  (.D(\Inst_MPU6500_Controller/n4585 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[5]~FF  (.D(\Inst_MPU6500_Controller/n4590 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[6]~FF  (.D(\Inst_MPU6500_Controller/n4595 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[7]~FF  (.D(\Inst_MPU6500_Controller/n4600 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[8]~FF  (.D(\Inst_MPU6500_Controller/n4605 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[9]~FF  (.D(\Inst_MPU6500_Controller/n4610 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[10]~FF  (.D(\Inst_MPU6500_Controller/n4615 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[11]~FF  (.D(\Inst_MPU6500_Controller/n4620 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[12]~FF  (.D(\Inst_MPU6500_Controller/n4625 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[13]~FF  (.D(\Inst_MPU6500_Controller/n4630 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[14]~FF  (.D(\Inst_MPU6500_Controller/n4635 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[15]~FF  (.D(\Inst_MPU6500_Controller/n4640 ), .CE(\Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6169 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6195 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6195 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6171 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6209 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC_PRIORITY = 1'b1;
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
           .CE(ceg_net301), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
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
           .CE(ceg_net301), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n768 [4]), 
           .CE(ceg_net301), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n768 [5]), 
           .CE(ceg_net301), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
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
    EFX_FF \angle_pool_x[1]~FF  (.D(n506[1]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[2]~FF  (.D(n506[2]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[3]~FF  (.D(n506[3]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[4]~FF  (.D(n506[4]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[5]~FF  (.D(n506[5]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[6]~FF  (.D(n506[6]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[7]~FF  (.D(n506[7]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[8]~FF  (.D(n506[8]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[8]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[9]~FF  (.D(n506[9]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[9]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[10]~FF  (.D(n506[10]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[10]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[11]~FF  (.D(n506[11]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[11]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[12]~FF  (.D(n506[12]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[12]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[13]~FF  (.D(n506[13]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[13]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[14]~FF  (.D(n506[14]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[14]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[15]~FF  (.D(n506[15]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[15]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[16]~FF  (.D(n506[16]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[16]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[16]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[17]~FF  (.D(n506[17]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[17]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[17]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[18]~FF  (.D(n506[18]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[18]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[18]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[19]~FF  (.D(n506[19]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_x[19]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[19]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[1]~FF  (.D(n678_3[1]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[2]~FF  (.D(n678_4[2]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[3]~FF  (.D(n678_5[3]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[4]~FF  (.D(n678[4]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[5]~FF  (.D(n678[5]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[6]~FF  (.D(n678[6]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[7]~FF  (.D(n678[7]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[8]~FF  (.D(n678[8]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[8]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[9]~FF  (.D(n678[9]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[9]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[10]~FF  (.D(n678[10]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[10]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[11]~FF  (.D(n678[11]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[11]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[12]~FF  (.D(n678[12]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[12]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[13]~FF  (.D(n678[13]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[13]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[14]~FF  (.D(n678[14]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[14]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[15]~FF  (.D(n678[15]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[15]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[16]~FF  (.D(n678[16]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[16]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[16]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[17]~FF  (.D(n678[17]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[17]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[17]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[18]~FF  (.D(n678[18]), .CE(n1524), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_pool_y[18]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[18]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[1]~FF  (.D(n906[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[2]~FF  (.D(n906[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[3]~FF  (.D(n906[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[4]~FF  (.D(n906[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[5]~FF  (.D(n906[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[6]~FF  (.D(n906[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[7]~FF  (.D(n906[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[8]~FF  (.D(n906[8]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[9]~FF  (.D(n906[9]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[9]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[9]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[10]~FF  (.D(n906[10]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[10]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[10]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[11]~FF  (.D(n906[11]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[11]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[11]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[11]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[12]~FF  (.D(n906[12]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[12]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[12]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[12]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[13]~FF  (.D(n906[13]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[13]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[13]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[13]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[14]~FF  (.D(n906[14]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[14]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[14]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[14]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[15]~FF  (.D(n906[15]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[15]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[15]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[15]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[16]~FF  (.D(n906[16]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[16]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[16]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[16]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[17]~FF  (.D(n906[17]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[17]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[17]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[17]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[18]~FF  (.D(n906[18]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[18]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[18]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[18]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[19]~FF  (.D(n906[19]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[19]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[19]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[19]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[20]~FF  (.D(n906[20]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[20]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[20]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[20]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[21]~FF  (.D(n906[21]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \uart_timer[21]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[21]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[21]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[0]~FF  (.D(angle_pool_y[12]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[0]~FF .D_POLARITY = 1'b0;
    defparam \angle_raw_y[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[0]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[1]~FF  (.D(n1643), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[1]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[2]~FF  (.D(n1648), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[2]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[3]~FF  (.D(n1653), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[3]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[4]~FF  (.D(n1658), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[4]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[5]~FF  (.D(n841[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[5]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[6]~FF  (.D(n841[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[6]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[7]~FF  (.D(n1669), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_raw_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \angle_raw_x[1]~FF  (.D(n1563), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[1]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[2]~FF  (.D(n1568), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[2]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[3]~FF  (.D(n1573), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[3]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[4]~FF  (.D(n1578), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[4]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[5]~FF  (.D(n1583), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[5]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[6]~FF  (.D(n1584), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[6]~FF .D_POLARITY = 1'b0;
    defparam \angle_raw_x[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[6]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[7]~FF  (.D(n1584), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(750)
    defparam \angle_raw_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_raw_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_55/i1  (.I0(n469_2[0]), .I1(accel_x[6]), .CI(1'b0), .O(n506_2[0]), 
            .CO(\add_55/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i1 .I0_POLARITY = 1'b1;
    defparam \add_55/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i1  (.I0(n641[0]), .I1(accel_y[6]), .CI(1'b0), .O(n678_2[0]), 
            .CO(\add_80/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i1 .I0_POLARITY = 1'b1;
    defparam \add_80/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i1  (.I0(uart_timer[1]), .I1(uart_timer[0]), .CI(1'b0), 
            .O(n872_2[1]), .CO(\add_267/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i1 .I0_POLARITY = 1'b1;
    defparam \add_267/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i1  (.I0(angle_pool_x[0]), .I1(angle_pool_x[6]), 
            .CI(n1423), .O(n469_2[0]), .CO(\sub_52/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_pwm_servo_0/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_0/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i1  (.I0(angle_pool[0]), .I1(gyro_z[0]), .CI(1'b0), 
            .O(n301_2[0]), .CO(\add_29/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i1 .I0_POLARITY = 1'b1;
    defparam \add_29/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i19  (.I0(angle_pool_y[18]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n36 ), .O(n641[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i18  (.I0(angle_pool_y[17]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n34 ), .O(n641[17]), .CO(\sub_77/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i17  (.I0(angle_pool_y[16]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n32 ), .O(n641[16]), .CO(\sub_77/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i16  (.I0(angle_pool_y[15]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n30 ), .O(n641[15]), .CO(\sub_77/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i15  (.I0(angle_pool_y[14]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n28 ), .O(n641[14]), .CO(\sub_77/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i14  (.I0(angle_pool_y[13]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n26 ), .O(n641[13]), .CO(\sub_77/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i13  (.I0(angle_pool_y[12]), .I1(angle_pool_y[18]), 
            .CI(\sub_77/add_2/n24 ), .O(n641[12]), .CO(\sub_77/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i12  (.I0(angle_pool_y[11]), .I1(angle_pool_y[17]), 
            .CI(\sub_77/add_2/n22 ), .O(n641[11]), .CO(\sub_77/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i11  (.I0(angle_pool_y[10]), .I1(angle_pool_y[16]), 
            .CI(\sub_77/add_2/n20 ), .O(n641[10]), .CO(\sub_77/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i10  (.I0(angle_pool_y[9]), .I1(angle_pool_y[15]), 
            .CI(\sub_77/add_2/n18 ), .O(n641[9]), .CO(\sub_77/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i9  (.I0(angle_pool_y[8]), .I1(angle_pool_y[14]), 
            .CI(\sub_77/add_2/n16 ), .O(n641[8]), .CO(\sub_77/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i8  (.I0(angle_pool_y[7]), .I1(angle_pool_y[13]), 
            .CI(\sub_77/add_2/n14 ), .O(n641[7]), .CO(\sub_77/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i7  (.I0(angle_pool_y[6]), .I1(angle_pool_y[12]), 
            .CI(\sub_77/add_2/n12 ), .O(n641[6]), .CO(\sub_77/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i6  (.I0(angle_pool_y[5]), .I1(angle_pool_y[11]), 
            .CI(\sub_77/add_2/n10 ), .O(n641[5]), .CO(\sub_77/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i5  (.I0(angle_pool_y[4]), .I1(angle_pool_y[10]), 
            .CI(\sub_77/add_2/n8 ), .O(n641[4]), .CO(\sub_77/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i4  (.I0(angle_pool_y[3]), .I1(angle_pool_y[9]), 
            .CI(\sub_77/add_2/n6 ), .O(n641[3]), .CO(\sub_77/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i3  (.I0(angle_pool_y[2]), .I1(angle_pool_y[8]), 
            .CI(\sub_77/add_2/n4 ), .O(n641[2]), .CO(\sub_77/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i2  (.I0(angle_pool_y[1]), .I1(angle_pool_y[7]), 
            .CI(\sub_77/add_2/n2 ), .O(n641[1]), .CO(\sub_77/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i2 .I1_POLARITY = 1'b0;
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
    EFX_ADD \Inst_pwm_servo_2/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [15]), 
            .CI(\Inst_pwm_servo_2/add_6/n28 ), .O(\Inst_pwm_servo_2/n24 [14]), 
            .CO(n1424)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [14]), 
            .CI(\Inst_pwm_servo_2/add_6/n26 ), .O(\Inst_pwm_servo_2/n24 [13]), 
            .CO(\Inst_pwm_servo_2/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i14 .I1_POLARITY = 1'b1;
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
    EFX_ADD \Inst_pwm_servo_1/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [15]), 
            .CI(\Inst_pwm_servo_1/add_6/n28 ), .O(\Inst_pwm_servo_1/n24 [14]), 
            .CO(n1425)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
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
    EFX_ADD \add_29/i2  (.I0(angle_pool[1]), .I1(gyro_z[1]), .CI(\add_29/n2 ), 
            .O(n301_3[1]), .CO(\add_29/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i2 .I0_POLARITY = 1'b1;
    defparam \add_29/i2 .I1_POLARITY = 1'b1;
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
            .CO(n1426)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
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
    EFX_ADD \sub_52/add_2/i20  (.I0(angle_pool_x[19]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n38 ), .O(n469_3[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i20 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i19  (.I0(angle_pool_x[18]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n36 ), .O(n469_4[18]), .CO(\sub_52/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i18  (.I0(angle_pool_x[17]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n34 ), .O(n469_5[17]), .CO(\sub_52/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i17  (.I0(angle_pool_x[16]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n32 ), .O(n469_6[16]), .CO(\sub_52/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i16  (.I0(angle_pool_x[15]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n30 ), .O(n469_7[15]), .CO(\sub_52/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i15  (.I0(angle_pool_x[14]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n28 ), .O(n469_8[14]), .CO(\sub_52/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i14  (.I0(angle_pool_x[13]), .I1(angle_pool_x[19]), 
            .CI(\sub_52/add_2/n26 ), .O(n469_9[13]), .CO(\sub_52/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i13  (.I0(angle_pool_x[12]), .I1(angle_pool_x[18]), 
            .CI(\sub_52/add_2/n24 ), .O(n469_10[12]), .CO(\sub_52/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i12  (.I0(angle_pool_x[11]), .I1(angle_pool_x[17]), 
            .CI(\sub_52/add_2/n22 ), .O(n469_11[11]), .CO(\sub_52/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i11  (.I0(angle_pool_x[10]), .I1(angle_pool_x[16]), 
            .CI(\sub_52/add_2/n20 ), .O(n469_12[10]), .CO(\sub_52/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i10  (.I0(angle_pool_x[9]), .I1(angle_pool_x[15]), 
            .CI(\sub_52/add_2/n18 ), .O(n469_13[9]), .CO(\sub_52/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i9  (.I0(angle_pool_x[8]), .I1(angle_pool_x[14]), 
            .CI(\sub_52/add_2/n16 ), .O(n469_14[8]), .CO(\sub_52/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i8  (.I0(angle_pool_x[7]), .I1(angle_pool_x[13]), 
            .CI(\sub_52/add_2/n14 ), .O(n469_15[7]), .CO(\sub_52/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i7  (.I0(angle_pool_x[6]), .I1(angle_pool_x[12]), 
            .CI(\sub_52/add_2/n12 ), .O(n469_16[6]), .CO(\sub_52/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i6  (.I0(angle_pool_x[5]), .I1(angle_pool_x[11]), 
            .CI(\sub_52/add_2/n10 ), .O(n469_17[5]), .CO(\sub_52/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i5  (.I0(angle_pool_x[4]), .I1(angle_pool_x[10]), 
            .CI(\sub_52/add_2/n8 ), .O(n469_18[4]), .CO(\sub_52/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i4  (.I0(angle_pool_x[3]), .I1(angle_pool_x[9]), 
            .CI(\sub_52/add_2/n6 ), .O(n469_19[3]), .CO(\sub_52/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i3  (.I0(angle_pool_x[2]), .I1(angle_pool_x[8]), 
            .CI(\sub_52/add_2/n4 ), .O(n469_20[2]), .CO(\sub_52/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i2  (.I0(angle_pool_x[1]), .I1(angle_pool_x[7]), 
            .CI(\sub_52/add_2/n2 ), .O(n469_21[1]), .CO(\sub_52/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i2 .I1_POLARITY = 1'b0;
    EFX_ADD \add_267/i21  (.I0(uart_timer[21]), .I1(1'b0), .CI(\add_267/n40 ), 
            .O(n872[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i21 .I0_POLARITY = 1'b1;
    defparam \add_267/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_1/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i20  (.I0(uart_timer[20]), .I1(1'b0), .CI(\add_267/n38 ), 
            .O(n872[20]), .CO(\add_267/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i20 .I0_POLARITY = 1'b1;
    defparam \add_267/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_20/i1  (.I0(\Inst_pwm_servo_1/counter [1]), 
            .I1(\Inst_pwm_servo_1/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_1/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_1/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_2/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i19  (.I0(uart_timer[19]), .I1(1'b0), .CI(\add_267/n36 ), 
            .O(n872[19]), .CO(\add_267/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i19 .I0_POLARITY = 1'b1;
    defparam \add_267/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_20/i1  (.I0(\Inst_pwm_servo_2/counter [1]), 
            .I1(\Inst_pwm_servo_2/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_2/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_2/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i18  (.I0(uart_timer[18]), .I1(1'b0), .CI(\add_267/n34 ), 
            .O(n872[18]), .CO(\add_267/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i18 .I0_POLARITY = 1'b1;
    defparam \add_267/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i3  (.I0(angle_pool[2]), .I1(gyro_z[2]), .CI(\add_29/n4 ), 
            .O(n301_4[2]), .CO(\add_29/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i3 .I0_POLARITY = 1'b1;
    defparam \add_29/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i17  (.I0(uart_timer[17]), .I1(1'b0), .CI(\add_267/n32 ), 
            .O(n872[17]), .CO(\add_267/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i17 .I0_POLARITY = 1'b1;
    defparam \add_267/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i16  (.I0(uart_timer[16]), .I1(1'b0), .CI(\add_267/n30 ), 
            .O(n872[16]), .CO(\add_267/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i16 .I0_POLARITY = 1'b1;
    defparam \add_267/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i15  (.I0(uart_timer[15]), .I1(1'b0), .CI(\add_267/n28 ), 
            .O(n872[15]), .CO(\add_267/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i15 .I0_POLARITY = 1'b1;
    defparam \add_267/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i14  (.I0(uart_timer[14]), .I1(1'b0), .CI(\add_267/n26 ), 
            .O(n872[14]), .CO(\add_267/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i14 .I0_POLARITY = 1'b1;
    defparam \add_267/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i13  (.I0(uart_timer[13]), .I1(1'b0), .CI(\add_267/n24 ), 
            .O(n872[13]), .CO(\add_267/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i13 .I0_POLARITY = 1'b1;
    defparam \add_267/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i12  (.I0(uart_timer[12]), .I1(1'b0), .CI(\add_267/n22 ), 
            .O(n872[12]), .CO(\add_267/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i12 .I0_POLARITY = 1'b1;
    defparam \add_267/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i11  (.I0(uart_timer[11]), .I1(1'b0), .CI(\add_267/n20 ), 
            .O(n872[11]), .CO(\add_267/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i11 .I0_POLARITY = 1'b1;
    defparam \add_267/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i10  (.I0(uart_timer[10]), .I1(1'b0), .CI(\add_267/n18 ), 
            .O(n872[10]), .CO(\add_267/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i10 .I0_POLARITY = 1'b1;
    defparam \add_267/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i9  (.I0(uart_timer[9]), .I1(1'b0), .CI(\add_267/n16 ), 
            .O(n872[9]), .CO(\add_267/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i9 .I0_POLARITY = 1'b1;
    defparam \add_267/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i8  (.I0(uart_timer[8]), .I1(1'b0), .CI(\add_267/n14 ), 
            .O(n872[8]), .CO(\add_267/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i8 .I0_POLARITY = 1'b1;
    defparam \add_267/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i7  (.I0(uart_timer[7]), .I1(1'b0), .CI(\add_267/n12 ), 
            .O(n872[7]), .CO(\add_267/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i7 .I0_POLARITY = 1'b1;
    defparam \add_267/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i6  (.I0(uart_timer[6]), .I1(1'b0), .CI(\add_267/n10 ), 
            .O(n872[6]), .CO(\add_267/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i6 .I0_POLARITY = 1'b1;
    defparam \add_267/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i5  (.I0(uart_timer[5]), .I1(1'b0), .CI(\add_267/n8 ), 
            .O(n872[5]), .CO(\add_267/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i5 .I0_POLARITY = 1'b1;
    defparam \add_267/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i4  (.I0(uart_timer[4]), .I1(1'b0), .CI(\add_267/n6 ), 
            .O(n872[4]), .CO(\add_267/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i4 .I0_POLARITY = 1'b1;
    defparam \add_267/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i3  (.I0(uart_timer[3]), .I1(1'b0), .CI(\add_267/n4 ), 
            .O(n872[3]), .CO(\add_267/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i3 .I0_POLARITY = 1'b1;
    defparam \add_267/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_267/i2  (.I0(uart_timer[2]), .I1(1'b0), .CI(\add_267/n2 ), 
            .O(n872[2]), .CO(\add_267/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(742)
    defparam \add_267/i2 .I0_POLARITY = 1'b1;
    defparam \add_267/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i1  (.I0(angle_pool_y[0]), .I1(angle_pool_y[6]), 
            .CI(n1427), .O(n641[0]), .CO(\sub_77/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \add_80/i19  (.I0(n641[18]), .I1(accel_y[15]), .CI(\add_80/n36 ), 
            .O(n678[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i19 .I0_POLARITY = 1'b1;
    defparam \add_80/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i18  (.I0(n641[17]), .I1(accel_y[15]), .CI(\add_80/n34 ), 
            .O(n678[17]), .CO(\add_80/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i18 .I0_POLARITY = 1'b1;
    defparam \add_80/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i17  (.I0(n641[16]), .I1(accel_y[15]), .CI(\add_80/n32 ), 
            .O(n678[16]), .CO(\add_80/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i17 .I0_POLARITY = 1'b1;
    defparam \add_80/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i16  (.I0(n641[15]), .I1(accel_y[15]), .CI(\add_80/n30 ), 
            .O(n678[15]), .CO(\add_80/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i16 .I0_POLARITY = 1'b1;
    defparam \add_80/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i15  (.I0(n641[14]), .I1(accel_y[15]), .CI(\add_80/n28 ), 
            .O(n678[14]), .CO(\add_80/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i15 .I0_POLARITY = 1'b1;
    defparam \add_80/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i14  (.I0(n641[13]), .I1(accel_y[15]), .CI(\add_80/n26 ), 
            .O(n678[13]), .CO(\add_80/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i14 .I0_POLARITY = 1'b1;
    defparam \add_80/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i13  (.I0(n641[12]), .I1(accel_y[15]), .CI(\add_80/n24 ), 
            .O(n678[12]), .CO(\add_80/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i13 .I0_POLARITY = 1'b1;
    defparam \add_80/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i12  (.I0(n641[11]), .I1(accel_y[15]), .CI(\add_80/n22 ), 
            .O(n678[11]), .CO(\add_80/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i12 .I0_POLARITY = 1'b1;
    defparam \add_80/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i11  (.I0(n641[10]), .I1(accel_y[15]), .CI(\add_80/n20 ), 
            .O(n678[10]), .CO(\add_80/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i11 .I0_POLARITY = 1'b1;
    defparam \add_80/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i10  (.I0(n641[9]), .I1(accel_y[15]), .CI(\add_80/n18 ), 
            .O(n678[9]), .CO(\add_80/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i10 .I0_POLARITY = 1'b1;
    defparam \add_80/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i9  (.I0(n641[8]), .I1(accel_y[14]), .CI(\add_80/n16 ), 
            .O(n678[8]), .CO(\add_80/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i9 .I0_POLARITY = 1'b1;
    defparam \add_80/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i8  (.I0(n641[7]), .I1(accel_y[13]), .CI(\add_80/n14 ), 
            .O(n678[7]), .CO(\add_80/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i8 .I0_POLARITY = 1'b1;
    defparam \add_80/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i7  (.I0(n641[6]), .I1(accel_y[12]), .CI(\add_80/n12 ), 
            .O(n678[6]), .CO(\add_80/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i7 .I0_POLARITY = 1'b1;
    defparam \add_80/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i6  (.I0(n641[5]), .I1(accel_y[11]), .CI(\add_80/n10 ), 
            .O(n678[5]), .CO(\add_80/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i6 .I0_POLARITY = 1'b1;
    defparam \add_80/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i5  (.I0(n641[4]), .I1(accel_y[10]), .CI(\add_80/n8 ), 
            .O(n678[4]), .CO(\add_80/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i5 .I0_POLARITY = 1'b1;
    defparam \add_80/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i4  (.I0(n641[3]), .I1(accel_y[9]), .CI(\add_80/n6 ), 
            .O(n678_5[3]), .CO(\add_80/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i4 .I0_POLARITY = 1'b1;
    defparam \add_80/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i3  (.I0(n641[2]), .I1(accel_y[8]), .CI(\add_80/n4 ), 
            .O(n678_4[2]), .CO(\add_80/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i3 .I0_POLARITY = 1'b1;
    defparam \add_80/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i2  (.I0(n641[1]), .I1(accel_y[7]), .CI(\add_80/n2 ), 
            .O(n678_3[1]), .CO(\add_80/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \add_80/i2 .I0_POLARITY = 1'b1;
    defparam \add_80/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i20  (.I0(n469_3[19]), .I1(accel_x[15]), .CI(\add_55/n38 ), 
            .O(n506[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i20 .I0_POLARITY = 1'b1;
    defparam \add_55/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i19  (.I0(n469_4[18]), .I1(accel_x[15]), .CI(\add_55/n36 ), 
            .O(n506[18]), .CO(\add_55/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i19 .I0_POLARITY = 1'b1;
    defparam \add_55/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i18  (.I0(n469_5[17]), .I1(accel_x[15]), .CI(\add_55/n34 ), 
            .O(n506[17]), .CO(\add_55/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i18 .I0_POLARITY = 1'b1;
    defparam \add_55/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i17  (.I0(n469_6[16]), .I1(accel_x[15]), .CI(\add_55/n32 ), 
            .O(n506[16]), .CO(\add_55/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i17 .I0_POLARITY = 1'b1;
    defparam \add_55/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i16  (.I0(n469_7[15]), .I1(accel_x[15]), .CI(\add_55/n30 ), 
            .O(n506[15]), .CO(\add_55/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i16 .I0_POLARITY = 1'b1;
    defparam \add_55/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i15  (.I0(n469_8[14]), .I1(accel_x[15]), .CI(\add_55/n28 ), 
            .O(n506[14]), .CO(\add_55/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i15 .I0_POLARITY = 1'b1;
    defparam \add_55/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i14  (.I0(n469_9[13]), .I1(accel_x[15]), .CI(\add_55/n26 ), 
            .O(n506[13]), .CO(\add_55/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i14 .I0_POLARITY = 1'b1;
    defparam \add_55/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i13  (.I0(n469_10[12]), .I1(accel_x[15]), .CI(\add_55/n24 ), 
            .O(n506[12]), .CO(\add_55/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i13 .I0_POLARITY = 1'b1;
    defparam \add_55/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i12  (.I0(n469_11[11]), .I1(accel_x[15]), .CI(\add_55/n22 ), 
            .O(n506[11]), .CO(\add_55/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i12 .I0_POLARITY = 1'b1;
    defparam \add_55/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i11  (.I0(n469_12[10]), .I1(accel_x[15]), .CI(\add_55/n20 ), 
            .O(n506[10]), .CO(\add_55/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i11 .I0_POLARITY = 1'b1;
    defparam \add_55/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i10  (.I0(n469_13[9]), .I1(accel_x[15]), .CI(\add_55/n18 ), 
            .O(n506[9]), .CO(\add_55/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i10 .I0_POLARITY = 1'b1;
    defparam \add_55/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i9  (.I0(n469_14[8]), .I1(accel_x[14]), .CI(\add_55/n16 ), 
            .O(n506[8]), .CO(\add_55/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i9 .I0_POLARITY = 1'b1;
    defparam \add_55/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i8  (.I0(n469_15[7]), .I1(accel_x[13]), .CI(\add_55/n14 ), 
            .O(n506[7]), .CO(\add_55/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i8 .I0_POLARITY = 1'b1;
    defparam \add_55/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i7  (.I0(n469_16[6]), .I1(accel_x[12]), .CI(\add_55/n12 ), 
            .O(n506[6]), .CO(\add_55/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i7 .I0_POLARITY = 1'b1;
    defparam \add_55/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i6  (.I0(n469_17[5]), .I1(accel_x[11]), .CI(\add_55/n10 ), 
            .O(n506[5]), .CO(\add_55/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i6 .I0_POLARITY = 1'b1;
    defparam \add_55/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i5  (.I0(n469_18[4]), .I1(accel_x[10]), .CI(\add_55/n8 ), 
            .O(n506[4]), .CO(\add_55/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i5 .I0_POLARITY = 1'b1;
    defparam \add_55/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i4  (.I0(n469_19[3]), .I1(accel_x[9]), .CI(\add_55/n6 ), 
            .O(n506[3]), .CO(\add_55/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i4 .I0_POLARITY = 1'b1;
    defparam \add_55/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i3  (.I0(n469_20[2]), .I1(accel_x[8]), .CI(\add_55/n4 ), 
            .O(n506[2]), .CO(\add_55/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i3 .I0_POLARITY = 1'b1;
    defparam \add_55/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i2  (.I0(n469_21[1]), .I1(accel_x[7]), .CI(\add_55/n2 ), 
            .O(n506[1]), .CO(\add_55/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \add_55/i2 .I0_POLARITY = 1'b1;
    defparam \add_55/i2 .I1_POLARITY = 1'b1;
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
    EFX_ADD \add_29/i4  (.I0(angle_pool[3]), .I1(gyro_z[3]), .CI(\add_29/n6 ), 
            .O(n301_5[3]), .CO(\add_29/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i4 .I0_POLARITY = 1'b1;
    defparam \add_29/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i5  (.I0(angle_pool[4]), .I1(gyro_z[4]), .CI(\add_29/n8 ), 
            .O(n301_6[4]), .CO(\add_29/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(686)
    defparam \add_29/i5 .I0_POLARITY = 1'b1;
    defparam \add_29/i5 .I1_POLARITY = 1'b1;
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
    EFX_MULT \Inst_pwm_servo_1/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            angle_raw_y}), .B({18'b000000000000111101}), .O({Open_22, 
            Open_23, Open_24, Open_25, Open_26, Open_27, Open_28, 
            Open_29, Open_30, Open_31, Open_32, Open_33, Open_34, 
            Open_35, Open_36, Open_37, Open_38, Open_39, Open_40, 
            Open_41, Open_42, Open_43, \Inst_pwm_servo_1/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/mult_5 .WIDTH = 18;
    defparam \Inst_pwm_servo_1/mult_5 .A_REG = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .B_REG = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .O_REG = 1'b0;
    defparam \Inst_pwm_servo_1/mult_5 .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .CEA_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/mult_5 .RSTA_POLARITY = 1'b1;
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
    EFX_MULT \Inst_pwm_servo_0/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            angle_raw_x}), .B({18'b000000000000111101}), .O({Open_44, 
            Open_45, Open_46, Open_47, Open_48, Open_49, Open_50, 
            Open_51, Open_52, Open_53, Open_54, Open_55, Open_56, 
            Open_57, Open_58, Open_59, Open_60, Open_61, Open_62, 
            Open_63, Open_64, Open_65, \Inst_pwm_servo_0/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
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
    EFX_LUT4 LUT__2697 (.I0(n1177), .I1(gyro_z[15]), .O(n1178)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2697.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2698 (.I0(n1176), .I1(gyro_z[5]), .I2(gyro_z[4]), .I3(n1178), 
            .O(n1179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__2698.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__2699 (.I0(gyro_z[4]), .I1(gyro_z[6]), .I2(gyro_z[7]), 
            .I3(gyro_z[8]), .O(n1180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__2699.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__2700 (.I0(gyro_z[4]), .I1(gyro_z[9]), .I2(gyro_z[10]), 
            .I3(gyro_z[11]), .O(n1181)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__2700.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__2701 (.I0(n1180), .I1(n1181), .I2(n1179), .I3(spi_data_valid), 
            .O(n1516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(687)
    defparam LUT__2701.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__2702 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2702.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2703 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_data_valid), 
            .O(n1183)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2703.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2704 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .I2(n1182), .I3(n1183), .O(n1184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2704.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2705 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n1184), .O(\Inst_MPU6500_Controller/n6171 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2705.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2706 (.I0(\Inst_MPU6500_Controller/delay_cntr [8]), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [19]), .O(n1185)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2706.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2707 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n1186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2707.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2708 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1187)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2708.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2709 (.I0(n1185), .I1(n1186), .I2(n1187), .O(n1188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2709.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2710 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [4]), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n1189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2710.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2711 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n1190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2711.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2712 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n1191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2712.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2713 (.I0(n1189), .I1(n1190), .I2(n1191), .O(n1192)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2713.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2714 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2714.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2715 (.I0(n1192), .I1(n1188), .I2(n1193), .O(n1194)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2715.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2716 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2716.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2717 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [16]), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n1196)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2717.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2718 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(n1197)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2718.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2719 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2719.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2720 (.I0(n1196), .I1(n1197), .I2(n1198), .O(n1199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2720.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2721 (.I0(n1188), .I1(n1199), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n1200)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h770f */ ;
    defparam LUT__2721.LUTMASK = 16'h770f;
    EFX_LUT4 LUT__2722 (.I0(spi_data_valid), .I1(n1200), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__2722.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__2723 (.I0(n1195), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n1194), .I3(n1201), .O(\Inst_MPU6500_Controller/n763 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2723.LUTMASK = 16'hff01;
    EFX_LUT4 LUT__2724 (.I0(n1197), .I1(n1198), .O(n1202)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2724.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2725 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [14]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2725.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2726 (.I0(\Inst_MPU6500_Controller/delay_cntr [15]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .O(n1204)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2726.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2727 (.I0(n1185), .I1(n1190), .I2(n1203), .I3(n1204), 
            .O(n1205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2727.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2728 (.I0(n1205), .I1(n1202), .I2(\Inst_MPU6500_Controller/state [0]), 
            .O(n1206)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2728.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2729 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n1207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__2729.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__2730 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n1208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2730.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2731 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1208), .O(n1209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__2731.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__2732 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1209), 
            .O(n1210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2732.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2733 (.I0(n1207), .I1(n1206), .I2(n1210), .O(ceg_net298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2733.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2734 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2734.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__2735 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .O(n1211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2735.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2736 (.I0(n1182), .I1(n1195), .O(n1212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2736.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2737 (.I0(n1211), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(n1212), .I3(spi_data_valid), .O(\Inst_MPU6500_Controller/n735 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2737.LUTMASK = 16'h0b0c;
    EFX_LUT4 LUT__2738 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2738.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2739 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(n1213), .O(ceg_net313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf23f */ ;
    defparam LUT__2739.LUTMASK = 16'hf23f;
    EFX_LUT4 LUT__2740 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n1214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2740.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2741 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1211), .I3(n1214), .O(n1215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2741.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2742 (.I0(n1215), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n1216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2742.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2743 (.I0(n1205), .I1(n1202), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n1217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2743.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2744 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1218)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2744.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2745 (.I0(n1218), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n1219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__2745.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__2746 (.I0(n1217), .I1(n1194), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1219), .O(n1220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__2746.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__2747 (.I0(n1216), .I1(n1220), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n740 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2747.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__2748 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n1221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c00 */ ;
    defparam LUT__2748.LUTMASK = 16'h2c00;
    EFX_LUT4 LUT__2749 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1207), 
            .I2(n1221), .O(ceg_net300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2749.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2750 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n1184), .O(\Inst_MPU6500_Controller/n6169 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2750.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2751 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2751.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2752 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(n1222), 
            .O(\Inst_MPU6500_Controller/n731 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2752.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2753 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1223)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2753.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2754 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n1224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2754.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2755 (.I0(n1224), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1193), .O(n1225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2755.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2756 (.I0(switch_out), .I1(n1218), .I2(n1223), .I3(n1225), 
            .O(ceg_net279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2756.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2757 (.I0(uart_timer[1]), .I1(uart_timer[0]), .I2(uart_timer[2]), 
            .I3(uart_timer[3]), .O(n1226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2757.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2758 (.I0(uart_timer[6]), .I1(uart_timer[7]), .O(n1227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2758.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2759 (.I0(n1226), .I1(uart_timer[4]), .I2(uart_timer[5]), 
            .I3(n1227), .O(n1228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2759.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2760 (.I0(uart_timer[10]), .I1(uart_timer[11]), .I2(uart_timer[12]), 
            .O(n1229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2760.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2761 (.I0(uart_timer[8]), .I1(uart_timer[9]), .I2(n1228), 
            .I3(n1229), .O(n1230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2761.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2762 (.I0(uart_timer[17]), .I1(uart_timer[16]), .I2(uart_timer[18]), 
            .I3(uart_timer[19]), .O(n1231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__2762.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__2763 (.I0(uart_timer[14]), .I1(uart_timer[15]), .I2(uart_timer[17]), 
            .O(n1232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2763.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2764 (.I0(n1232), .I1(n1231), .I2(uart_timer[20]), .I3(uart_timer[21]), 
            .O(n1233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__2764.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__2765 (.I0(n1230), .I1(uart_timer[13]), .I2(n1231), .I3(n1233), 
            .O(n1234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__2765.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__2766 (.I0(uart_timer[0]), .I1(n1234), .O(n906_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__2766.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2767 (.I0(angle_pool[23]), .I1(angle_pool[24]), .I2(angle_pool[25]), 
            .I3(angle_pool[26]), .O(n1235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2767.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2768 (.I0(angle_pool[19]), .I1(angle_pool[20]), .I2(angle_pool[21]), 
            .I3(angle_pool[22]), .O(n1236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2768.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2769 (.I0(angle_pool[23]), .I1(angle_pool[24]), .I2(angle_pool[25]), 
            .I3(angle_pool[26]), .O(n1237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2769.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2770 (.I0(angle_pool[19]), .I1(angle_pool[20]), .I2(angle_pool[21]), 
            .I3(angle_pool[22]), .O(n1238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2770.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2771 (.I0(n1237), .I1(n1238), .O(n1239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2771.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2772 (.I0(n1236), .I1(n1235), .I2(n1239), .O(n1240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2772.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2773 (.I0(angle_pool[31]), .I1(n1239), .O(n1241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__2773.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2774 (.I0(n1240), .I1(angle_pool[12]), .I2(n1241), .O(n861_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__2774.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2775 (.I0(tx_busy_sig), .I1(rst_n_i), .I2(n1234), .O(n1526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2775.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2776 (.I0(tx_busy_sig), .I1(n1234), .O(n1518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2776.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2777 (.I0(rst_n_i), .I1(spi_data_valid), .O(n1524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2777.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2778 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(n1182), 
            .I2(n1183), .I3(n1211), .O(\Inst_MPU6500_Controller/n6273 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2778.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2779 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1215), 
            .O(\Inst_MPU6500_Controller/n6280 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2779.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2780 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2780.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2781 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(n1223), .I3(n1242), .O(\Inst_MPU6500_Controller/n768 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2781.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__2782 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__2782.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__2783 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n1195), 
            .O(\Inst_MPU6500_Controller/n5110 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2783.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2784 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n1211), 
            .I2(n1214), .O(n1243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2784.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2785 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_cs_n_o), 
            .O(n1244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2785.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2786 (.I0(n1244), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0c */ ;
    defparam LUT__2786.LUTMASK = 16'h0b0c;
    EFX_LUT4 LUT__2787 (.I0(spi_cs_n_o), .I1(n1243), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1245), .O(\Inst_MPU6500_Controller/n730 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2787.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__2788 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1213), .O(n1246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2788.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2789 (.I0(n1183), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1246), .O(n1247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__2789.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__2790 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n1247), .O(ceg_net302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;
    defparam LUT__2790.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__2791 (.I0(n1218), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I2(n1215), .I3(\Inst_MPU6500_Controller/state [2]), .O(n1248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__2791.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__2792 (.I0(n1188), .I1(n1199), .O(n1249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2792.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2793 (.I0(n1249), .I1(n1248), .I2(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n1250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ecf */ ;
    defparam LUT__2793.LUTMASK = 16'h3ecf;
    EFX_LUT4 LUT__2794 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n1251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__2794.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2795 (.I0(n1217), .I1(n1194), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2795.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2796 (.I0(n1251), .I1(n1252), .I2(n1250), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n740 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2796.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__2797 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n1253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2797.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2798 (.I0(n1249), .I1(n1219), .I2(n1253), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n1254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__2798.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__2799 (.I0(n1216), .I1(n1197), .I2(n1254), .I3(n1252), 
            .O(\Inst_MPU6500_Controller/n740 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2799.LUTMASK = 16'hcf0a;
    EFX_LUT4 LUT__2800 (.I0(n1215), .I1(n1219), .O(n1255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2800.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2801 (.I0(\Inst_MPU6500_Controller/delay_cntr [2]), .I1(n1253), 
            .O(n1256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2801.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2802 (.I0(n1255), .I1(n1256), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(\Inst_MPU6500_Controller/n740 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2802.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2803 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n1257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2803.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2804 (.I0(n1199), .I1(n1188), .I2(n1218), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n1258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2804.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2805 (.I0(n1194), .I1(n1217), .I2(n1258), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__2805.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__2806 (.I0(n1255), .I1(n1257), .I2(n1259), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n740 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2806.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2807 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(n1257), 
            .O(n1260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2807.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2808 (.I0(n1219), .I1(n1260), .O(n1261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2808.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2809 (.I0(n1216), .I1(n1220), .I2(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I3(n1261), .O(\Inst_MPU6500_Controller/n740 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2809.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__2810 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(n1261), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .O(n1262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__2810.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__2811 (.I0(n1252), .I1(n1216), .I2(n1262), .O(\Inst_MPU6500_Controller/n740 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2811.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2812 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .I3(n1257), .O(n1263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2812.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2813 (.I0(n1255), .I1(n1263), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .O(\Inst_MPU6500_Controller/n740 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2813.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2814 (.I0(n1219), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n1263), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n1264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40bf */ ;
    defparam LUT__2814.LUTMASK = 16'h40bf;
    EFX_LUT4 LUT__2815 (.I0(n1220), .I1(n1216), .I2(n1264), .O(\Inst_MPU6500_Controller/n740 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2815.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2816 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [7]), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(n1265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2816.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2817 (.I0(n1260), .I1(n1265), .O(n1266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2817.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2818 (.I0(n1249), .I1(n1219), .I2(n1266), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n1267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__2818.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__2819 (.I0(n1194), .I1(n1217), .O(n1268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2819.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2820 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(n1266), .O(n1269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__2820.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2821 (.I0(n1268), .I1(n1269), .I2(n1267), .I3(n1216), 
            .O(\Inst_MPU6500_Controller/n740 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2821.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__2822 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(n1266), 
            .O(n1270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2822.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2823 (.I0(n1255), .I1(n1270), .I2(n1259), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(\Inst_MPU6500_Controller/n740 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2823.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2824 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(n1260), .I3(n1265), .O(n1271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2824.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2825 (.I0(n1216), .I1(n1271), .I2(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I3(n1220), .O(\Inst_MPU6500_Controller/n740 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ca0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2825.LUTMASK = 16'h3ca0;
    EFX_LUT4 LUT__2826 (.I0(n1249), .I1(n1216), .O(n1272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2826.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2827 (.I0(n1219), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(n1271), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), .O(n1273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc0bf */ ;
    defparam LUT__2827.LUTMASK = 16'hc0bf;
    EFX_LUT4 LUT__2828 (.I0(\Inst_MPU6500_Controller/delay_cntr [12]), .I1(n1216), 
            .I2(n1219), .O(n1274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2828.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2829 (.I0(n1252), .I1(n1272), .I2(n1273), .I3(n1274), 
            .O(\Inst_MPU6500_Controller/n740 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2829.LUTMASK = 16'hff0e;
    EFX_LUT4 LUT__2830 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2830.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2831 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(n1257), 
            .I2(n1265), .I3(n1275), .O(n1276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2831.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2832 (.I0(n1255), .I1(n1276), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .O(\Inst_MPU6500_Controller/n740 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2832.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2833 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1276), 
            .O(n1277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2833.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2834 (.I0(n1255), .I1(n1277), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(\Inst_MPU6500_Controller/n740 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2834.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2835 (.I0(n1206), .I1(n1194), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ce */ ;
    defparam LUT__2835.LUTMASK = 16'hf0ce;
    EFX_LUT4 LUT__2836 (.I0(n1218), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(n1277), .O(n1279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2836.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2837 (.I0(n1255), .I1(n1279), .I2(n1278), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(\Inst_MPU6500_Controller/n740 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2837.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2838 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n1280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2838.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2839 (.I0(n1218), .I1(n1276), .I2(n1280), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc0bf */ ;
    defparam LUT__2839.LUTMASK = 16'hc0bf;
    EFX_LUT4 LUT__2840 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n1215), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2840.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2841 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(n1218), 
            .O(n1283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2841.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2842 (.I0(n1281), .I1(n1249), .I2(n1283), .I3(n1195), 
            .O(n1284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf100 */ ;
    defparam LUT__2842.LUTMASK = 16'hf100;
    EFX_LUT4 LUT__2843 (.I0(n1281), .I1(n1252), .I2(n1282), .I3(n1284), 
            .O(\Inst_MPU6500_Controller/n740 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2843.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__2844 (.I0(n1276), .I1(n1280), .O(n1285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2844.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2845 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(n1285), 
            .O(n1286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2845.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2846 (.I0(n1255), .I1(n1286), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(\Inst_MPU6500_Controller/n740 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2846.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2847 (.I0(n1195), .I1(n1249), .O(n1287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2847.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2848 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(n1285), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), .O(n1288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__2848.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__2849 (.I0(\Inst_MPU6500_Controller/delay_cntr [18]), .I1(n1255), 
            .O(n1289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2849.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2850 (.I0(n1288), .I1(n1287), .I2(n1220), .I3(n1289), 
            .O(\Inst_MPU6500_Controller/n740 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2850.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__2851 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(n1285), .O(n1290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2851.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2852 (.I0(n1255), .I1(n1290), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(\Inst_MPU6500_Controller/n740 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2852.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2853 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n1291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2853.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2854 (.I0(n1276), .I1(n1280), .I2(n1291), .O(n1292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2854.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2855 (.I0(n1255), .I1(n1292), .I2(n1220), .I3(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(\Inst_MPU6500_Controller/n740 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2855.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__2856 (.I0(n1219), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(n1292), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), .O(n1293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40bf */ ;
    defparam LUT__2856.LUTMASK = 16'h40bf;
    EFX_LUT4 LUT__2857 (.I0(n1220), .I1(n1216), .I2(n1293), .O(\Inst_MPU6500_Controller/n740 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2857.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2858 (.I0(\Inst_MPU6500_Controller/raw_data[3] [1]), .I1(\Inst_MPU6500_Controller/raw_data[3] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [3]), .I3(\Inst_MPU6500_Controller/raw_data[3] [4]), 
            .O(n1294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2858.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2859 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(n1294), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [6]), .O(\Inst_MPU6500_Controller/n4275 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2859.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2860 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .I2(n1294), .I3(\Inst_MPU6500_Controller/raw_data[3] [7]), .O(\Inst_MPU6500_Controller/n4280 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2860.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__2861 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [7]), .I3(n1294), .O(n1295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2861.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2862 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(n1295), 
            .O(\Inst_MPU6500_Controller/n4285 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2862.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2863 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(n1295), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [1]), .O(\Inst_MPU6500_Controller/n4290 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2863.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2864 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[2] [1]), 
            .I2(n1295), .O(n1296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2864.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2865 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(n1296), 
            .O(\Inst_MPU6500_Controller/n4295 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2865.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2866 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(n1296), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [3]), .O(\Inst_MPU6500_Controller/n4300 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2866.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2867 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .I2(n1296), .I3(\Inst_MPU6500_Controller/raw_data[2] [4]), .O(\Inst_MPU6500_Controller/n4305 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2867.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2868 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [4]), .I3(n1296), .O(n1297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2868.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2869 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n1297), 
            .O(\Inst_MPU6500_Controller/n4310 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2869.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2870 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n1297), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [6]), .O(\Inst_MPU6500_Controller/n4315 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2870.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2871 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(\Inst_MPU6500_Controller/raw_data[2] [6]), 
            .I2(n1297), .I3(\Inst_MPU6500_Controller/raw_data[2] [7]), .O(\Inst_MPU6500_Controller/n4320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2871.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2872 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .O(\Inst_MPU6500_Controller/n4570 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2872.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2873 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .O(\Inst_MPU6500_Controller/n4575 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2873.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2874 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(\Inst_MPU6500_Controller/n4580 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2874.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__2875 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(n1298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2875.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2876 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(n1298), 
            .O(\Inst_MPU6500_Controller/n4585 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2876.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2877 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(n1298), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [5]), .O(\Inst_MPU6500_Controller/n4590 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2877.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2878 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I2(n1298), .I3(\Inst_MPU6500_Controller/raw_data[13] [6]), 
            .O(\Inst_MPU6500_Controller/n4595 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2878.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2879 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [6]), .I3(n1298), 
            .O(n1299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2879.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2880 (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), .I1(n1299), 
            .O(\Inst_MPU6500_Controller/n4600 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2880.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2881 (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), .I1(n1299), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [0]), .O(\Inst_MPU6500_Controller/n4605 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2881.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2882 (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .I2(n1299), .I3(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .O(\Inst_MPU6500_Controller/n4610 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2882.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2883 (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), .I1(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [7]), .I3(n1299), 
            .O(n1300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2883.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2884 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(n1300), 
            .O(\Inst_MPU6500_Controller/n4615 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2884.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2885 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(n1300), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [3]), .O(\Inst_MPU6500_Controller/n4620 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2885.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2886 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(\Inst_MPU6500_Controller/raw_data[12] [3]), 
            .I2(n1300), .O(n1301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2886.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2887 (.I0(\Inst_MPU6500_Controller/raw_data[12] [4]), .I1(n1301), 
            .O(\Inst_MPU6500_Controller/n4625 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2887.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2888 (.I0(\Inst_MPU6500_Controller/raw_data[12] [4]), .I1(n1301), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [5]), .O(\Inst_MPU6500_Controller/n4630 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2888.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2889 (.I0(\Inst_MPU6500_Controller/raw_data[12] [4]), .I1(\Inst_MPU6500_Controller/raw_data[12] [5]), 
            .I2(n1301), .I3(\Inst_MPU6500_Controller/raw_data[12] [6]), 
            .O(\Inst_MPU6500_Controller/n4635 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2889.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2890 (.I0(\Inst_MPU6500_Controller/raw_data[12] [4]), .I1(\Inst_MPU6500_Controller/raw_data[12] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [6]), .O(n1302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2890.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2891 (.I0(n1301), .I1(n1302), .I2(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .O(\Inst_MPU6500_Controller/n4640 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2891.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2892 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(n1184), .O(\Inst_MPU6500_Controller/n6195 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2892.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2893 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n1184), .O(\Inst_MPU6500_Controller/n6209 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(365)
    defparam LUT__2893.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2894 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(n1303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2894.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2895 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[1]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2895.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2896 (.I0(n1303), .I1(n1223), .I2(n1304), .O(\Inst_MPU6500_Controller/n768 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2896.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__2897 (.I0(n1303), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n768 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2897.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2898 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc154 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__2898.LUTMASK = 16'hc154;
    EFX_LUT4 LUT__2899 (.I0(n1303), .I1(mpu_to_spi_data[3]), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2899.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2900 (.I0(n1305), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1182), .O(\Inst_MPU6500_Controller/n768 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2900.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2901 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(n1222), .O(\Inst_MPU6500_Controller/n731 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2901.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2902 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(n1223), .O(n1306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__2902.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2903 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[4]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2903.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2904 (.I0(\Inst_MPU6500_Controller/n731 [1]), .I1(n1306), 
            .I2(n1307), .O(\Inst_MPU6500_Controller/n768 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2904.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__2905 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n1223), .O(\Inst_MPU6500_Controller/n768 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2905.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2906 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[5]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2906.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2907 (.I0(\Inst_MPU6500_Controller/n768 [6]), .I1(n1308), 
            .O(\Inst_MPU6500_Controller/n768 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2907.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2908 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n768 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2908.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2909 (.I0(n1211), .I1(n1212), .I2(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I3(n1214), .O(\Inst_MPU6500_Controller/n735 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0130 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2909.LUTMASK = 16'h0130;
    EFX_LUT4 LUT__2910 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(spi_data_valid), .O(n1309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2910.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2911 (.I0(n1212), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(n1309), .O(\Inst_MPU6500_Controller/n735 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2911.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2912 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1309), 
            .I2(n1212), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), .O(\Inst_MPU6500_Controller/n735 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2912.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__2913 (.I0(n1249), .I1(n1183), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n1310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf03 */ ;
    defparam LUT__2913.LUTMASK = 16'haf03;
    EFX_LUT4 LUT__2914 (.I0(n1224), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n1311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ff0 */ ;
    defparam LUT__2914.LUTMASK = 16'h4ff0;
    EFX_LUT4 LUT__2915 (.I0(n1311), .I1(n1310), .I2(n1216), .O(\Inst_MPU6500_Controller/n763 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2915.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__2916 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1249), .I3(\Inst_MPU6500_Controller/state [3]), .O(n1312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f77 */ ;
    defparam LUT__2916.LUTMASK = 16'h1f77;
    EFX_LUT4 LUT__2917 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n1215), .I3(\Inst_MPU6500_Controller/state [3]), .O(n1313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__2917.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__2918 (.I0(n1313), .I1(n1312), .I2(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n763 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2918.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2919 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1222), .O(n1314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2919.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2920 (.I0(n1192), .I1(n1188), .I2(n1314), .O(n1315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2920.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2921 (.I0(n1206), .I1(n1207), .I2(n1210), .I3(n1315), 
            .O(ceg_net314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__2921.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2922 (.I0(n1224), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n1193), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n763 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2922.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__2923 (.I0(n1208), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1258), .O(n1316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__2923.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2924 (.I0(n1316), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(ceg_net314), .O(ceg_net315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__2924.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__2925 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(n1303), 
            .I2(n1222), .O(\Inst_MPU6500_Controller/n731 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__2925.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2926 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(n1317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2926.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2927 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(n1317), 
            .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2927.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2928 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n1318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2928.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2929 (.I0(\Inst_Spi_Mode_3/bitcounter [3]), .I1(n1318), 
            .O(n1319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2929.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2930 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n1319), .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2930.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2931 (.I0(spi_start), .I1(n1317), .O(n1320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2931.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2932 (.I0(n1319), .I1(n1317), .I2(n1320), .O(ceg_net318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(179)
    defparam LUT__2932.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2933 (.I0(mpu_to_spi_data[0]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2933.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2934 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .O(n1321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2934.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2935 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n1321), .O(n1322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2935.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2936 (.I0(n1322), .I1(n1319), .I2(n1320), .O(ceg_net207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2936.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2937 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2937.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__2938 (.I0(n1321), .I1(n1319), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__2938.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2939 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net69 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__2939.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2940 (.I0(n1317), .I1(n1319), .O(ceg_net209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2940.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2941 (.I0(\Inst_Spi_Mode_3/data_buffer [7]), .I1(\Inst_Spi_Mode_3/data_buffer [5]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2941.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2942 (.I0(\Inst_Spi_Mode_3/data_buffer [6]), .I1(\Inst_Spi_Mode_3/data_buffer [4]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1323), .O(n1324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2942.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2943 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2943.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2944 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1325), .O(n1326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2944.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2945 (.I0(n1326), .I1(n1324), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__2945.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2946 (.I0(\~ceg_net69 ), .I1(n1319), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(347)
    defparam LUT__2946.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2947 (.I0(mpu_to_spi_data[1]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2947.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2948 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1319), .O(n1327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2948.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2949 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1327), .I3(n1320), .O(ceg_net210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2949.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2950 (.I0(mpu_to_spi_data[2]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2950.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2951 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1327), .I3(n1320), .O(ceg_net211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2951.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2952 (.I0(mpu_to_spi_data[3]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2952.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2953 (.I0(n1327), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1320), .O(ceg_net212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2953.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2954 (.I0(mpu_to_spi_data[4]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2954.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2955 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1319), .O(n1328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2955.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2956 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1328), .I3(n1320), .O(ceg_net213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__2956.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__2957 (.I0(mpu_to_spi_data[5]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2957.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2958 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1328), .I3(n1320), .O(ceg_net214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2958.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2959 (.I0(mpu_to_spi_data[6]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2959.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2960 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1328), .I3(n1320), .O(ceg_net215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2960.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2961 (.I0(mpu_to_spi_data[7]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2961.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2962 (.I0(n1328), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1320), .O(ceg_net216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2962.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2963 (.I0(n1317), .I1(\Inst_Spi_Mode_3/bitcounter [0]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2963.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2964 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(n1317), .I3(\Inst_Spi_Mode_3/bitcounter [2]), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2964.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__2965 (.I0(n1317), .I1(\Inst_Spi_Mode_3/bitcounter [3]), 
            .I2(n1318), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2965.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2966 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2966.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__2967 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [2]), .I3(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2967.LUTMASK = 16'he1ff;
    EFX_LUT4 LUT__2968 (.I0(n1322), .I1(\~ceg_net69 ), .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2968.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2969 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .I3(\Inst_pwm_servo_0/counter [4]), 
            .O(n1329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2969.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2970 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n1330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2970.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2971 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .O(n1331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2971.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2972 (.I0(n1329), .I1(\Inst_pwm_servo_0/counter [5]), 
            .I2(n1330), .I3(n1331), .O(n1332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__2972.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2973 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/counter [18]), 
            .O(n1333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2973.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2974 (.I0(\Inst_pwm_servo_0/counter [12]), .I1(n1332), 
            .I2(\Inst_pwm_servo_0/counter [13]), .I3(n1333), .O(n1334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__2974.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__2975 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(n1334), .I3(\Inst_pwm_servo_0/counter [19]), .O(n1335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__2975.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__2976 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2976.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2977 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2977.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2978 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2978.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2979 (.I0(\Inst_pwm_servo_0/counter [0]), .I1(n1335), 
            .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2979.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2980 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [1]), .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2980.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2981 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/counter [4]), 
            .I2(\Inst_pwm_servo_0/pulse_width[4] ), .I3(\Inst_pwm_servo_0/pulse_width [5]), 
            .O(n1336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__2981.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__2982 (.I0(\Inst_pwm_servo_0/counter [3]), .I1(\Inst_pwm_servo_0/pulse_width[3] ), 
            .O(n1337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2982.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2983 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/pulse_width [2]), .O(n1338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__2983.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__2984 (.I0(\Inst_pwm_servo_0/pulse_width[3] ), .I1(\Inst_pwm_servo_0/counter [3]), 
            .I2(\Inst_pwm_servo_0/counter [4]), .I3(\Inst_pwm_servo_0/pulse_width[4] ), 
            .O(n1339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2984.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2985 (.I0(\Inst_pwm_servo_0/pulse_width [6]), .I1(\Inst_pwm_servo_0/counter [6]), 
            .I2(\Inst_pwm_servo_0/pulse_width [5]), .I3(\Inst_pwm_servo_0/counter [5]), 
            .O(n1340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2985.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2986 (.I0(n1338), .I1(n1337), .I2(n1339), .I3(n1340), 
            .O(n1341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__2986.LUTMASK = 16'he000;
    EFX_LUT4 LUT__2987 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/pulse_width [6]), 
            .I2(n1336), .I3(n1341), .O(n1342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__2987.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__2988 (.I0(\Inst_pwm_servo_0/pulse_width [9]), .I1(\Inst_pwm_servo_0/counter [9]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/pulse_width[8] ), 
            .O(n1343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__2988.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__2989 (.I0(\Inst_pwm_servo_0/pulse_width [10]), .I1(\Inst_pwm_servo_0/counter [10]), 
            .I2(\Inst_pwm_servo_0/pulse_width [7]), .I3(\Inst_pwm_servo_0/counter [7]), 
            .O(n1344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2989.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2990 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/counter [7]), .I3(\Inst_pwm_servo_0/pulse_width [7]), 
            .O(n1345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__2990.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__2991 (.I0(\Inst_pwm_servo_0/counter [9]), .I1(\Inst_pwm_servo_0/pulse_width [9]), 
            .I2(n1345), .O(n1346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2991.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2992 (.I0(\Inst_pwm_servo_0/counter [11]), .I1(\Inst_pwm_servo_0/pulse_width [11]), 
            .O(n1347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2992.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2993 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/pulse_width [10]), 
            .I2(n1346), .I3(n1347), .O(n1348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00b2 */ ;
    defparam LUT__2993.LUTMASK = 16'h00b2;
    EFX_LUT4 LUT__2994 (.I0(n1342), .I1(n1344), .I2(n1343), .I3(n1348), 
            .O(n1349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__2994.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__2995 (.I0(\Inst_pwm_servo_0/pulse_width [13]), .I1(\Inst_pwm_servo_0/counter [13]), 
            .O(n1350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2995.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2996 (.I0(\Inst_pwm_servo_0/pulse_width [12]), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/pulse_width [11]), .I3(\Inst_pwm_servo_0/counter [11]), 
            .O(n1351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2996.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2997 (.I0(\Inst_pwm_servo_0/pulse_width[14] ), .I1(\Inst_pwm_servo_0/counter [14]), 
            .I2(n1350), .I3(n1351), .O(n1352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2997.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2998 (.I0(\Inst_pwm_servo_0/counter [13]), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/pulse_width [13]), .I3(\Inst_pwm_servo_0/pulse_width [12]), 
            .O(n1353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2998.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2999 (.I0(\Inst_pwm_servo_0/counter [16]), .I1(\Inst_pwm_servo_0/pulse_width [16]), 
            .I2(\Inst_pwm_servo_0/counter [15]), .I3(\Inst_pwm_servo_0/pulse_width [15]), 
            .O(n1354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2999.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3000 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/pulse_width[14] ), 
            .I2(n1353), .I3(n1354), .O(n1355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__3000.LUTMASK = 16'he800;
    EFX_LUT4 LUT__3001 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .I2(\Inst_pwm_servo_0/counter [19]), .O(n1356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3001.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3002 (.I0(\Inst_pwm_servo_0/counter [16]), .I1(\Inst_pwm_servo_0/pulse_width [16]), 
            .I2(\Inst_pwm_servo_0/pulse_width [15]), .I3(\Inst_pwm_servo_0/counter [15]), 
            .O(n1357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__3002.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__3003 (.I0(n1356), .I1(n1357), .O(n1358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3003.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3004 (.I0(n1349), .I1(n1352), .I2(n1355), .I3(n1358), 
            .O(\Inst_pwm_servo_0/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__3004.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__3005 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3005.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3006 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3006.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3007 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3007.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3008 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3008.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3009 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3009.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3010 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3010.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3011 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3011.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3012 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3012.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3013 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3013.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3014 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3014.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3015 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3015.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3016 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3016.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3017 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [17]), .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3017.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3018 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [18]), .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3018.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3019 (.I0(n1335), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3019.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3020 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(n1334), .I3(\Inst_pwm_servo_1/counter [19]), .O(n1359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__3020.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__3021 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_1/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3021.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3022 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_1/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3022.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3023 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_1/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3023.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3024 (.I0(\Inst_pwm_servo_1/counter [0]), .I1(n1359), 
            .O(\Inst_pwm_servo_1/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3024.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3025 (.I0(n1359), .I1(\Inst_pwm_servo_1/n42 [1]), .O(\Inst_pwm_servo_1/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3025.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3026 (.I0(\Inst_pwm_servo_1/counter [13]), .I1(\Inst_pwm_servo_1/counter [12]), 
            .I2(\Inst_pwm_servo_1/pulse_width [13]), .I3(\Inst_pwm_servo_1/pulse_width [12]), 
            .O(n1360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__3026.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__3027 (.I0(\Inst_pwm_servo_1/counter [16]), .I1(\Inst_pwm_servo_1/pulse_width [16]), 
            .I2(\Inst_pwm_servo_1/counter [15]), .I3(\Inst_pwm_servo_1/pulse_width [15]), 
            .O(n1361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3027.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3028 (.I0(\Inst_pwm_servo_1/counter [14]), .I1(\Inst_pwm_servo_1/pulse_width[14] ), 
            .I2(n1360), .I3(n1361), .O(n1362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__3028.LUTMASK = 16'he800;
    EFX_LUT4 LUT__3029 (.I0(\Inst_pwm_servo_1/counter [2]), .I1(\Inst_pwm_servo_1/counter [1]), 
            .I2(\Inst_pwm_servo_1/pulse_width [2]), .O(n1363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__3029.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__3030 (.I0(\Inst_pwm_servo_1/counter [3]), .I1(\Inst_pwm_servo_1/pulse_width[3] ), 
            .I2(n1363), .O(n1364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__3030.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__3031 (.I0(\Inst_pwm_servo_1/pulse_width [6]), .I1(\Inst_pwm_servo_1/counter [6]), 
            .I2(\Inst_pwm_servo_1/pulse_width [5]), .I3(\Inst_pwm_servo_1/counter [5]), 
            .O(n1365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3031.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3032 (.I0(\Inst_pwm_servo_1/pulse_width[4] ), .I1(\Inst_pwm_servo_1/counter [4]), 
            .I2(n1365), .O(n1366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3032.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3033 (.I0(\Inst_pwm_servo_1/counter [5]), .I1(\Inst_pwm_servo_1/counter [4]), 
            .I2(\Inst_pwm_servo_1/pulse_width[4] ), .I3(\Inst_pwm_servo_1/pulse_width [5]), 
            .O(n1367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__3033.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__3034 (.I0(n1367), .I1(\Inst_pwm_servo_1/pulse_width [6]), 
            .O(n1368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3034.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3035 (.I0(\Inst_pwm_servo_1/pulse_width [10]), .I1(\Inst_pwm_servo_1/counter [10]), 
            .I2(\Inst_pwm_servo_1/pulse_width [9]), .I3(\Inst_pwm_servo_1/counter [9]), 
            .O(n1369)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3035.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3036 (.I0(\Inst_pwm_servo_1/counter [8]), .I1(\Inst_pwm_servo_1/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_1/pulse_width [7]), .I3(\Inst_pwm_servo_1/counter [7]), 
            .O(n1370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3036.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3037 (.I0(n1369), .I1(n1370), .O(n1371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3037.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3038 (.I0(n1366), .I1(n1364), .I2(n1368), .I3(n1371), 
            .O(n1372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__3038.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__3039 (.I0(n1367), .I1(\Inst_pwm_servo_1/pulse_width [6]), 
            .I2(\Inst_pwm_servo_1/counter [6]), .I3(n1370), .O(n1373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3039.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3040 (.I0(\Inst_pwm_servo_1/counter [8]), .I1(\Inst_pwm_servo_1/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_1/counter [7]), .I3(\Inst_pwm_servo_1/pulse_width [7]), 
            .O(n1374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__3040.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__3041 (.I0(\Inst_pwm_servo_1/pulse_width [9]), .I1(\Inst_pwm_servo_1/counter [9]), 
            .I2(n1374), .O(n1375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3041.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3042 (.I0(\Inst_pwm_servo_1/counter [11]), .I1(\Inst_pwm_servo_1/pulse_width [11]), 
            .I2(\Inst_pwm_servo_1/counter [10]), .I3(\Inst_pwm_servo_1/pulse_width [10]), 
            .O(n1376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3042.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3043 (.I0(n1373), .I1(n1375), .I2(n1369), .I3(n1376), 
            .O(n1377)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__3043.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__3044 (.I0(\Inst_pwm_servo_1/pulse_width [13]), .I1(\Inst_pwm_servo_1/counter [13]), 
            .I2(\Inst_pwm_servo_1/pulse_width [12]), .I3(\Inst_pwm_servo_1/counter [12]), 
            .O(n1378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3044.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3045 (.I0(\Inst_pwm_servo_1/counter [14]), .I1(\Inst_pwm_servo_1/pulse_width[14] ), 
            .I2(\Inst_pwm_servo_1/pulse_width [11]), .I3(\Inst_pwm_servo_1/counter [11]), 
            .O(n1379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3045.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3046 (.I0(n1377), .I1(n1372), .I2(n1378), .I3(n1379), 
            .O(n1380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__3046.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__3047 (.I0(\Inst_pwm_servo_1/counter [16]), .I1(\Inst_pwm_servo_1/pulse_width [16]), 
            .I2(\Inst_pwm_servo_1/pulse_width [15]), .I3(\Inst_pwm_servo_1/counter [15]), 
            .O(n1381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__3047.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__3048 (.I0(n1380), .I1(n1362), .I2(n1356), .I3(n1381), 
            .O(\Inst_pwm_servo_1/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__3048.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__3049 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_1/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3049.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3050 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_1/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3050.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3051 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_1/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3051.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3052 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_1/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3052.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3053 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_1/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3053.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3054 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_1/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3054.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3055 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_1/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3055.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3056 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_1/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3056.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3057 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_1/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3057.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3058 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_1/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3058.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3059 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_1/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3059.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3060 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_1/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3060.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3061 (.I0(n1359), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_1/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3061.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3062 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(n1334), .I3(\Inst_pwm_servo_2/counter [19]), .O(n1382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__3062.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__3063 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_2/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3063.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3064 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_2/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3064.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3065 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_2/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3065.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3066 (.I0(\Inst_pwm_servo_2/counter [0]), .I1(n1382), 
            .O(\Inst_pwm_servo_2/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3066.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3067 (.I0(n1382), .I1(\Inst_pwm_servo_2/n42 [1]), .O(\Inst_pwm_servo_2/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3067.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3068 (.I0(\Inst_pwm_servo_2/counter [13]), .I1(\Inst_pwm_servo_2/counter [12]), 
            .I2(\Inst_pwm_servo_2/pulse_width [13]), .I3(\Inst_pwm_servo_2/pulse_width [12]), 
            .O(n1383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__3068.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__3069 (.I0(\Inst_pwm_servo_2/counter [16]), .I1(\Inst_pwm_servo_2/pulse_width [16]), 
            .I2(\Inst_pwm_servo_2/counter [15]), .I3(\Inst_pwm_servo_2/pulse_width [15]), 
            .O(n1384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3069.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3070 (.I0(\Inst_pwm_servo_2/counter [14]), .I1(\Inst_pwm_servo_2/pulse_width[14] ), 
            .I2(n1383), .I3(n1384), .O(n1385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__3070.LUTMASK = 16'he800;
    EFX_LUT4 LUT__3071 (.I0(\Inst_pwm_servo_2/counter [2]), .I1(\Inst_pwm_servo_2/counter [1]), 
            .I2(\Inst_pwm_servo_2/pulse_width [2]), .O(n1386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__3071.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__3072 (.I0(\Inst_pwm_servo_2/counter [3]), .I1(\Inst_pwm_servo_2/pulse_width[3] ), 
            .I2(n1386), .O(n1387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__3072.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__3073 (.I0(\Inst_pwm_servo_2/pulse_width [6]), .I1(\Inst_pwm_servo_2/counter [6]), 
            .I2(\Inst_pwm_servo_2/pulse_width [5]), .I3(\Inst_pwm_servo_2/counter [5]), 
            .O(n1388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3073.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3074 (.I0(\Inst_pwm_servo_2/pulse_width[4] ), .I1(\Inst_pwm_servo_2/counter [4]), 
            .I2(n1388), .O(n1389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3074.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3075 (.I0(\Inst_pwm_servo_2/counter [5]), .I1(\Inst_pwm_servo_2/counter [4]), 
            .I2(\Inst_pwm_servo_2/pulse_width[4] ), .I3(\Inst_pwm_servo_2/pulse_width [5]), 
            .O(n1390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__3075.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__3076 (.I0(n1390), .I1(\Inst_pwm_servo_2/pulse_width [6]), 
            .O(n1391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3076.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3077 (.I0(\Inst_pwm_servo_2/pulse_width [10]), .I1(\Inst_pwm_servo_2/counter [10]), 
            .I2(\Inst_pwm_servo_2/pulse_width [9]), .I3(\Inst_pwm_servo_2/counter [9]), 
            .O(n1392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3077.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3078 (.I0(\Inst_pwm_servo_2/counter [8]), .I1(\Inst_pwm_servo_2/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_2/pulse_width [7]), .I3(\Inst_pwm_servo_2/counter [7]), 
            .O(n1393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3078.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3079 (.I0(n1392), .I1(n1393), .O(n1394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3079.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3080 (.I0(n1389), .I1(n1387), .I2(n1391), .I3(n1394), 
            .O(n1395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__3080.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__3081 (.I0(n1390), .I1(\Inst_pwm_servo_2/pulse_width [6]), 
            .I2(\Inst_pwm_servo_2/counter [6]), .I3(n1393), .O(n1396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3081.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3082 (.I0(\Inst_pwm_servo_2/counter [8]), .I1(\Inst_pwm_servo_2/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_2/counter [7]), .I3(\Inst_pwm_servo_2/pulse_width [7]), 
            .O(n1397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__3082.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__3083 (.I0(\Inst_pwm_servo_2/pulse_width [9]), .I1(\Inst_pwm_servo_2/counter [9]), 
            .I2(n1397), .O(n1398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3083.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3084 (.I0(\Inst_pwm_servo_2/counter [11]), .I1(\Inst_pwm_servo_2/pulse_width [11]), 
            .I2(\Inst_pwm_servo_2/counter [10]), .I3(\Inst_pwm_servo_2/pulse_width [10]), 
            .O(n1399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3084.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3085 (.I0(n1396), .I1(n1398), .I2(n1392), .I3(n1399), 
            .O(n1400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__3085.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__3086 (.I0(\Inst_pwm_servo_2/pulse_width [13]), .I1(\Inst_pwm_servo_2/counter [13]), 
            .I2(\Inst_pwm_servo_2/pulse_width [12]), .I3(\Inst_pwm_servo_2/counter [12]), 
            .O(n1401)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3086.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__3087 (.I0(\Inst_pwm_servo_2/counter [14]), .I1(\Inst_pwm_servo_2/pulse_width[14] ), 
            .I2(\Inst_pwm_servo_2/pulse_width [11]), .I3(\Inst_pwm_servo_2/counter [11]), 
            .O(n1402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3087.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3088 (.I0(n1400), .I1(n1395), .I2(n1401), .I3(n1402), 
            .O(n1403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__3088.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__3089 (.I0(\Inst_pwm_servo_2/counter [16]), .I1(\Inst_pwm_servo_2/pulse_width [16]), 
            .I2(\Inst_pwm_servo_2/pulse_width [15]), .I3(\Inst_pwm_servo_2/counter [15]), 
            .O(n1404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__3089.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__3090 (.I0(n1403), .I1(n1385), .I2(n1356), .I3(n1404), 
            .O(\Inst_pwm_servo_2/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__3090.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__3091 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_2/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3091.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3092 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_2/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3092.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3093 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_2/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3093.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3094 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_2/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3094.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3095 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_2/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3095.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3096 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_2/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3096.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3097 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_2/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3097.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3098 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_2/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3098.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3099 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_2/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3099.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3100 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_2/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3100.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3101 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_2/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3101.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3102 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_2/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3102.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3103 (.I0(n1382), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_2/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__3103.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3104 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(n1405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3104.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3105 (.I0(tx_start_sig), .I1(n1405), .O(\Inst_uart_tx/n333 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(308)
    defparam LUT__3105.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3106 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(n1405), .O(n1406)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3106.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3107 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n1406), .O(\Inst_uart_tx/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__3107.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3108 (.I0(tx_start_sig), .I1(n1405), .O(ceg_net92)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(172)
    defparam LUT__3108.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3109 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/state [0]), 
            .O(n1407)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__3109.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__3110 (.I0(n1407), .I1(\Inst_uart_tx/bitcounter [5]), .I2(tx_start_sig), 
            .I3(n1405), .O(ceg_net319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(172)
    defparam LUT__3110.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__3111 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__3111.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3112 (.I0(n1407), .I1(\Inst_uart_tx/state [1]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(\Inst_uart_tx/n333 ), .O(ceg_net222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__3112.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__3113 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__3113.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3114 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n115 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__3114.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3115 (.I0(n1406), .I1(\Inst_uart_tx/n115 [1]), .O(ceg_net219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    defparam LUT__3115.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3116 (.I0(\Inst_uart_tx/data_buffer [1]), .I1(\Inst_uart_tx/data_buffer [3]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n1408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3116.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3117 (.I0(n1408), .I1(\Inst_uart_tx/data_buffer [4]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .O(n1409)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__3117.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__3118 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [0]), .I3(\Inst_uart_tx/bit_idx [1]), 
            .O(n1410)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05f3 */ ;
    defparam LUT__3118.LUTMASK = 16'h05f3;
    EFX_LUT4 LUT__3119 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(n1410), .O(n1411)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c00 */ ;
    defparam LUT__3119.LUTMASK = 16'h7c00;
    EFX_LUT4 LUT__3120 (.I0(\Inst_uart_tx/data_buffer [2]), .I1(n1409), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(n1411), .O(n1412)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0af3 */ ;
    defparam LUT__3120.LUTMASK = 16'h0af3;
    EFX_LUT4 LUT__3121 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n1413)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__3121.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__3122 (.I0(n1413), .I1(n1412), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n119 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__3122.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3123 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__3123.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__3124 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n1406), .O(\Inst_uart_tx/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__3124.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3125 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n1414)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3125.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3126 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1414), .I2(n1406), 
            .O(\Inst_uart_tx/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__3126.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3127 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1414), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n1406), .O(\Inst_uart_tx/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__3127.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3128 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n1414), .O(n1415)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3128.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3129 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1415), .I2(n1406), 
            .O(\Inst_uart_tx/n129 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__3129.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3130 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1406), .I2(n1415), 
            .O(\Inst_uart_tx/n129 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__3130.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3131 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__3131.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3132 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__3132.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3133 (.I0(\Inst_debounce/count_reg [6]), .I1(\Inst_debounce/count_reg [7]), 
            .I2(\Inst_debounce/count_reg [8]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n1416)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3133.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3134 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n1417)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3134.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3135 (.I0(n1416), .I1(n1417), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n1418)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3135.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3136 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n1419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3136.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3137 (.I0(n1418), .I1(n1419), .O(n1420)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3137.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3138 (.I0(n1420), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(324)
    defparam LUT__3138.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__3139 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n1420), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(324)
    defparam LUT__3139.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__3140 (.I0(n1234), .I1(n872_2[1]), .O(n906[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3140.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3141 (.I0(n1234), .I1(n872[2]), .O(n906[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3141.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3142 (.I0(n1234), .I1(n872[3]), .O(n906[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3142.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3143 (.I0(n1234), .I1(n872[4]), .O(n906[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3143.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3144 (.I0(n1234), .I1(n872[5]), .O(n906[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3144.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3145 (.I0(n1234), .I1(n872[6]), .O(n906[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3145.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3146 (.I0(n1234), .I1(n872[7]), .O(n906[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3146.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3147 (.I0(n1234), .I1(n872[8]), .O(n906[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3147.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3148 (.I0(n1234), .I1(n872[9]), .O(n906[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3148.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3149 (.I0(n1234), .I1(n872[10]), .O(n906[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3149.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3150 (.I0(n1234), .I1(n872[11]), .O(n906[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3150.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3151 (.I0(n1234), .I1(n872[12]), .O(n906[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3151.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3152 (.I0(n1234), .I1(n872[13]), .O(n906[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3152.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3153 (.I0(n1234), .I1(n872[14]), .O(n906[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3153.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3154 (.I0(n1234), .I1(n872[15]), .O(n906[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3154.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3155 (.I0(n1234), .I1(n872[16]), .O(n906[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3155.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3156 (.I0(n1234), .I1(n872[17]), .O(n906[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3156.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3157 (.I0(n1234), .I1(n872[18]), .O(n906[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3157.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3158 (.I0(n1234), .I1(n872[19]), .O(n906[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3158.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3159 (.I0(n1234), .I1(n872[20]), .O(n906[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3159.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3160 (.I0(n1234), .I1(n872[21]), .O(n906[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(749)
    defparam LUT__3160.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3161 (.I0(angle_pool_y[12]), .I1(angle_pool_y[13]), .O(n1643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3161.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3162 (.I0(angle_pool_y[12]), .I1(angle_pool_y[13]), .I2(angle_pool_y[14]), 
            .O(n1648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__3162.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3163 (.I0(angle_pool_y[12]), .I1(angle_pool_y[13]), .I2(angle_pool_y[14]), 
            .I3(angle_pool_y[15]), .O(n1653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__3163.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3164 (.I0(angle_pool_y[12]), .I1(angle_pool_y[13]), .I2(angle_pool_y[14]), 
            .I3(angle_pool_y[15]), .O(n1421)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3164.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3165 (.I0(angle_pool_y[16]), .I1(n1421), .O(n1658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3165.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3166 (.I0(angle_pool_y[16]), .I1(n1421), .I2(angle_pool_y[17]), 
            .O(n841[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(717)
    defparam LUT__3166.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3167 (.I0(angle_pool_y[16]), .I1(angle_pool_y[17]), .I2(n1421), 
            .I3(angle_pool_y[18]), .O(n841[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(717)
    defparam LUT__3167.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3168 (.I0(angle_pool_y[17]), .I1(angle_pool_y[16]), .I2(n1421), 
            .I3(angle_pool_y[18]), .O(n1669)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__3168.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__3169 (.I0(n1240), .I1(angle_pool[13]), .I2(n1241), .O(n861_3[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3169.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3170 (.I0(n1240), .I1(angle_pool[14]), .I2(n1241), .O(n861_4[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3170.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3171 (.I0(n1240), .I1(angle_pool[15]), .I2(n1241), .O(n861_5[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3171.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3172 (.I0(n1240), .I1(angle_pool[16]), .I2(n1241), .O(n861_6[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3172.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3173 (.I0(n1240), .I1(angle_pool[17]), .I2(n1241), .O(n861_7[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3173.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3174 (.I0(n1240), .I1(angle_pool[18]), .I2(n1241), .O(n861_8[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3174.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3175 (.I0(n1239), .I1(angle_pool[31]), .O(n861_9[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(725)
    defparam LUT__3175.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3176 (.I0(angle_pool_x[14]), .I1(angle_pool_x[15]), .O(n1563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3176.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3177 (.I0(angle_pool_x[14]), .I1(angle_pool_x[15]), .I2(angle_pool_x[16]), 
            .O(n1568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__3177.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3178 (.I0(angle_pool_x[14]), .I1(angle_pool_x[15]), .I2(angle_pool_x[16]), 
            .I3(angle_pool_x[17]), .O(n1573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__3178.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3179 (.I0(angle_pool_x[14]), .I1(angle_pool_x[15]), .I2(angle_pool_x[16]), 
            .I3(angle_pool_x[17]), .O(n1422)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3179.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3180 (.I0(angle_pool_x[18]), .I1(n1422), .O(n1578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3180.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3181 (.I0(angle_pool_x[18]), .I1(n1422), .I2(angle_pool_x[19]), 
            .O(n1583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3181.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3182 (.I0(n1422), .I1(angle_pool_x[18]), .I2(angle_pool_x[19]), 
            .O(n1584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3182.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2695 (.I0(gyro_z[4]), .I1(gyro_z[12]), .I2(gyro_z[13]), 
            .I3(gyro_z[14]), .O(n1176)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__2695.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__2696 (.I0(gyro_z[0]), .I1(gyro_z[1]), .I2(gyro_z[2]), 
            .I3(gyro_z[3]), .O(n1177)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2696.LUTMASK = 16'h0001;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), .CI(1'b0), 
            .CO(n1427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(698)
    defparam \sub_77/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n1426), .O(\Inst_pwm_servo_0/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n1425), .O(\Inst_pwm_servo_1/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n1424), .O(\Inst_pwm_servo_2/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(39)
    defparam \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), .CI(1'b0), 
            .CO(n1423)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(693)
    defparam \sub_52/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF_0df493a1_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0df493a1_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_0df493a1_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_0df493a1_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_0df493a1_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0df493a1_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_0df493a1_0
// module not written out since it is a black box. 
//

