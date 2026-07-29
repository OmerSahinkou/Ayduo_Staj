
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
    
    wire [31:0]n404;
    wire [31:0]n507_2;
    wire [31:0]n576;
    wire [31:0]n679_2;
    wire [32:0]n470_2;
    wire [31:0]n302_2;
    wire [32:0]n642_3;
    wire [32:0]n642_4;
    wire [32:0]n642_5;
    wire [32:0]n642_6;
    wire [32:0]n642_7;
    wire [32:0]n642_8;
    wire [32:0]n642_13;
    wire [32:0]n642_14;
    wire [32:0]n642_15;
    wire [32:0]n470_3;
    wire [32:0]n470_4;
    wire [32:0]n470_5;
    wire [32:0]n470_6;
    wire [32:0]n470_7;
    wire [32:0]n470_8;
    wire [32:0]n470_9;
    wire [32:0]n470_10;
    wire [32:0]n470_11;
    wire [32:0]n470_12;
    wire [32:0]n470_13;
    wire [32:0]n470_14;
    wire [32:0]n470_15;
    wire [32:0]n470_16;
    wire [32:0]n470_17;
    wire [32:0]n470_18;
    wire [32:0]n470_19;
    wire [32:0]n470_20;
    wire [32:0]n470_21;
    wire [32:0]n470_22;
    wire [32:0]n470_23;
    wire [32:0]n470_24;
    wire [32:0]n470_25;
    wire [32:0]n470_26;
    wire [32:0]n470_27;
    wire [32:0]n470_28;
    wire [32:0]n470;
    wire [31:0]n679;
    wire [31:0]n302_4;
    wire [31:0]n507_33;
    wire [31:0]n507_32;
    wire [31:0]n507_31;
    wire [31:0]n507_30;
    wire [31:0]n507_29;
    wire [31:0]n507_28;
    wire [31:0]n507_27;
    wire [31:0]n507_26;
    wire [31:0]n507_25;
    wire [31:0]n507_24;
    wire [31:0]n507_23;
    wire [31:0]n507_22;
    wire [31:0]n507_21;
    wire [31:0]n507_20;
    wire [31:0]n507_19;
    wire [31:0]n507_18;
    wire [31:0]n507_17;
    wire [31:0]n507_16;
    wire [31:0]n507_14;
    wire [31:0]n507_13;
    wire [32:0]n642_2;
    wire [31:0]n507_12;
    wire [31:0]n507_11;
    wire [31:0]n507_10;
    wire [31:0]n507_9;
    wire [31:0]n507_8;
    wire [31:0]n507_7;
    wire [31:0]n507_6;
    wire [31:0]n507_5;
    wire [31:0]n507_4;
    wire [31:0]n302_32;
    wire [31:0]n302_30;
    wire [31:0]n302_28;
    wire [31:0]n302_26;
    wire [31:0]n302_22;
    wire [31:0]n302_20;
    wire [31:0]n302_18;
    wire [31:0]n302_16;
    wire [31:0]n302_14;
    wire [31:0]n302_12;
    wire [31:0]n302_10;
    wire [31:0]n302_8;
    wire [31:0]n302_6;
    wire n1587;
    wire [21:0]n973_2;
    wire [31:0]n437_2;
    wire [7:0]n928_2;
    wire n1593;
    wire n1585;
    wire n1591;
    wire [7:0]n888_2;
    wire [31:0]n609_2;
    wire [31:0]n609_3;
    wire [31:0]n609_4;
    wire [31:0]n609_5;
    wire [31:0]n609_6;
    wire [31:0]n609_7;
    wire [31:0]n609_13;
    wire [31:0]n609_14;
    wire [31:0]n609_16;
    wire [31:0]n609_17;
    wire [31:0]n609_18;
    wire [31:0]n609_19;
    wire [31:0]n609_20;
    wire [31:0]n609_21;
    wire [31:0]n609_22;
    wire [31:0]n609_23;
    wire [31:0]n609_24;
    wire [31:0]n609_25;
    wire [31:0]n609_26;
    wire [31:0]n609_27;
    wire [31:0]n609_28;
    wire [31:0]n609_29;
    wire [31:0]n609_30;
    wire [31:0]n609_31;
    wire [31:0]n437_3;
    wire [31:0]n437_4;
    wire [31:0]n437_5;
    wire [31:0]n437_6;
    wire [31:0]n437_7;
    wire [31:0]n437_8;
    wire [31:0]n437_9;
    wire [31:0]n437_10;
    wire [31:0]n437_11;
    wire [31:0]n437;
    wire [21:0]n973;
    wire [7:0]n888;
    
    wire n1770_q;
    wire [31:0]angle_pool;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(239)
    
    wire \add_50/n2 , \add_55/n2 , \add_75/n2 , \add_80/n2 ;
    wire [21:0]n939;
    
    wire \add_269/n2 ;
    wire [21:0]uart_timer;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(242)
    
    wire \sub_52/add_2/n2 , \Inst_pwm_servo_0/add_6/n6 ;
    wire [7:0]angle_raw_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(233)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(175)
    
    wire tx_start_sig;
    wire [31:0]angle_pool_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(240)
    wire [31:0]angle_pool_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(241)
    wire [7:0]angle_raw_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(227)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(68)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[0] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(92)
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(89)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[2] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[8] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[9] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[10] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[11] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[12] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[13] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(183)
    
    wire data_valid_out;
    wire [15:0]gyro_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(188)
    wire [15:0]gyro_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(188)
    wire [15:0]gyro_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(188)
    
    wire n1892;
    wire [15:0]accel_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(187)
    wire [15:0]accel_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(187)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[1] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[3] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    
    wire \add_29/n2 , \sub_77/add_2/n62 , \sub_77/add_2/n60 , \sub_77/add_2/n58 , 
        \sub_77/add_2/n56 , \sub_77/add_2/n54 , \sub_77/add_2/n52 ;
    wire [32:0]n642_9;
    
    wire \sub_77/add_2/n50 ;
    wire [32:0]n642_10;
    
    wire \sub_77/add_2/n48 ;
    wire [32:0]n642_11;
    
    wire \sub_77/add_2/n46 ;
    wire [32:0]n642_12;
    
    wire \sub_77/add_2/n44 , \sub_77/add_2/n42 , \sub_77/add_2/n40 , \sub_77/add_2/n38 ;
    wire [32:0]n642_16;
    
    wire \sub_77/add_2/n36 ;
    wire [32:0]n642_17;
    
    wire \sub_77/add_2/n34 ;
    wire [32:0]n642_18;
    
    wire \sub_77/add_2/n32 ;
    wire [32:0]n642_19;
    
    wire \sub_77/add_2/n30 ;
    wire [32:0]n642_20;
    
    wire \sub_77/add_2/n28 ;
    wire [32:0]n642_21;
    
    wire \sub_77/add_2/n26 ;
    wire [32:0]n642_22;
    
    wire \sub_77/add_2/n24 ;
    wire [32:0]n642_23;
    
    wire \sub_77/add_2/n22 ;
    wire [32:0]n642_24;
    
    wire \sub_77/add_2/n20 ;
    wire [32:0]n642_25;
    
    wire \sub_77/add_2/n18 ;
    wire [32:0]n642_26;
    
    wire \sub_77/add_2/n16 ;
    wire [32:0]n642_27;
    
    wire \sub_77/add_2/n14 ;
    wire [32:0]n642_28;
    
    wire \sub_77/add_2/n12 ;
    wire [32:0]n642_29;
    
    wire \sub_77/add_2/n10 ;
    wire [32:0]n642_30;
    
    wire \sub_77/add_2/n8 ;
    wire [32:0]n642_31;
    
    wire \sub_77/add_2/n6 ;
    wire [32:0]n642_32;
    
    wire \sub_77/add_2/n4 ;
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
        \Inst_pwm_servo_0/add_20/n12 , \Inst_pwm_servo_0/add_20/n10 , \Inst_pwm_servo_0/add_20/n8 , 
        \Inst_pwm_servo_0/add_20/n6 , \Inst_pwm_servo_0/add_20/n4 ;
    wire [14:0]\Inst_pwm_servo_0/n24 ;
    
    wire \Inst_pwm_servo_0/n23 , \Inst_pwm_servo_0/add_6/n28 , \Inst_pwm_servo_0/add_6/n26 , 
        \Inst_pwm_servo_0/add_6/n24 , \Inst_pwm_servo_0/add_6/n22 , \Inst_pwm_servo_0/add_6/n20 , 
        \Inst_pwm_servo_0/add_6/n18 , \Inst_pwm_servo_0/add_6/n16 , \Inst_pwm_servo_0/add_6/n14 , 
        \Inst_pwm_servo_0/add_6/n12 , \Inst_pwm_servo_0/add_6/n10 , \Inst_pwm_servo_0/add_6/n8 , 
        \sub_52/add_2/n62 , \sub_52/add_2/n60 , \sub_52/add_2/n58 , \sub_52/add_2/n56 , 
        \sub_52/add_2/n54 , \sub_52/add_2/n52 , \sub_52/add_2/n50 , \sub_52/add_2/n48 , 
        \sub_52/add_2/n46 , \sub_52/add_2/n44 , \sub_52/add_2/n42 , \sub_52/add_2/n40 , 
        \sub_52/add_2/n38 , \sub_52/add_2/n36 , \sub_52/add_2/n34 , \sub_52/add_2/n32 , 
        \sub_52/add_2/n30 , \sub_52/add_2/n28 , \sub_52/add_2/n26 , \sub_52/add_2/n24 , 
        \sub_52/add_2/n22 , \sub_52/add_2/n20 , \sub_52/add_2/n18 , \sub_52/add_2/n16 , 
        \sub_52/add_2/n14 , \sub_52/add_2/n12 , \sub_52/add_2/n10 , \sub_52/add_2/n8 , 
        \sub_52/add_2/n6 , \sub_52/add_2/n4 , \add_269/n40 , \add_269/n38 , 
        \add_269/n36 , \add_269/n34 , \add_269/n32 , \add_269/n30 , 
        \add_269/n28 , \add_269/n26 , \add_269/n24 , \add_269/n22 , 
        \add_269/n20 , \add_269/n18 , \add_269/n16 , \add_269/n14 , 
        \add_269/n12 , \add_269/n10 , \add_269/n8 , \add_269/n6 , \add_269/n4 , 
        \add_80/n62 , \add_80/n60 , \add_80/n58 , \add_80/n56 ;
    wire [31:0]n302_3;
    
    wire \add_29/n4 , \add_80/n54 , \add_80/n52 , \add_80/n50 , \add_80/n48 , 
        \add_80/n46 ;
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    
    wire \add_80/n44 , \add_80/n42 , \add_80/n40 , \add_80/n38 , \add_80/n36 , 
        \add_80/n34 , \add_80/n32 , \add_80/n30 , \add_80/n28 , \add_80/n26 , 
        \add_80/n24 , \add_80/n22 , \add_80/n20 , \add_80/n18 , \add_80/n16 ;
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(184)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid, n1893, n1894, \add_80/n14 , \add_80/n12 , 
        \add_80/n10 , \add_80/n8 , \add_80/n6 , \add_80/n4 , \add_75/n62 , 
        \add_75/n60 , \add_75/n58 , \add_75/n56 , \add_75/n54 , \add_75/n52 , 
        \add_75/n50 , \add_75/n48 , \add_75/n46 , \add_75/n44 , \add_75/n42 , 
        \add_75/n40 , \add_75/n38 , \add_75/n36 , \add_75/n34 , \add_75/n32 , 
        \add_75/n30 , \add_75/n28 , \add_75/n26 , \add_75/n24 , \add_75/n22 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(21)
    
    wire \Inst_pwm_servo_0/add_20/n2 , \Inst_pwm_servo_1/add_6/n6 , n1621_q, 
        \add_75/n20 ;
    wire [19:0]\Inst_pwm_servo_0/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_pwm_servo_0/pulse_width[3] , \Inst_pwm_servo_0/pulse_width[4] , 
        \Inst_pwm_servo_0/pulse_width[8] , \Inst_pwm_servo_0/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_1/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(21)
    wire [19:0]\Inst_pwm_servo_1/n42 ;
    
    wire \Inst_pwm_servo_2/add_6/n6 , n1619_q, \add_75/n18 ;
    wire [19:0]\Inst_pwm_servo_1/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_pwm_servo_1/pulse_width[3] , \Inst_pwm_servo_1/pulse_width[4] , 
        \Inst_pwm_servo_1/pulse_width[8] , \Inst_pwm_servo_1/pulse_width[14] ;
    wire [19:0]\Inst_pwm_servo_2/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(21)
    wire [19:0]\Inst_pwm_servo_2/n42 ;
    
    wire \Inst_debounce/add_30/n2 , n1895, \add_75/n16 ;
    wire [19:0]\Inst_pwm_servo_2/pulse_width ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_pwm_servo_2/pulse_width[3] , \Inst_pwm_servo_2/pulse_width[4] , 
        \Inst_pwm_servo_2/pulse_width[8] , \Inst_pwm_servo_2/pulse_width[14] , 
        \add_29/n6 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(49)
    
    wire \add_75/n14 ;
    wire [5:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(47)
    
    wire \add_75/n12 , \add_75/n10 , \add_75/n8 , \add_75/n6 , \add_75/n4 , 
        \add_55/n62 , \add_55/n60 , \add_55/n58 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    
    wire \add_55/n56 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(48)
    
    wire tx_busy_sig, \add_55/n54 , n1896, \add_55/n52 , \add_55/n50 , 
        \add_55/n48 , \add_55/n46 , \add_55/n44 , \add_55/n42 , \add_55/n40 , 
        \add_55/n38 , \add_55/n36 , \add_55/n34 , \add_55/n32 , \add_55/n30 ;
    wire [31:0]n507_15;
    
    wire \add_55/n28 , \add_55/n26 , \add_55/n24 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \sub_77/add_2/n2 , \add_55/n22 , \Inst_debounce/sync_1 , switch_out, 
        \Inst_debounce/sync_0 , \add_55/n20 , \add_55/n18 , \add_55/n16 , 
        \add_55/n14 , \add_55/n12 , \add_55/n10 , \add_55/n8 , \add_55/n6 ;
    wire [31:0]n507_3;
    
    wire \add_55/n4 , \add_50/n62 , \add_50/n60 , \add_50/n58 , \add_50/n56 , 
        \add_50/n54 , \add_50/n52 , \add_50/n50 , \add_50/n48 , \add_50/n46 , 
        \add_50/n44 , \add_50/n42 , \add_50/n40 , \add_50/n38 , \add_50/n36 , 
        \add_50/n34 , \add_50/n32 , \add_50/n30 , \add_50/n28 , \add_50/n26 , 
        \add_50/n24 , \add_50/n22 , \add_50/n20 , \add_50/n18 , \add_50/n16 , 
        \add_50/n14 , \add_50/n12 , \add_50/n10 , \add_50/n8 , \add_50/n6 , 
        \add_50/n4 ;
    wire [31:0]n302_33;
    
    wire \add_29/n62 ;
    wire [31:0]n302_31;
    
    wire \add_29/n60 , \add_29/n58 ;
    wire [31:0]n302_29;
    
    wire \add_29/n56 , \add_29/n54 ;
    wire [31:0]n302_27;
    
    wire \add_29/n52 , \add_29/n50 ;
    wire [31:0]n302_25;
    
    wire \add_29/n48 ;
    wire [31:0]n302_24;
    
    wire \add_29/n46 ;
    wire [31:0]n302_23;
    
    wire \add_29/n44 , \add_29/n42 ;
    wire [31:0]n302_21;
    
    wire \add_29/n40 ;
    wire [15:0]\Inst_pwm_servo_2/n6 ;
    
    wire \add_29/n38 ;
    wire [31:0]n302_19;
    
    wire \add_29/n36 , \add_29/n34 ;
    wire [31:0]n302_17;
    
    wire \add_29/n32 , \add_29/n30 ;
    wire [31:0]n302_15;
    
    wire \add_29/n28 , \add_29/n26 ;
    wire [15:0]\Inst_pwm_servo_1/n6 ;
    wire [7:0]angle_raw_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(230)
    wire [31:0]n302_13;
    
    wire \add_29/n24 , \add_29/n22 ;
    wire [31:0]n302_11;
    
    wire \add_29/n20 , \add_29/n18 ;
    wire [31:0]n302_9;
    
    wire \add_29/n16 , \add_29/n14 ;
    wire [31:0]n302_7;
    
    wire \add_29/n12 ;
    wire [15:0]\Inst_pwm_servo_0/n6 ;
    wire [31:0]n302_5;
    
    wire \add_29/n8 , \add_29/n10 , n1897, n1898;
    wire [2:0]\Inst_MPU6500_Controller/n731 ;
    
    wire ceg_net279, \Inst_MPU6500_Controller/n6169 ;
    wire [21:0]\Inst_MPU6500_Controller/n740 ;
    
    wire ceg_net298;
    wire [3:0]\Inst_MPU6500_Controller/n735 ;
    
    wire ceg_net313, \Inst_MPU6500_Controller/n777 ;
    wire [3:0]\Inst_MPU6500_Controller/n763 ;
    
    wire ceg_net300, \Inst_MPU6500_Controller/n6171 , \Inst_MPU6500_Controller/n6245 , 
        \Inst_MPU6500_Controller/n6252 , \Inst_MPU6500_Controller/n6259 , 
        \Inst_MPU6500_Controller/n6266 , \Inst_MPU6500_Controller/n6273 , 
        \Inst_MPU6500_Controller/n6280 ;
    wire [7:0]\Inst_MPU6500_Controller/n768 ;
    
    wire ceg_net301, \~Inst_MPU6500_Controller/n5110 , \Inst_MPU6500_Controller/n730 , 
        ceg_net302, \Inst_MPU6500_Controller/n4275 , \Inst_MPU6500_Controller/n4280 , 
        \Inst_MPU6500_Controller/n4285 , \Inst_MPU6500_Controller/n4290 , 
        \Inst_MPU6500_Controller/n4295 , \Inst_MPU6500_Controller/n4300 , 
        \Inst_MPU6500_Controller/n4305 , \Inst_MPU6500_Controller/n4310 , 
        \Inst_MPU6500_Controller/n4315 , \Inst_MPU6500_Controller/n4320 , 
        \Inst_MPU6500_Controller/n4415 , \Inst_MPU6500_Controller/n4420 , 
        \Inst_MPU6500_Controller/n4425 , \Inst_MPU6500_Controller/n4430 , 
        \Inst_MPU6500_Controller/n4435 , \Inst_MPU6500_Controller/n4440 , 
        \Inst_MPU6500_Controller/n4445 , \Inst_MPU6500_Controller/n4450 , 
        \Inst_MPU6500_Controller/n4455 , \Inst_MPU6500_Controller/n4460 , 
        \Inst_MPU6500_Controller/n4465 , \Inst_MPU6500_Controller/n4470 , 
        \Inst_MPU6500_Controller/n4475 , \Inst_MPU6500_Controller/n4480 , 
        \Inst_MPU6500_Controller/n4495 , \Inst_MPU6500_Controller/n4500 , 
        \Inst_MPU6500_Controller/n4505 , \Inst_MPU6500_Controller/n4510 , 
        \Inst_MPU6500_Controller/n4515 , \Inst_MPU6500_Controller/n4520 , 
        \Inst_MPU6500_Controller/n4525 , \Inst_MPU6500_Controller/n4530 , 
        \Inst_MPU6500_Controller/n4535 , \Inst_MPU6500_Controller/n4540 , 
        \Inst_MPU6500_Controller/n4545 , \Inst_MPU6500_Controller/n4550 , 
        \Inst_MPU6500_Controller/n4555 , \Inst_MPU6500_Controller/n4560 , 
        \Inst_MPU6500_Controller/n4570 , \Inst_MPU6500_Controller/n4575 , 
        \Inst_MPU6500_Controller/n4580 , \Inst_MPU6500_Controller/n4585 , 
        \Inst_MPU6500_Controller/n4590 , \Inst_MPU6500_Controller/n4595 , 
        \Inst_MPU6500_Controller/n4600 , \Inst_MPU6500_Controller/n4605 , 
        \Inst_MPU6500_Controller/n4610 , \Inst_MPU6500_Controller/n4615 , 
        \Inst_MPU6500_Controller/n4620 , \Inst_MPU6500_Controller/n4625 , 
        \Inst_MPU6500_Controller/n4630 , \Inst_MPU6500_Controller/n4635 , 
        \Inst_MPU6500_Controller/n4640 , \Inst_MPU6500_Controller/n6195 , 
        \Inst_MPU6500_Controller/n6209 , ceg_net309, ceg_net314, ceg_net315;
    wire [32:0]\sub_77/n1 ;
    wire [31:0]n609_8;
    wire [31:0]n609_9;
    wire [31:0]n609_10;
    wire [31:0]n609_11;
    wire [31:0]n609_12;
    wire [31:0]n609_15;
    wire [32:0]\sub_52/n1 ;
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
    
    wire \Inst_debounce/n151 ;
    wire [31:0]n609;
    
    wire \Inst_debounce/n149 , \clk_i~O ;
    wire [7:0]n908;
    wire [7:0]n928;
    
    wire n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, 
        n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, 
        n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, 
        n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, 
        n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639, 
        n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, 
        n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, 
        n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, 
        n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, 
        n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679, 
        n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687, 
        n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, 
        n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, 
        n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, 
        n1712, n1713, n1714, n1715, n1716, n1717, n1718, n1719, 
        n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727, 
        n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, 
        n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, 
        n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, 
        n1752, n1753, n1754, n1755, n1756, n1757, n1758, n1759, 
        n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767, 
        n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, 
        n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783, 
        n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, 
        n1792, n1793, n1794, n1795, n1796, n1797, n1798, n1799, 
        n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807, 
        n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, 
        n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823, 
        n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, 
        n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, 
        n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847, 
        n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, 
        n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863, 
        n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, 
        n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879, 
        n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887, 
        n1888, n1889, n1890, n1891, n1772_q, n1739_q, n1743_q, 
        n1740_q, n1744_q;
    
    EFX_FF \gyro_y[4]~FF_frt_6_frt_10  (.D(n1770), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(n1770_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[4]~FF_frt_6_frt_10 .CLK_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF_frt_6_frt_10 .CE_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF_frt_6_frt_10 .SR_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF_frt_6_frt_10 .D_POLARITY = 1'b0;
    defparam \gyro_y[4]~FF_frt_6_frt_10 .SR_SYNC = 1'b1;
    defparam \gyro_y[4]~FF_frt_6_frt_10 .SR_VALUE = 1'b0;
    defparam \gyro_y[4]~FF_frt_6_frt_10 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[0]~FF  (.D(n302_2[0]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[0]~FF  (.D(n973_2[0]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[0]~FF  (.D(n928_2[0]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[0]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[0]~FF  (.D(angle_raw_z[0]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(n1585), .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[0]~FF  (.D(n507_2[0]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[0]~FF  (.D(n679_2[0]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[0]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[0]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[0]~FF  (.D(n888_2[0]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[0]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n731 [0]), 
           .CE(ceg_net279), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n740 [0]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n735 [0]), 
           .CE(ceg_net313), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_start~FF  (.D(\Inst_MPU6500_Controller/n777 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \spi_start~FF .CLK_POLARITY = 1'b1;
    defparam \spi_start~FF .CE_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_POLARITY = 1'b0;
    defparam \spi_start~FF .D_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_SYNC = 1'b0;
    defparam \spi_start~FF .SR_VALUE = 1'b0;
    defparam \spi_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[0]~FF  (.D(\Inst_MPU6500_Controller/n763 [0]), 
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \data_valid_out~FF  (.D(\~Inst_MPU6500_Controller/n5110 ), .CE(rst_n_i), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_valid_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \data_valid_out~FF .CLK_POLARITY = 1'b1;
    defparam \data_valid_out~FF .CE_POLARITY = 1'b1;
    defparam \data_valid_out~FF .SR_POLARITY = 1'b1;
    defparam \data_valid_out~FF .D_POLARITY = 1'b1;
    defparam \data_valid_out~FF .SR_SYNC = 1'b1;
    defparam \data_valid_out~FF .SR_VALUE = 1'b0;
    defparam \data_valid_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [0]), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [0]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [0]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .CE_POLARITY = 1'b1;
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
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n740 [2]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n740 [3]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n740 [4]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n740 [5]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n740 [6]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n740 [7]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n740 [8]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n740 [9]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n740 [10]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n740 [11]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n740 [12]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n740 [13]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n740 [14]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n740 [15]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n740 [16]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n740 [17]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n740 [18]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n740 [19]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n740 [20]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n740 [21]), 
           .CE(ceg_net298), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[6]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [6]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[7]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [7]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[8]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [0]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[9]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [1]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[10]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [2]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[11]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [3]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[12]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [4]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[13]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [5]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[14]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [6]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[15]~FF  (.D(\Inst_MPU6500_Controller/raw_data[0] [7]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[6]~FF  (.D(\Inst_MPU6500_Controller/n4275 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[7]~FF  (.D(\Inst_MPU6500_Controller/n4280 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[8]~FF  (.D(\Inst_MPU6500_Controller/n4285 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[9]~FF  (.D(\Inst_MPU6500_Controller/n4290 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[10]~FF  (.D(\Inst_MPU6500_Controller/n4295 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[11]~FF  (.D(\Inst_MPU6500_Controller/n4300 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[12]~FF  (.D(\Inst_MPU6500_Controller/n4305 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[13]~FF  (.D(\Inst_MPU6500_Controller/n4310 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[14]~FF  (.D(\Inst_MPU6500_Controller/n4315 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[15]~FF  (.D(\Inst_MPU6500_Controller/n4320 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [1]), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .D_POLARITY = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[2]~FF  (.D(\Inst_MPU6500_Controller/n4415 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[3]~FF  (.D(\Inst_MPU6500_Controller/n4420 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[4]~FF  (.D(\Inst_MPU6500_Controller/n4425 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[5]~FF  (.D(\Inst_MPU6500_Controller/n4430 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[6]~FF  (.D(\Inst_MPU6500_Controller/n4435 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[7]~FF  (.D(\Inst_MPU6500_Controller/n4440 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[8]~FF  (.D(\Inst_MPU6500_Controller/n4445 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[9]~FF  (.D(\Inst_MPU6500_Controller/n4450 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[10]~FF  (.D(\Inst_MPU6500_Controller/n4455 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[11]~FF  (.D(\Inst_MPU6500_Controller/n4460 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[12]~FF  (.D(\Inst_MPU6500_Controller/n4465 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[13]~FF  (.D(\Inst_MPU6500_Controller/n4470 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[14]~FF  (.D(\Inst_MPU6500_Controller/n4475 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[15]~FF  (.D(\Inst_MPU6500_Controller/n4480 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [1]), 
           .CE(\~Inst_MPU6500_Controller/n5110 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .D_POLARITY = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[2]~FF  (.D(\Inst_MPU6500_Controller/n4495 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[3]~FF  (.D(\Inst_MPU6500_Controller/n4500 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[4]~FF  (.D(\Inst_MPU6500_Controller/n4505 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[5]~FF  (.D(\Inst_MPU6500_Controller/n4510 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[6]~FF  (.D(\Inst_MPU6500_Controller/n4515 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[7]~FF  (.D(\Inst_MPU6500_Controller/n4520 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[8]~FF  (.D(\Inst_MPU6500_Controller/n4525 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[9]~FF  (.D(\Inst_MPU6500_Controller/n4530 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[10]~FF  (.D(\Inst_MPU6500_Controller/n4535 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[11]~FF  (.D(\Inst_MPU6500_Controller/n4540 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[12]~FF  (.D(\Inst_MPU6500_Controller/n4545 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[13]~FF  (.D(\Inst_MPU6500_Controller/n4550 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[14]~FF  (.D(\Inst_MPU6500_Controller/n4555 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[15]~FF  (.D(\Inst_MPU6500_Controller/n4560 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[1]~FF  (.D(\Inst_MPU6500_Controller/n4570 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[2]~FF  (.D(\Inst_MPU6500_Controller/n4575 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[3]~FF  (.D(\Inst_MPU6500_Controller/n4580 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[4]~FF  (.D(\Inst_MPU6500_Controller/n4585 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[5]~FF  (.D(\Inst_MPU6500_Controller/n4590 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[6]~FF  (.D(\Inst_MPU6500_Controller/n4595 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[7]~FF  (.D(\Inst_MPU6500_Controller/n4600 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[8]~FF  (.D(\Inst_MPU6500_Controller/n4605 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[9]~FF  (.D(\Inst_MPU6500_Controller/n4610 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[10]~FF  (.D(\Inst_MPU6500_Controller/n4615 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[11]~FF  (.D(\Inst_MPU6500_Controller/n4620 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[12]~FF  (.D(\Inst_MPU6500_Controller/n4625 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[13]~FF  (.D(\Inst_MPU6500_Controller/n4630 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[14]~FF  (.D(\Inst_MPU6500_Controller/n4635 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[15]~FF  (.D(\Inst_MPU6500_Controller/n4640 ), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .CE_POLARITY = 1'b1;
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
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6245 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6259 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC_PRIORITY = 1'b1;
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
           .CE(ceg_net300), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
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
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[3]~FF  (.D(\Inst_pwm_servo_0/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[2]~FF  (.D(\Inst_pwm_servo_0/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[0]~FF  (.D(\Inst_pwm_servo_0/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[1]~FF  (.D(\Inst_pwm_servo_0/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_0~FF  (.D(\Inst_pwm_servo_0/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_0)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \pwm_out_0~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_0~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_0~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[5]~FF  (.D(\Inst_pwm_servo_0/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[6]~FF  (.D(\Inst_pwm_servo_0/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[7]~FF  (.D(\Inst_pwm_servo_0/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[8]~FF  (.D(\Inst_pwm_servo_0/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[9]~FF  (.D(\Inst_pwm_servo_0/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[10]~FF  (.D(\Inst_pwm_servo_0/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[11]~FF  (.D(\Inst_pwm_servo_0/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[12]~FF  (.D(\Inst_pwm_servo_0/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[13]~FF  (.D(\Inst_pwm_servo_0/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[14]~FF  (.D(\Inst_pwm_servo_0/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[15]~FF  (.D(\Inst_pwm_servo_0/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[16]~FF  (.D(\Inst_pwm_servo_0/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[17]~FF  (.D(\Inst_pwm_servo_0/n63 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[18]~FF  (.D(\Inst_pwm_servo_0/n63 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[19]~FF  (.D(\Inst_pwm_servo_0/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[2]~FF  (.D(\Inst_pwm_servo_0/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[3]~FF  (.D(\Inst_pwm_servo_0/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[4]~FF  (.D(\Inst_pwm_servo_0/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[5]~FF  (.D(\Inst_pwm_servo_0/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[6]~FF  (.D(\Inst_pwm_servo_0/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[7]~FF  (.D(\Inst_pwm_servo_0/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[8]~FF  (.D(\Inst_pwm_servo_0/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[9]~FF  (.D(\Inst_pwm_servo_0/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[10]~FF  (.D(\Inst_pwm_servo_0/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[11]~FF  (.D(\Inst_pwm_servo_0/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[12]~FF  (.D(\Inst_pwm_servo_0/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[13]~FF  (.D(\Inst_pwm_servo_0/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[14]~FF  (.D(\Inst_pwm_servo_0/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[15]~FF  (.D(\Inst_pwm_servo_0/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/pulse_width[16]~FF  (.D(\Inst_pwm_servo_0/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[4]~FF  (.D(\Inst_pwm_servo_1/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[3]~FF  (.D(\Inst_pwm_servo_1/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[2]~FF  (.D(\Inst_pwm_servo_1/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[0]~FF  (.D(\Inst_pwm_servo_1/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[1]~FF  (.D(\Inst_pwm_servo_1/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_1~FF  (.D(\Inst_pwm_servo_1/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \pwm_out_1~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_1~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_1~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[5]~FF  (.D(\Inst_pwm_servo_1/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[6]~FF  (.D(\Inst_pwm_servo_1/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[7]~FF  (.D(\Inst_pwm_servo_1/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[8]~FF  (.D(\Inst_pwm_servo_1/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[9]~FF  (.D(\Inst_pwm_servo_1/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[10]~FF  (.D(\Inst_pwm_servo_1/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[11]~FF  (.D(\Inst_pwm_servo_1/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[12]~FF  (.D(\Inst_pwm_servo_1/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[13]~FF  (.D(\Inst_pwm_servo_1/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[14]~FF  (.D(\Inst_pwm_servo_1/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[15]~FF  (.D(\Inst_pwm_servo_1/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[16]~FF  (.D(\Inst_pwm_servo_1/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/counter[19]~FF  (.D(\Inst_pwm_servo_1/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[2]~FF  (.D(\Inst_pwm_servo_1/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[3]~FF  (.D(\Inst_pwm_servo_1/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[4]~FF  (.D(\Inst_pwm_servo_1/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[5]~FF  (.D(\Inst_pwm_servo_1/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[6]~FF  (.D(\Inst_pwm_servo_1/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[7]~FF  (.D(\Inst_pwm_servo_1/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[8]~FF  (.D(\Inst_pwm_servo_1/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[9]~FF  (.D(\Inst_pwm_servo_1/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[10]~FF  (.D(\Inst_pwm_servo_1/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[11]~FF  (.D(\Inst_pwm_servo_1/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[12]~FF  (.D(\Inst_pwm_servo_1/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[13]~FF  (.D(\Inst_pwm_servo_1/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[14]~FF  (.D(\Inst_pwm_servo_1/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[15]~FF  (.D(\Inst_pwm_servo_1/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_1/pulse_width[16]~FF  (.D(\Inst_pwm_servo_1/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_1/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_1/pulse_width[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[4]~FF  (.D(\Inst_pwm_servo_2/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[3]~FF  (.D(\Inst_pwm_servo_2/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[2]~FF  (.D(\Inst_pwm_servo_2/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[0]~FF  (.D(\Inst_pwm_servo_2/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[1]~FF  (.D(\Inst_pwm_servo_2/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_2~FF  (.D(\Inst_pwm_servo_2/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \pwm_out_2~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_2~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_2~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[5]~FF  (.D(\Inst_pwm_servo_2/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[6]~FF  (.D(\Inst_pwm_servo_2/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[7]~FF  (.D(\Inst_pwm_servo_2/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[8]~FF  (.D(\Inst_pwm_servo_2/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[9]~FF  (.D(\Inst_pwm_servo_2/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[10]~FF  (.D(\Inst_pwm_servo_2/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[11]~FF  (.D(\Inst_pwm_servo_2/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[12]~FF  (.D(\Inst_pwm_servo_2/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[13]~FF  (.D(\Inst_pwm_servo_2/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[14]~FF  (.D(\Inst_pwm_servo_2/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[15]~FF  (.D(\Inst_pwm_servo_2/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[16]~FF  (.D(\Inst_pwm_servo_2/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/counter[19]~FF  (.D(\Inst_pwm_servo_2/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[2]~FF  (.D(\Inst_pwm_servo_2/n6 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[3]~FF  (.D(\Inst_pwm_servo_2/n6 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[4]~FF  (.D(\Inst_pwm_servo_2/n24 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[5]~FF  (.D(\Inst_pwm_servo_2/n24 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[6]~FF  (.D(\Inst_pwm_servo_2/n24 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[7]~FF  (.D(\Inst_pwm_servo_2/n24 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[8]~FF  (.D(\Inst_pwm_servo_2/n24 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[9]~FF  (.D(\Inst_pwm_servo_2/n24 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[10]~FF  (.D(\Inst_pwm_servo_2/n24 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[11]~FF  (.D(\Inst_pwm_servo_2/n24 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[12]~FF  (.D(\Inst_pwm_servo_2/n24 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[13]~FF  (.D(\Inst_pwm_servo_2/n24 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[14]~FF  (.D(\Inst_pwm_servo_2/n24 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .D_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[15]~FF  (.D(\Inst_pwm_servo_2/n24 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_2/pulse_width[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_2/pulse_width[16]~FF  (.D(\Inst_pwm_servo_2/n23 ), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_2/pulse_width [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(53)
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
    EFX_FF \angle_pool[1]~FF  (.D(n302_3[1]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[1]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[2]~FF  (.D(n302_4[2]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[2]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[3]~FF  (.D(n302_5[3]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[3]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[4]~FF  (.D(n302_6[4]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[4]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[5]~FF  (.D(n302_7[5]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[5]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[6]~FF  (.D(n302_8[6]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[6]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[7]~FF  (.D(n302_9[7]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[7]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[8]~FF  (.D(n302_10[8]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[8]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[8]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[8]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[9]~FF  (.D(n302_11[9]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[9]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[9]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[9]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[10]~FF  (.D(n302_12[10]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[10]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[10]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[10]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[11]~FF  (.D(n302_13[11]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[11]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[11]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[11]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[12]~FF  (.D(n302_14[12]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[12]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[12]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[12]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[13]~FF  (.D(n302_15[13]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[13]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[13]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[13]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[14]~FF  (.D(n302_16[14]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[14]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[14]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[14]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[15]~FF  (.D(n302_17[15]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[15]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[15]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[15]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[16]~FF  (.D(n302_18[16]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[16]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[16]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[16]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[17]~FF  (.D(n302_19[17]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[17]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[17]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[17]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[18]~FF  (.D(n302_20[18]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[18]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[18]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[18]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[19]~FF  (.D(n302_21[19]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[19]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[19]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[19]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[20]~FF  (.D(n302_22[20]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[20]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[20]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[20]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[21]~FF  (.D(n302_23[21]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[21]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[21]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[21]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[22]~FF  (.D(n302_24[22]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[22]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[22]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[22]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[23]~FF  (.D(n302_25[23]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[23]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[23]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[23]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[24]~FF  (.D(n302_26[24]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[24]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[24]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[24]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[25]~FF  (.D(n302_27[25]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[25]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[25]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[25]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[26]~FF  (.D(n302_28[26]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[26]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[26]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[26]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[27]~FF  (.D(n302_29[27]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[27]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[27]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[27]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[28]~FF  (.D(n302_30[28]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[28]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[28]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[28]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[29]~FF  (.D(n302_31[29]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[29]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[29]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[29]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[30]~FF  (.D(n302_32[30]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[30]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[30]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[30]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool[31]~FF  (.D(n302_33[31]), .CE(n1587), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool[31]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool[31]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool[31]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[1]~FF  (.D(n507_3[1]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[1]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[2]~FF  (.D(n507_4[2]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[2]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[3]~FF  (.D(n507_5[3]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[3]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[4]~FF  (.D(n507_6[4]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[4]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[5]~FF  (.D(n507_7[5]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[5]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[6]~FF  (.D(n507_8[6]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[6]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[7]~FF  (.D(n507_9[7]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[7]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[8]~FF  (.D(n507_10[8]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[8]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[8]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[9]~FF  (.D(n507_11[9]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[9]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[9]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[10]~FF  (.D(n507_12[10]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[10]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[10]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[11]~FF  (.D(n507_13[11]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[11]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[11]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[12]~FF  (.D(n507_14[12]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[12]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[12]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[13]~FF  (.D(n507_15[13]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[13]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[13]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[14]~FF  (.D(n507_16[14]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[14]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[14]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[15]~FF  (.D(n507_17[15]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[15]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[15]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[16]~FF  (.D(n507_18[16]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[16]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[16]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[16]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[17]~FF  (.D(n507_19[17]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[17]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[17]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[17]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[18]~FF  (.D(n507_20[18]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[18]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[18]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[18]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[19]~FF  (.D(n507_21[19]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[19]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[19]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[19]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[20]~FF  (.D(n507_22[20]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[20]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[20]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[20]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[20]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[20]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[20]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[21]~FF  (.D(n507_23[21]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[21]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[21]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[21]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[21]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[21]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[21]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[22]~FF  (.D(n507_24[22]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[22]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[22]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[22]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[22]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[22]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[22]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[23]~FF  (.D(n507_25[23]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[23]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[23]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[23]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[23]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[23]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[23]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[24]~FF  (.D(n507_26[24]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[24]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[24]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[24]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[24]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[24]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[24]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[25]~FF  (.D(n507_27[25]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[25]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[25]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[25]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[25]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[25]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[25]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[26]~FF  (.D(n507_28[26]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[26]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[26]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[26]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[26]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[26]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[26]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[27]~FF  (.D(n507_29[27]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[27]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[27]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[27]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[27]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[27]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[27]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[28]~FF  (.D(n507_30[28]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[28]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[28]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[28]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[28]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[28]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[28]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[29]~FF  (.D(n507_31[29]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[29]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[29]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[29]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[29]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[29]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[29]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[30]~FF  (.D(n507_32[30]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[30]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[30]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[30]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[30]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[30]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[30]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_x[31]~FF  (.D(n507_33[31]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_x[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_x[31]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_x[31]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_x[31]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_x[31]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_x[31]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_x[31]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_x[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[1]~FF  (.D(n679[1]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[1]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[1]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[2]~FF  (.D(n679[2]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[2]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[2]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[3]~FF  (.D(n679[3]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[3]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[3]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[4]~FF  (.D(n679[4]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[4]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[4]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[5]~FF  (.D(n679[5]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[5]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[5]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[6]~FF  (.D(n679[6]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[6]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[6]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[7]~FF  (.D(n679[7]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[7]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[8]~FF  (.D(n679[8]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[8]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[8]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[9]~FF  (.D(n679[9]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[9]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[9]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[10]~FF  (.D(n679[10]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[10]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[10]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[11]~FF  (.D(n679[11]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[11]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[11]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[12]~FF  (.D(n679[12]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[12]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[12]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[13]~FF  (.D(n679[13]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[13]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[13]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[14]~FF  (.D(n679[14]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[14]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[14]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[15]~FF  (.D(n679[15]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[15]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[15]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[16]~FF  (.D(n679[16]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[16]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[16]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[16]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[17]~FF  (.D(n679[17]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[17]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[17]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[17]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[18]~FF  (.D(n679[18]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[18]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[18]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[18]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[19]~FF  (.D(n679[19]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[19]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[19]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[19]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[19]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[19]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[19]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[20]~FF  (.D(n679[20]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[20]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[20]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[20]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[20]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[20]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[20]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[21]~FF  (.D(n679[21]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[21]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[21]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[21]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[21]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[21]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[21]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[22]~FF  (.D(n679[22]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[22]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[22]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[22]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[22]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[22]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[22]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[23]~FF  (.D(n679[23]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[23]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[23]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[23]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[23]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[23]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[23]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[24]~FF  (.D(n679[24]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[24]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[24]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[24]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[24]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[24]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[24]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[25]~FF  (.D(n679[25]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[25]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[25]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[25]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[25]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[25]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[25]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[26]~FF  (.D(n679[26]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[26]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[26]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[26]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[26]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[26]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[26]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[27]~FF  (.D(n679[27]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[27]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[27]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[27]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[27]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[27]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[27]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[28]~FF  (.D(n679[28]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[28]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[28]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[28]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[28]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[28]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[28]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[29]~FF  (.D(n679[29]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[29]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[29]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[29]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[29]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[29]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[29]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[30]~FF  (.D(n679[30]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[30]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[30]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[30]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[30]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[30]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[30]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_pool_y[31]~FF  (.D(n679[31]), .CE(n1591), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(angle_pool_y[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_pool_y[31]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_pool_y[31]~FF .CE_POLARITY = 1'b1;
    defparam \angle_pool_y[31]~FF .SR_POLARITY = 1'b1;
    defparam \angle_pool_y[31]~FF .D_POLARITY = 1'b1;
    defparam \angle_pool_y[31]~FF .SR_SYNC = 1'b1;
    defparam \angle_pool_y[31]~FF .SR_VALUE = 1'b0;
    defparam \angle_pool_y[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[1]~FF  (.D(n973[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[2]~FF  (.D(n973[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[3]~FF  (.D(n973[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[3]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[4]~FF  (.D(n973[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[4]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[5]~FF  (.D(n973[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[5]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[6]~FF  (.D(n973[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[6]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[7]~FF  (.D(n973[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[7]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[8]~FF  (.D(n973[8]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[8]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[9]~FF  (.D(n973[9]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[9]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[9]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[9]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[10]~FF  (.D(n973[10]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[10]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[10]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[10]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[11]~FF  (.D(n973[11]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[11]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[11]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[11]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[11]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[12]~FF  (.D(n973[12]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[12]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[12]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[12]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[12]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[13]~FF  (.D(n973[13]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[13]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[13]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[13]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[13]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[14]~FF  (.D(n973[14]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[14]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[14]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[14]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[14]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[15]~FF  (.D(n973[15]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[15]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[15]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[15]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[15]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[16]~FF  (.D(n973[16]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[16]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[16]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[16]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[16]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[17]~FF  (.D(n973[17]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[17]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[17]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[17]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[17]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[18]~FF  (.D(n973[18]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[18]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[18]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[18]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[18]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[19]~FF  (.D(n973[19]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[19]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[19]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[19]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[19]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[20]~FF  (.D(n973[20]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[20]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[20]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[20]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[20]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_timer[21]~FF  (.D(n973[21]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_timer[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \uart_timer[21]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .CE_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .SR_POLARITY = 1'b0;
    defparam \uart_timer[21]~FF .D_POLARITY = 1'b1;
    defparam \uart_timer[21]~FF .SR_SYNC = 1'b0;
    defparam \uart_timer[21]~FF .SR_VALUE = 1'b0;
    defparam \uart_timer[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[0]~FF  (.D(n908[0]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[0]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[0]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[0]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[0]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[1]~FF  (.D(n908[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[1]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[2]~FF  (.D(n908[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[2]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[3]~FF  (.D(n908[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[3]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[4]~FF  (.D(n908[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[4]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[5]~FF  (.D(n908[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[5]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[6]~FF  (.D(n908[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[6]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_y[7]~FF  (.D(n908[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_y[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_y[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_y[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_y[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_raw_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[1]~FF  (.D(n928[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[1]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[2]~FF  (.D(n928[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[2]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[3]~FF  (.D(n928[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[3]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[4]~FF  (.D(n928[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[4]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[5]~FF  (.D(n928[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[5]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[6]~FF  (.D(n928[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[6]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_z[7]~FF  (.D(n928[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_z[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_z[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_z[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_z[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_z[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_raw_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[1]~FF  (.D(angle_raw_z[1]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[2]~FF  (.D(angle_raw_z[2]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[3]~FF  (.D(angle_raw_z[3]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[4]~FF  (.D(angle_raw_z[4]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[5]~FF  (.D(angle_raw_z[5]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[6]~FF  (.D(angle_raw_z[6]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[7]~FF  (.D(angle_raw_z[7]), .CE(n1593), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \tx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[1]~FF  (.D(n888[1]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[1]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[1]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[1]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[1]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[2]~FF  (.D(n888[2]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[2]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[2]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[2]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[2]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[3]~FF  (.D(n888[3]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[3]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[3]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[3]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[3]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[4]~FF  (.D(n888[4]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[4]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[4]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[4]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[4]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[5]~FF  (.D(n888[5]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[5]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[5]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[5]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[5]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[6]~FF  (.D(n888[6]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[6]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[6]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[6]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[6]~FF .SR_VALUE = 1'b1;
    defparam \angle_raw_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \angle_raw_x[7]~FF  (.D(n888[7]), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(angle_raw_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(756)
    defparam \angle_raw_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \angle_raw_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \angle_raw_x[7]~FF .SR_POLARITY = 1'b0;
    defparam \angle_raw_x[7]~FF .D_POLARITY = 1'b1;
    defparam \angle_raw_x[7]~FF .SR_SYNC = 1'b0;
    defparam \angle_raw_x[7]~FF .SR_VALUE = 1'b0;
    defparam \angle_raw_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_50/i1  (.I0(angle_pool_x[0]), .I1(gyro_x[0]), .CI(1'b0), 
            .O(n404[0]), .CO(\add_50/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i1 .I0_POLARITY = 1'b1;
    defparam \add_50/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i1  (.I0(n470_2[0]), .I1(accel_x[6]), .CI(1'b0), .O(n507_2[0]), 
            .CO(\add_55/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i1 .I0_POLARITY = 1'b1;
    defparam \add_55/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i1  (.I0(angle_pool_y[0]), .I1(gyro_y[0]), .CI(1'b0), 
            .O(n576[0]), .CO(\add_75/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i1 .I0_POLARITY = 1'b1;
    defparam \add_75/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i1  (.I0(n642_2[0]), .I1(accel_y[6]), .CI(1'b0), .O(n679_2[0]), 
            .CO(\add_80/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i1 .I0_POLARITY = 1'b1;
    defparam \add_80/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i1  (.I0(uart_timer[1]), .I1(uart_timer[0]), .CI(1'b0), 
            .O(n939[1]), .CO(\add_269/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i1 .I0_POLARITY = 1'b1;
    defparam \add_269/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i1  (.I0(n437_2[0]), .I1(n437[6]), .CI(n1892), 
            .O(n470_2[0]), .CO(\sub_52/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_pwm_servo_0/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_0/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i1  (.I0(angle_pool[0]), .I1(gyro_z[0]), .CI(1'b0), 
            .O(n302_2[0]), .CO(\add_29/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i1 .I0_POLARITY = 1'b1;
    defparam \add_29/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i31  (.I0(n609_2[30]), .I1(\sub_77/n1 [25]), .CI(\sub_77/add_2/n60 ), 
            .O(n642_3[30]), .CO(n1893)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i30  (.I0(n609_3[29]), .I1(\sub_77/n1 [25]), .CI(\sub_77/add_2/n58 ), 
            .O(n642_4[29]), .CO(\sub_77/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i29  (.I0(n609_4[28]), .I1(\sub_77/n1 [25]), .CI(\sub_77/add_2/n56 ), 
            .O(n642_5[28]), .CO(\sub_77/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i28  (.I0(n609_5[27]), .I1(\sub_77/n1 [25]), .CI(\sub_77/add_2/n54 ), 
            .O(n642_6[27]), .CO(\sub_77/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i27  (.I0(n609_6[26]), .I1(\sub_77/n1 [25]), .CI(\sub_77/add_2/n52 ), 
            .O(n642_7[26]), .CO(\sub_77/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i26  (.I0(n609_7[25]), .I1(\sub_77/n1 [25]), .CI(\sub_77/add_2/n50 ), 
            .O(n642_8[25]), .CO(\sub_77/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i25  (.I0(n609_8[24]), .I1(n609_2[30]), .CI(\sub_77/add_2/n48 ), 
            .O(n642_9[24]), .CO(\sub_77/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i25 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i24  (.I0(n609_9[23]), .I1(n609_3[29]), .CI(\sub_77/add_2/n46 ), 
            .O(n642_10[23]), .CO(\sub_77/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i24 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i23  (.I0(n609_10[22]), .I1(n609_4[28]), .CI(\sub_77/add_2/n44 ), 
            .O(n642_11[22]), .CO(\sub_77/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i23 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i22  (.I0(n609_11[21]), .I1(n609_5[27]), .CI(\sub_77/add_2/n42 ), 
            .O(n642_12[21]), .CO(\sub_77/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i22 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i21  (.I0(n609_12[20]), .I1(n609_6[26]), .CI(\sub_77/add_2/n40 ), 
            .O(n642_13[20]), .CO(\sub_77/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i21 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i20  (.I0(n609_13[19]), .I1(n609_7[25]), .CI(\sub_77/add_2/n38 ), 
            .O(n642_14[19]), .CO(\sub_77/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i20 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i19  (.I0(n609_14[18]), .I1(n609_8[24]), .CI(\sub_77/add_2/n36 ), 
            .O(n642_15[18]), .CO(\sub_77/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i18  (.I0(n609_15[17]), .I1(n609_9[23]), .CI(\sub_77/add_2/n34 ), 
            .O(n642_16[17]), .CO(\sub_77/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i17  (.I0(n609_16[16]), .I1(n609_10[22]), .CI(\sub_77/add_2/n32 ), 
            .O(n642_17[16]), .CO(\sub_77/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i16  (.I0(n609_17[15]), .I1(n609_11[21]), .CI(\sub_77/add_2/n30 ), 
            .O(n642_18[15]), .CO(\sub_77/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i15  (.I0(n609_18[14]), .I1(n609_12[20]), .CI(\sub_77/add_2/n28 ), 
            .O(n642_19[14]), .CO(\sub_77/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i14  (.I0(n609_19[13]), .I1(n609_13[19]), .CI(\sub_77/add_2/n26 ), 
            .O(n642_20[13]), .CO(\sub_77/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i13  (.I0(n609_20[12]), .I1(n609_14[18]), .CI(\sub_77/add_2/n24 ), 
            .O(n642_21[12]), .CO(\sub_77/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i12  (.I0(n609_21[11]), .I1(n609_15[17]), .CI(\sub_77/add_2/n22 ), 
            .O(n642_22[11]), .CO(\sub_77/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i11  (.I0(n609_22[10]), .I1(n609_16[16]), .CI(\sub_77/add_2/n20 ), 
            .O(n642_23[10]), .CO(\sub_77/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i10  (.I0(n609_23[9]), .I1(n609_17[15]), .CI(\sub_77/add_2/n18 ), 
            .O(n642_24[9]), .CO(\sub_77/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i9  (.I0(n609_24[8]), .I1(n609_18[14]), .CI(\sub_77/add_2/n16 ), 
            .O(n642_25[8]), .CO(\sub_77/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i8  (.I0(n609_25[7]), .I1(n609_19[13]), .CI(\sub_77/add_2/n14 ), 
            .O(n642_26[7]), .CO(\sub_77/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i7  (.I0(n609_26[6]), .I1(n609_20[12]), .CI(\sub_77/add_2/n12 ), 
            .O(n642_27[6]), .CO(\sub_77/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i6  (.I0(n609_27[5]), .I1(n609_21[11]), .CI(\sub_77/add_2/n10 ), 
            .O(n642_28[5]), .CO(\sub_77/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i5  (.I0(n609_28[4]), .I1(n609_22[10]), .CI(\sub_77/add_2/n8 ), 
            .O(n642_29[4]), .CO(\sub_77/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i4  (.I0(n609_29[3]), .I1(n609_23[9]), .CI(\sub_77/add_2/n6 ), 
            .O(n642_30[3]), .CO(\sub_77/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i3  (.I0(n609_30[2]), .I1(n609_24[8]), .CI(\sub_77/add_2/n4 ), 
            .O(n642_31[2]), .CO(\sub_77/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_77/add_2/i2  (.I0(n609_31[1]), .I1(n609_25[7]), .CI(\sub_77/add_2/n2 ), 
            .O(n642_32[1]), .CO(\sub_77/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
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
            .CO(n1894)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [14]), 
            .CI(\Inst_pwm_servo_2/add_6/n26 ), .O(\Inst_pwm_servo_2/n24 [13]), 
            .CO(\Inst_pwm_servo_2/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [13]), 
            .CI(\Inst_pwm_servo_2/add_6/n24 ), .O(\Inst_pwm_servo_2/n24 [12]), 
            .CO(\Inst_pwm_servo_2/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [12]), 
            .CI(\Inst_pwm_servo_2/add_6/n22 ), .O(\Inst_pwm_servo_2/n24 [11]), 
            .CO(\Inst_pwm_servo_2/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [11]), 
            .CI(\Inst_pwm_servo_2/add_6/n20 ), .O(\Inst_pwm_servo_2/n24 [10]), 
            .CO(\Inst_pwm_servo_2/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [10]), 
            .CI(\Inst_pwm_servo_2/add_6/n18 ), .O(\Inst_pwm_servo_2/n24 [9]), 
            .CO(\Inst_pwm_servo_2/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [9]), 
            .CI(\Inst_pwm_servo_2/add_6/n16 ), .O(\Inst_pwm_servo_2/n24 [8]), 
            .CO(\Inst_pwm_servo_2/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [8]), 
            .CI(\Inst_pwm_servo_2/add_6/n14 ), .O(\Inst_pwm_servo_2/n24 [7]), 
            .CO(\Inst_pwm_servo_2/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [7]), 
            .CI(\Inst_pwm_servo_2/add_6/n12 ), .O(\Inst_pwm_servo_2/n24 [6]), 
            .CO(\Inst_pwm_servo_2/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [6]), 
            .CI(\Inst_pwm_servo_2/add_6/n10 ), .O(\Inst_pwm_servo_2/n24 [5]), 
            .CO(\Inst_pwm_servo_2/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo_2/n6 [5]), 
            .CI(\Inst_pwm_servo_2/add_6/n8 ), .O(\Inst_pwm_servo_2/n24 [4]), 
            .CO(\Inst_pwm_servo_2/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [4]), 
            .CI(\Inst_pwm_servo_2/add_6/n6 ), .O(\Inst_pwm_servo_2/n24 [3]), 
            .CO(\Inst_pwm_servo_2/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i15  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [15]), 
            .CI(\Inst_pwm_servo_1/add_6/n28 ), .O(\Inst_pwm_servo_1/n24 [14]), 
            .CO(n1895)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [14]), 
            .CI(\Inst_pwm_servo_1/add_6/n26 ), .O(\Inst_pwm_servo_1/n24 [13]), 
            .CO(\Inst_pwm_servo_1/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [13]), 
            .CI(\Inst_pwm_servo_1/add_6/n24 ), .O(\Inst_pwm_servo_1/n24 [12]), 
            .CO(\Inst_pwm_servo_1/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [12]), 
            .CI(\Inst_pwm_servo_1/add_6/n22 ), .O(\Inst_pwm_servo_1/n24 [11]), 
            .CO(\Inst_pwm_servo_1/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [11]), 
            .CI(\Inst_pwm_servo_1/add_6/n20 ), .O(\Inst_pwm_servo_1/n24 [10]), 
            .CO(\Inst_pwm_servo_1/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [10]), 
            .CI(\Inst_pwm_servo_1/add_6/n18 ), .O(\Inst_pwm_servo_1/n24 [9]), 
            .CO(\Inst_pwm_servo_1/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [9]), 
            .CI(\Inst_pwm_servo_1/add_6/n16 ), .O(\Inst_pwm_servo_1/n24 [8]), 
            .CO(\Inst_pwm_servo_1/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [8]), 
            .CI(\Inst_pwm_servo_1/add_6/n14 ), .O(\Inst_pwm_servo_1/n24 [7]), 
            .CO(\Inst_pwm_servo_1/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [7]), 
            .CI(\Inst_pwm_servo_1/add_6/n12 ), .O(\Inst_pwm_servo_1/n24 [6]), 
            .CO(\Inst_pwm_servo_1/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [6]), 
            .CI(\Inst_pwm_servo_1/add_6/n10 ), .O(\Inst_pwm_servo_1/n24 [5]), 
            .CO(\Inst_pwm_servo_1/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo_1/n6 [5]), 
            .CI(\Inst_pwm_servo_1/add_6/n8 ), .O(\Inst_pwm_servo_1/n24 [4]), 
            .CO(\Inst_pwm_servo_1/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [4]), 
            .CI(\Inst_pwm_servo_1/add_6/n6 ), .O(\Inst_pwm_servo_1/n24 [3]), 
            .CO(\Inst_pwm_servo_1/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
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
            .CO(n1896)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i14  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [14]), 
            .CI(\Inst_pwm_servo_0/add_6/n26 ), .O(\Inst_pwm_servo_0/n24 [13]), 
            .CO(\Inst_pwm_servo_0/add_6/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i13  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [13]), 
            .CI(\Inst_pwm_servo_0/add_6/n24 ), .O(\Inst_pwm_servo_0/n24 [12]), 
            .CO(\Inst_pwm_servo_0/add_6/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i12  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [12]), 
            .CI(\Inst_pwm_servo_0/add_6/n22 ), .O(\Inst_pwm_servo_0/n24 [11]), 
            .CO(\Inst_pwm_servo_0/add_6/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i11  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [11]), 
            .CI(\Inst_pwm_servo_0/add_6/n20 ), .O(\Inst_pwm_servo_0/n24 [10]), 
            .CO(\Inst_pwm_servo_0/add_6/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i10  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [10]), 
            .CI(\Inst_pwm_servo_0/add_6/n18 ), .O(\Inst_pwm_servo_0/n24 [9]), 
            .CO(\Inst_pwm_servo_0/add_6/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i9  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [9]), 
            .CI(\Inst_pwm_servo_0/add_6/n16 ), .O(\Inst_pwm_servo_0/n24 [8]), 
            .CO(\Inst_pwm_servo_0/add_6/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i8  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [8]), 
            .CI(\Inst_pwm_servo_0/add_6/n14 ), .O(\Inst_pwm_servo_0/n24 [7]), 
            .CO(\Inst_pwm_servo_0/add_6/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i7  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [7]), 
            .CI(\Inst_pwm_servo_0/add_6/n12 ), .O(\Inst_pwm_servo_0/n24 [6]), 
            .CO(\Inst_pwm_servo_0/add_6/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i6  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [6]), 
            .CI(\Inst_pwm_servo_0/add_6/n10 ), .O(\Inst_pwm_servo_0/n24 [5]), 
            .CO(\Inst_pwm_servo_0/add_6/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i5  (.I0(1'b0), .I1(\Inst_pwm_servo_0/n6 [5]), 
            .CI(\Inst_pwm_servo_0/add_6/n8 ), .O(\Inst_pwm_servo_0/n24 [4]), 
            .CO(\Inst_pwm_servo_0/add_6/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i4  (.I0(1'b1), .I1(\Inst_pwm_servo_0/n6 [4]), 
            .CI(\Inst_pwm_servo_0/add_6/n6 ), .O(\Inst_pwm_servo_0/n24 [3]), 
            .CO(\Inst_pwm_servo_0/add_6/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i31  (.I0(n437_3[30]), .I1(\sub_52/n1 [25]), .CI(\sub_52/add_2/n60 ), 
            .O(n470_3[30]), .CO(n1897)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i30  (.I0(n437_4[29]), .I1(\sub_52/n1 [25]), .CI(\sub_52/add_2/n58 ), 
            .O(n470_4[29]), .CO(\sub_52/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i29  (.I0(n437_5[28]), .I1(\sub_52/n1 [25]), .CI(\sub_52/add_2/n56 ), 
            .O(n470_5[28]), .CO(\sub_52/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i28  (.I0(n437_6[27]), .I1(\sub_52/n1 [25]), .CI(\sub_52/add_2/n54 ), 
            .O(n470_6[27]), .CO(\sub_52/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i27  (.I0(n437_7[26]), .I1(\sub_52/n1 [25]), .CI(\sub_52/add_2/n52 ), 
            .O(n470_7[26]), .CO(\sub_52/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i26  (.I0(n437_8[25]), .I1(\sub_52/n1 [25]), .CI(\sub_52/add_2/n50 ), 
            .O(n470_8[25]), .CO(\sub_52/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i25  (.I0(n437_9[24]), .I1(n437_3[30]), .CI(\sub_52/add_2/n48 ), 
            .O(n470_9[24]), .CO(\sub_52/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i25 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i24  (.I0(n437_10[23]), .I1(n437_4[29]), .CI(\sub_52/add_2/n46 ), 
            .O(n470_10[23]), .CO(\sub_52/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i24 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i23  (.I0(n437_11[22]), .I1(n437_5[28]), .CI(\sub_52/add_2/n44 ), 
            .O(n470_11[22]), .CO(\sub_52/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i23 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i22  (.I0(n437[21]), .I1(n437_6[27]), .CI(\sub_52/add_2/n42 ), 
            .O(n470_12[21]), .CO(\sub_52/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i22 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i21  (.I0(n437[20]), .I1(n437_7[26]), .CI(\sub_52/add_2/n40 ), 
            .O(n470_13[20]), .CO(\sub_52/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i21 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i20  (.I0(n437[19]), .I1(n437_8[25]), .CI(\sub_52/add_2/n38 ), 
            .O(n470_14[19]), .CO(\sub_52/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i20 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i19  (.I0(n437[18]), .I1(n437_9[24]), .CI(\sub_52/add_2/n36 ), 
            .O(n470_15[18]), .CO(\sub_52/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i18  (.I0(n437[17]), .I1(n437_10[23]), .CI(\sub_52/add_2/n34 ), 
            .O(n470_16[17]), .CO(\sub_52/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i17  (.I0(n437[16]), .I1(n437_11[22]), .CI(\sub_52/add_2/n32 ), 
            .O(n470_17[16]), .CO(\sub_52/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i16  (.I0(n437[15]), .I1(n437[21]), .CI(\sub_52/add_2/n30 ), 
            .O(n470_18[15]), .CO(\sub_52/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i15  (.I0(n437[14]), .I1(n437[20]), .CI(\sub_52/add_2/n28 ), 
            .O(n470_19[14]), .CO(\sub_52/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i14  (.I0(n437[13]), .I1(n437[19]), .CI(\sub_52/add_2/n26 ), 
            .O(n470_20[13]), .CO(\sub_52/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i13  (.I0(n437[12]), .I1(n437[18]), .CI(\sub_52/add_2/n24 ), 
            .O(n470_21[12]), .CO(\sub_52/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i12  (.I0(n437[11]), .I1(n437[17]), .CI(\sub_52/add_2/n22 ), 
            .O(n470_22[11]), .CO(\sub_52/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i11  (.I0(n437[10]), .I1(n437[16]), .CI(\sub_52/add_2/n20 ), 
            .O(n470_23[10]), .CO(\sub_52/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i10  (.I0(n437[9]), .I1(n437[15]), .CI(\sub_52/add_2/n18 ), 
            .O(n470_24[9]), .CO(\sub_52/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i9  (.I0(n437[8]), .I1(n437[14]), .CI(\sub_52/add_2/n16 ), 
            .O(n470_25[8]), .CO(\sub_52/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i8  (.I0(n437[7]), .I1(n437[13]), .CI(\sub_52/add_2/n14 ), 
            .O(n470_26[7]), .CO(\sub_52/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i7  (.I0(n437[6]), .I1(n437[12]), .CI(\sub_52/add_2/n12 ), 
            .O(n470_27[6]), .CO(\sub_52/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i6  (.I0(n437[5]), .I1(n437[11]), .CI(\sub_52/add_2/n10 ), 
            .O(n470_28[5]), .CO(\sub_52/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i5  (.I0(n437[4]), .I1(n437[10]), .CI(\sub_52/add_2/n8 ), 
            .O(n470[4]), .CO(\sub_52/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i4  (.I0(n437[3]), .I1(n437[9]), .CI(\sub_52/add_2/n6 ), 
            .O(n470[3]), .CO(\sub_52/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i3  (.I0(n437[2]), .I1(n437[8]), .CI(\sub_52/add_2/n4 ), 
            .O(n470[2]), .CO(\sub_52/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \sub_52/add_2/i2  (.I0(n437[1]), .I1(n437[7]), .CI(\sub_52/add_2/n2 ), 
            .O(n470[1]), .CO(\sub_52/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i2 .I1_POLARITY = 1'b0;
    EFX_ADD \add_269/i21  (.I0(uart_timer[21]), .I1(1'b0), .CI(\add_269/n40 ), 
            .O(n939[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i21 .I0_POLARITY = 1'b1;
    defparam \add_269/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i20  (.I0(uart_timer[20]), .I1(1'b0), .CI(\add_269/n38 ), 
            .O(n939[20]), .CO(\add_269/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i20 .I0_POLARITY = 1'b1;
    defparam \add_269/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i19  (.I0(uart_timer[19]), .I1(1'b0), .CI(\add_269/n36 ), 
            .O(n939[19]), .CO(\add_269/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i19 .I0_POLARITY = 1'b1;
    defparam \add_269/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i18  (.I0(uart_timer[18]), .I1(1'b0), .CI(\add_269/n34 ), 
            .O(n939[18]), .CO(\add_269/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i18 .I0_POLARITY = 1'b1;
    defparam \add_269/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i17  (.I0(uart_timer[17]), .I1(1'b0), .CI(\add_269/n32 ), 
            .O(n939[17]), .CO(\add_269/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i17 .I0_POLARITY = 1'b1;
    defparam \add_269/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i16  (.I0(uart_timer[16]), .I1(1'b0), .CI(\add_269/n30 ), 
            .O(n939[16]), .CO(\add_269/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i16 .I0_POLARITY = 1'b1;
    defparam \add_269/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i15  (.I0(uart_timer[15]), .I1(1'b0), .CI(\add_269/n28 ), 
            .O(n939[15]), .CO(\add_269/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i15 .I0_POLARITY = 1'b1;
    defparam \add_269/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i14  (.I0(uart_timer[14]), .I1(1'b0), .CI(\add_269/n26 ), 
            .O(n939[14]), .CO(\add_269/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i14 .I0_POLARITY = 1'b1;
    defparam \add_269/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i13  (.I0(uart_timer[13]), .I1(1'b0), .CI(\add_269/n24 ), 
            .O(n939[13]), .CO(\add_269/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i13 .I0_POLARITY = 1'b1;
    defparam \add_269/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i12  (.I0(uart_timer[12]), .I1(1'b0), .CI(\add_269/n22 ), 
            .O(n939[12]), .CO(\add_269/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i12 .I0_POLARITY = 1'b1;
    defparam \add_269/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i11  (.I0(uart_timer[11]), .I1(1'b0), .CI(\add_269/n20 ), 
            .O(n939[11]), .CO(\add_269/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i11 .I0_POLARITY = 1'b1;
    defparam \add_269/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i10  (.I0(uart_timer[10]), .I1(1'b0), .CI(\add_269/n18 ), 
            .O(n939[10]), .CO(\add_269/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i10 .I0_POLARITY = 1'b1;
    defparam \add_269/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i9  (.I0(uart_timer[9]), .I1(1'b0), .CI(\add_269/n16 ), 
            .O(n939[9]), .CO(\add_269/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i9 .I0_POLARITY = 1'b1;
    defparam \add_269/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i8  (.I0(uart_timer[8]), .I1(1'b0), .CI(\add_269/n14 ), 
            .O(n939[8]), .CO(\add_269/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i8 .I0_POLARITY = 1'b1;
    defparam \add_269/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i7  (.I0(uart_timer[7]), .I1(1'b0), .CI(\add_269/n12 ), 
            .O(n939[7]), .CO(\add_269/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i7 .I0_POLARITY = 1'b1;
    defparam \add_269/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i6  (.I0(uart_timer[6]), .I1(1'b0), .CI(\add_269/n10 ), 
            .O(n939[6]), .CO(\add_269/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i6 .I0_POLARITY = 1'b1;
    defparam \add_269/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i5  (.I0(uart_timer[5]), .I1(1'b0), .CI(\add_269/n8 ), 
            .O(n939[5]), .CO(\add_269/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i5 .I0_POLARITY = 1'b1;
    defparam \add_269/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i4  (.I0(uart_timer[4]), .I1(1'b0), .CI(\add_269/n6 ), 
            .O(n939[4]), .CO(\add_269/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i4 .I0_POLARITY = 1'b1;
    defparam \add_269/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i3  (.I0(uart_timer[3]), .I1(1'b0), .CI(\add_269/n4 ), 
            .O(n939[3]), .CO(\add_269/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i3 .I0_POLARITY = 1'b1;
    defparam \add_269/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_269/i2  (.I0(uart_timer[2]), .I1(1'b0), .CI(\add_269/n2 ), 
            .O(n939[2]), .CO(\add_269/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(748)
    defparam \add_269/i2 .I0_POLARITY = 1'b1;
    defparam \add_269/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i32  (.I0(\sub_77/add_2/n62 ), .I1(accel_y[15]), .CI(\add_80/n62 ), 
            .O(n679[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b0, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i32 .I0_POLARITY = 1'b0;
    defparam \add_80/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i31  (.I0(n642_3[30]), .I1(accel_y[15]), .CI(\add_80/n60 ), 
            .O(n679[30]), .CO(\add_80/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i31 .I0_POLARITY = 1'b1;
    defparam \add_80/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i30  (.I0(n642_4[29]), .I1(accel_y[15]), .CI(\add_80/n58 ), 
            .O(n679[29]), .CO(\add_80/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i30 .I0_POLARITY = 1'b1;
    defparam \add_80/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i29  (.I0(n642_5[28]), .I1(accel_y[15]), .CI(\add_80/n56 ), 
            .O(n679[28]), .CO(\add_80/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i29 .I0_POLARITY = 1'b1;
    defparam \add_80/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i28  (.I0(n642_6[27]), .I1(accel_y[15]), .CI(\add_80/n54 ), 
            .O(n679[27]), .CO(\add_80/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i28 .I0_POLARITY = 1'b1;
    defparam \add_80/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i2  (.I0(angle_pool[1]), .I1(gyro_z[1]), .CI(\add_29/n2 ), 
            .O(n302_3[1]), .CO(\add_29/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i2 .I0_POLARITY = 1'b1;
    defparam \add_29/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i27  (.I0(n642_7[26]), .I1(accel_y[15]), .CI(\add_80/n52 ), 
            .O(n679[26]), .CO(\add_80/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i27 .I0_POLARITY = 1'b1;
    defparam \add_80/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i26  (.I0(n642_8[25]), .I1(accel_y[15]), .CI(\add_80/n50 ), 
            .O(n679[25]), .CO(\add_80/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i26 .I0_POLARITY = 1'b1;
    defparam \add_80/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i25  (.I0(n642_9[24]), .I1(accel_y[15]), .CI(\add_80/n48 ), 
            .O(n679[24]), .CO(\add_80/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i25 .I0_POLARITY = 1'b1;
    defparam \add_80/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i24  (.I0(n642_10[23]), .I1(accel_y[15]), .CI(\add_80/n46 ), 
            .O(n679[23]), .CO(\add_80/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i24 .I0_POLARITY = 1'b1;
    defparam \add_80/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i23  (.I0(n642_11[22]), .I1(accel_y[15]), .CI(\add_80/n44 ), 
            .O(n679[22]), .CO(\add_80/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i23 .I0_POLARITY = 1'b1;
    defparam \add_80/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i22  (.I0(n642_12[21]), .I1(accel_y[15]), .CI(\add_80/n42 ), 
            .O(n679[21]), .CO(\add_80/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i22 .I0_POLARITY = 1'b1;
    defparam \add_80/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i21  (.I0(n642_13[20]), .I1(accel_y[15]), .CI(\add_80/n40 ), 
            .O(n679[20]), .CO(\add_80/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i21 .I0_POLARITY = 1'b1;
    defparam \add_80/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i20  (.I0(n642_14[19]), .I1(accel_y[15]), .CI(\add_80/n38 ), 
            .O(n679[19]), .CO(\add_80/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i20 .I0_POLARITY = 1'b1;
    defparam \add_80/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i19  (.I0(n642_15[18]), .I1(accel_y[15]), .CI(\add_80/n36 ), 
            .O(n679[18]), .CO(\add_80/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i19 .I0_POLARITY = 1'b1;
    defparam \add_80/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i18  (.I0(n642_16[17]), .I1(accel_y[15]), .CI(\add_80/n34 ), 
            .O(n679[17]), .CO(\add_80/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i18 .I0_POLARITY = 1'b1;
    defparam \add_80/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i17  (.I0(n642_17[16]), .I1(accel_y[15]), .CI(\add_80/n32 ), 
            .O(n679[16]), .CO(\add_80/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i17 .I0_POLARITY = 1'b1;
    defparam \add_80/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i16  (.I0(n642_18[15]), .I1(accel_y[15]), .CI(\add_80/n30 ), 
            .O(n679[15]), .CO(\add_80/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i16 .I0_POLARITY = 1'b1;
    defparam \add_80/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i15  (.I0(n642_19[14]), .I1(accel_y[15]), .CI(\add_80/n28 ), 
            .O(n679[14]), .CO(\add_80/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i15 .I0_POLARITY = 1'b1;
    defparam \add_80/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i14  (.I0(n642_20[13]), .I1(accel_y[15]), .CI(\add_80/n26 ), 
            .O(n679[13]), .CO(\add_80/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i14 .I0_POLARITY = 1'b1;
    defparam \add_80/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i13  (.I0(n642_21[12]), .I1(accel_y[15]), .CI(\add_80/n24 ), 
            .O(n679[12]), .CO(\add_80/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i13 .I0_POLARITY = 1'b1;
    defparam \add_80/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i12  (.I0(n642_22[11]), .I1(accel_y[15]), .CI(\add_80/n22 ), 
            .O(n679[11]), .CO(\add_80/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i12 .I0_POLARITY = 1'b1;
    defparam \add_80/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i11  (.I0(n642_23[10]), .I1(accel_y[15]), .CI(\add_80/n20 ), 
            .O(n679[10]), .CO(\add_80/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i11 .I0_POLARITY = 1'b1;
    defparam \add_80/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i10  (.I0(n642_24[9]), .I1(accel_y[15]), .CI(\add_80/n18 ), 
            .O(n679[9]), .CO(\add_80/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i10 .I0_POLARITY = 1'b1;
    defparam \add_80/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i9  (.I0(n642_25[8]), .I1(accel_y[14]), .CI(\add_80/n16 ), 
            .O(n679[8]), .CO(\add_80/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i9 .I0_POLARITY = 1'b1;
    defparam \add_80/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i8  (.I0(n642_26[7]), .I1(accel_y[13]), .CI(\add_80/n14 ), 
            .O(n679[7]), .CO(\add_80/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i8 .I0_POLARITY = 1'b1;
    defparam \add_80/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i7  (.I0(n642_27[6]), .I1(accel_y[12]), .CI(\add_80/n12 ), 
            .O(n679[6]), .CO(\add_80/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i7 .I0_POLARITY = 1'b1;
    defparam \add_80/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i6  (.I0(n642_28[5]), .I1(accel_y[11]), .CI(\add_80/n10 ), 
            .O(n679[5]), .CO(\add_80/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i6 .I0_POLARITY = 1'b1;
    defparam \add_80/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i5  (.I0(n642_29[4]), .I1(accel_y[10]), .CI(\add_80/n8 ), 
            .O(n679[4]), .CO(\add_80/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i5 .I0_POLARITY = 1'b1;
    defparam \add_80/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i4  (.I0(n642_30[3]), .I1(accel_y[9]), .CI(\add_80/n6 ), 
            .O(n679[3]), .CO(\add_80/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i4 .I0_POLARITY = 1'b1;
    defparam \add_80/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i3  (.I0(n642_31[2]), .I1(accel_y[8]), .CI(\add_80/n4 ), 
            .O(n679[2]), .CO(\add_80/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i3 .I0_POLARITY = 1'b1;
    defparam \add_80/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_80/i2  (.I0(n642_32[1]), .I1(accel_y[7]), .CI(\add_80/n2 ), 
            .O(n679[1]), .CO(\add_80/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \add_80/i2 .I0_POLARITY = 1'b1;
    defparam \add_80/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i32  (.I0(angle_pool_y[31]), .I1(gyro_y[15]), .CI(\add_75/n62 ), 
            .O(n576[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i32 .I0_POLARITY = 1'b1;
    defparam \add_75/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i31  (.I0(angle_pool_y[30]), .I1(gyro_y[15]), .CI(\add_75/n60 ), 
            .O(n576[30]), .CO(\add_75/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i31 .I0_POLARITY = 1'b1;
    defparam \add_75/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i30  (.I0(angle_pool_y[29]), .I1(gyro_y[15]), .CI(\add_75/n58 ), 
            .O(n576[29]), .CO(\add_75/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i30 .I0_POLARITY = 1'b1;
    defparam \add_75/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i29  (.I0(angle_pool_y[28]), .I1(gyro_y[15]), .CI(\add_75/n56 ), 
            .O(n576[28]), .CO(\add_75/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i29 .I0_POLARITY = 1'b1;
    defparam \add_75/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i28  (.I0(angle_pool_y[27]), .I1(gyro_y[15]), .CI(\add_75/n54 ), 
            .O(n576[27]), .CO(\add_75/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i28 .I0_POLARITY = 1'b1;
    defparam \add_75/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i27  (.I0(angle_pool_y[26]), .I1(gyro_y[15]), .CI(\add_75/n52 ), 
            .O(n576[26]), .CO(\add_75/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i27 .I0_POLARITY = 1'b1;
    defparam \add_75/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i26  (.I0(angle_pool_y[25]), .I1(gyro_y[15]), .CI(\add_75/n50 ), 
            .O(n576[25]), .CO(\add_75/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i26 .I0_POLARITY = 1'b1;
    defparam \add_75/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i25  (.I0(angle_pool_y[24]), .I1(gyro_y[15]), .CI(\add_75/n48 ), 
            .O(n576[24]), .CO(\add_75/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i25 .I0_POLARITY = 1'b1;
    defparam \add_75/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i24  (.I0(angle_pool_y[23]), .I1(gyro_y[15]), .CI(\add_75/n46 ), 
            .O(n576[23]), .CO(\add_75/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i24 .I0_POLARITY = 1'b1;
    defparam \add_75/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i23  (.I0(angle_pool_y[22]), .I1(gyro_y[15]), .CI(\add_75/n44 ), 
            .O(n576[22]), .CO(\add_75/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i23 .I0_POLARITY = 1'b1;
    defparam \add_75/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i22  (.I0(angle_pool_y[21]), .I1(gyro_y[15]), .CI(\add_75/n42 ), 
            .O(n576[21]), .CO(\add_75/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i22 .I0_POLARITY = 1'b1;
    defparam \add_75/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i21  (.I0(angle_pool_y[20]), .I1(gyro_y[15]), .CI(\add_75/n40 ), 
            .O(n576[20]), .CO(\add_75/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i21 .I0_POLARITY = 1'b1;
    defparam \add_75/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i20  (.I0(angle_pool_y[19]), .I1(gyro_y[15]), .CI(\add_75/n38 ), 
            .O(n576[19]), .CO(\add_75/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i20 .I0_POLARITY = 1'b1;
    defparam \add_75/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i19  (.I0(angle_pool_y[18]), .I1(gyro_y[15]), .CI(\add_75/n36 ), 
            .O(n576[18]), .CO(\add_75/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i19 .I0_POLARITY = 1'b1;
    defparam \add_75/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i18  (.I0(angle_pool_y[17]), .I1(gyro_y[15]), .CI(\add_75/n34 ), 
            .O(n576[17]), .CO(\add_75/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i18 .I0_POLARITY = 1'b1;
    defparam \add_75/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i17  (.I0(angle_pool_y[16]), .I1(gyro_y[15]), .CI(\add_75/n32 ), 
            .O(n576[16]), .CO(\add_75/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i17 .I0_POLARITY = 1'b1;
    defparam \add_75/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i16  (.I0(angle_pool_y[15]), .I1(gyro_y[15]), .CI(\add_75/n30 ), 
            .O(n576[15]), .CO(\add_75/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i16 .I0_POLARITY = 1'b1;
    defparam \add_75/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i15  (.I0(angle_pool_y[14]), .I1(gyro_y[14]), .CI(\add_75/n28 ), 
            .O(n576[14]), .CO(\add_75/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i15 .I0_POLARITY = 1'b1;
    defparam \add_75/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i14  (.I0(angle_pool_y[13]), .I1(gyro_y[13]), .CI(\add_75/n26 ), 
            .O(n576[13]), .CO(\add_75/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i14 .I0_POLARITY = 1'b1;
    defparam \add_75/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i13  (.I0(angle_pool_y[12]), .I1(gyro_y[12]), .CI(\add_75/n24 ), 
            .O(n576[12]), .CO(\add_75/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i13 .I0_POLARITY = 1'b1;
    defparam \add_75/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i12  (.I0(angle_pool_y[11]), .I1(gyro_y[11]), .CI(\add_75/n22 ), 
            .O(n576[11]), .CO(\add_75/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i12 .I0_POLARITY = 1'b1;
    defparam \add_75/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i11  (.I0(angle_pool_y[10]), .I1(gyro_y[10]), .CI(\add_75/n20 ), 
            .O(n576[10]), .CO(\add_75/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i11 .I0_POLARITY = 1'b1;
    defparam \add_75/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_1/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_1/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i10  (.I0(angle_pool_y[9]), .I1(gyro_y[9]), .CI(\add_75/n18 ), 
            .O(n576[9]), .CO(\add_75/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i10 .I0_POLARITY = 1'b1;
    defparam \add_75/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_20/i1  (.I0(\Inst_pwm_servo_1/counter [1]), 
            .I1(\Inst_pwm_servo_1/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_1/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_1/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i3  (.I0(1'b1), .I1(\Inst_pwm_servo_2/n6 [3]), 
            .CI(1'b0), .CO(\Inst_pwm_servo_2/add_6/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i9  (.I0(angle_pool_y[8]), .I1(gyro_y[8]), .CI(\add_75/n16 ), 
            .O(n576[8]), .CO(\add_75/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i9 .I0_POLARITY = 1'b1;
    defparam \add_75/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_20/i1  (.I0(\Inst_pwm_servo_2/counter [1]), 
            .I1(\Inst_pwm_servo_2/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_2/n42 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_2/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i8  (.I0(angle_pool_y[7]), .I1(gyro_y[7]), .CI(\add_75/n14 ), 
            .O(n576[7]), .CO(\add_75/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i8 .I0_POLARITY = 1'b1;
    defparam \add_75/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i3  (.I0(angle_pool[2]), .I1(gyro_z[2]), .CI(\add_29/n4 ), 
            .O(n302_4[2]), .CO(\add_29/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i3 .I0_POLARITY = 1'b1;
    defparam \add_29/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i7  (.I0(angle_pool_y[6]), .I1(gyro_y[6]), .CI(\add_75/n12 ), 
            .O(n576[6]), .CO(\add_75/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i7 .I0_POLARITY = 1'b1;
    defparam \add_75/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i6  (.I0(angle_pool_y[5]), .I1(gyro_y[5]), .CI(\add_75/n10 ), 
            .O(n576[5]), .CO(\add_75/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i6 .I0_POLARITY = 1'b1;
    defparam \add_75/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i5  (.I0(angle_pool_y[4]), .I1(gyro_y[4]), .CI(\add_75/n8 ), 
            .O(n576[4]), .CO(\add_75/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i5 .I0_POLARITY = 1'b1;
    defparam \add_75/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i4  (.I0(angle_pool_y[3]), .I1(gyro_y[3]), .CI(\add_75/n6 ), 
            .O(n576[3]), .CO(\add_75/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i4 .I0_POLARITY = 1'b1;
    defparam \add_75/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i3  (.I0(angle_pool_y[2]), .I1(gyro_y[2]), .CI(\add_75/n4 ), 
            .O(n576[2]), .CO(\add_75/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i3 .I0_POLARITY = 1'b1;
    defparam \add_75/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_75/i2  (.I0(angle_pool_y[1]), .I1(gyro_y[1]), .CI(\add_75/n2 ), 
            .O(n576[1]), .CO(\add_75/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(702)
    defparam \add_75/i2 .I0_POLARITY = 1'b1;
    defparam \add_75/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i32  (.I0(\sub_52/add_2/n62 ), .I1(accel_x[15]), .CI(\add_55/n62 ), 
            .O(n507_33[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b0, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i32 .I0_POLARITY = 1'b0;
    defparam \add_55/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i31  (.I0(n470_3[30]), .I1(accel_x[15]), .CI(\add_55/n60 ), 
            .O(n507_32[30]), .CO(\add_55/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i31 .I0_POLARITY = 1'b1;
    defparam \add_55/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i30  (.I0(n470_4[29]), .I1(accel_x[15]), .CI(\add_55/n58 ), 
            .O(n507_31[29]), .CO(\add_55/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i30 .I0_POLARITY = 1'b1;
    defparam \add_55/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i29  (.I0(n470_5[28]), .I1(accel_x[15]), .CI(\add_55/n56 ), 
            .O(n507_30[28]), .CO(\add_55/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i29 .I0_POLARITY = 1'b1;
    defparam \add_55/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i28  (.I0(n470_6[27]), .I1(accel_x[15]), .CI(\add_55/n54 ), 
            .O(n507_29[27]), .CO(\add_55/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i28 .I0_POLARITY = 1'b1;
    defparam \add_55/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i27  (.I0(n470_7[26]), .I1(accel_x[15]), .CI(\add_55/n52 ), 
            .O(n507_28[26]), .CO(\add_55/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i27 .I0_POLARITY = 1'b1;
    defparam \add_55/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i26  (.I0(n470_8[25]), .I1(accel_x[15]), .CI(\add_55/n50 ), 
            .O(n507_27[25]), .CO(\add_55/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i26 .I0_POLARITY = 1'b1;
    defparam \add_55/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i25  (.I0(n470_9[24]), .I1(accel_x[15]), .CI(\add_55/n48 ), 
            .O(n507_26[24]), .CO(\add_55/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i25 .I0_POLARITY = 1'b1;
    defparam \add_55/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i24  (.I0(n470_10[23]), .I1(accel_x[15]), .CI(\add_55/n46 ), 
            .O(n507_25[23]), .CO(\add_55/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i24 .I0_POLARITY = 1'b1;
    defparam \add_55/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i23  (.I0(n470_11[22]), .I1(accel_x[15]), .CI(\add_55/n44 ), 
            .O(n507_24[22]), .CO(\add_55/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i23 .I0_POLARITY = 1'b1;
    defparam \add_55/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i22  (.I0(n470_12[21]), .I1(accel_x[15]), .CI(\add_55/n42 ), 
            .O(n507_23[21]), .CO(\add_55/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i22 .I0_POLARITY = 1'b1;
    defparam \add_55/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i21  (.I0(n470_13[20]), .I1(accel_x[15]), .CI(\add_55/n40 ), 
            .O(n507_22[20]), .CO(\add_55/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i21 .I0_POLARITY = 1'b1;
    defparam \add_55/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i20  (.I0(n470_14[19]), .I1(accel_x[15]), .CI(\add_55/n38 ), 
            .O(n507_21[19]), .CO(\add_55/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i20 .I0_POLARITY = 1'b1;
    defparam \add_55/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i19  (.I0(n470_15[18]), .I1(accel_x[15]), .CI(\add_55/n36 ), 
            .O(n507_20[18]), .CO(\add_55/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i19 .I0_POLARITY = 1'b1;
    defparam \add_55/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i18  (.I0(n470_16[17]), .I1(accel_x[15]), .CI(\add_55/n34 ), 
            .O(n507_19[17]), .CO(\add_55/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i18 .I0_POLARITY = 1'b1;
    defparam \add_55/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i17  (.I0(n470_17[16]), .I1(accel_x[15]), .CI(\add_55/n32 ), 
            .O(n507_18[16]), .CO(\add_55/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i17 .I0_POLARITY = 1'b1;
    defparam \add_55/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i16  (.I0(n470_18[15]), .I1(accel_x[15]), .CI(\add_55/n30 ), 
            .O(n507_17[15]), .CO(\add_55/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i16 .I0_POLARITY = 1'b1;
    defparam \add_55/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i15  (.I0(n470_19[14]), .I1(accel_x[15]), .CI(\add_55/n28 ), 
            .O(n507_16[14]), .CO(\add_55/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i15 .I0_POLARITY = 1'b1;
    defparam \add_55/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i14  (.I0(n470_20[13]), .I1(accel_x[15]), .CI(\add_55/n26 ), 
            .O(n507_15[13]), .CO(\add_55/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i14 .I0_POLARITY = 1'b1;
    defparam \add_55/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i13  (.I0(n470_21[12]), .I1(accel_x[15]), .CI(\add_55/n24 ), 
            .O(n507_14[12]), .CO(\add_55/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i13 .I0_POLARITY = 1'b1;
    defparam \add_55/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i12  (.I0(n470_22[11]), .I1(accel_x[15]), .CI(\add_55/n22 ), 
            .O(n507_13[11]), .CO(\add_55/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i12 .I0_POLARITY = 1'b1;
    defparam \add_55/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i1  (.I0(n609[0]), .I1(n609_26[6]), .CI(n1898), 
            .O(n642_2[0]), .CO(\sub_77/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \add_55/i11  (.I0(n470_23[10]), .I1(accel_x[15]), .CI(\add_55/n20 ), 
            .O(n507_12[10]), .CO(\add_55/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i11 .I0_POLARITY = 1'b1;
    defparam \add_55/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i10  (.I0(n470_24[9]), .I1(accel_x[15]), .CI(\add_55/n18 ), 
            .O(n507_11[9]), .CO(\add_55/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i10 .I0_POLARITY = 1'b1;
    defparam \add_55/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i9  (.I0(n470_25[8]), .I1(accel_x[14]), .CI(\add_55/n16 ), 
            .O(n507_10[8]), .CO(\add_55/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i9 .I0_POLARITY = 1'b1;
    defparam \add_55/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i8  (.I0(n470_26[7]), .I1(accel_x[13]), .CI(\add_55/n14 ), 
            .O(n507_9[7]), .CO(\add_55/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i8 .I0_POLARITY = 1'b1;
    defparam \add_55/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i7  (.I0(n470_27[6]), .I1(accel_x[12]), .CI(\add_55/n12 ), 
            .O(n507_8[6]), .CO(\add_55/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i7 .I0_POLARITY = 1'b1;
    defparam \add_55/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i6  (.I0(n470_28[5]), .I1(accel_x[11]), .CI(\add_55/n10 ), 
            .O(n507_7[5]), .CO(\add_55/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i6 .I0_POLARITY = 1'b1;
    defparam \add_55/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i5  (.I0(n470[4]), .I1(accel_x[10]), .CI(\add_55/n8 ), 
            .O(n507_6[4]), .CO(\add_55/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i5 .I0_POLARITY = 1'b1;
    defparam \add_55/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i4  (.I0(n470[3]), .I1(accel_x[9]), .CI(\add_55/n6 ), 
            .O(n507_5[3]), .CO(\add_55/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i4 .I0_POLARITY = 1'b1;
    defparam \add_55/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i3  (.I0(n470[2]), .I1(accel_x[8]), .CI(\add_55/n4 ), 
            .O(n507_4[2]), .CO(\add_55/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i3 .I0_POLARITY = 1'b1;
    defparam \add_55/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_55/i2  (.I0(n470[1]), .I1(accel_x[7]), .CI(\add_55/n2 ), 
            .O(n507_3[1]), .CO(\add_55/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \add_55/i2 .I0_POLARITY = 1'b1;
    defparam \add_55/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i32  (.I0(angle_pool_x[31]), .I1(gyro_x[15]), .CI(\add_50/n62 ), 
            .O(n404[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i32 .I0_POLARITY = 1'b1;
    defparam \add_50/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i31  (.I0(angle_pool_x[30]), .I1(gyro_x[15]), .CI(\add_50/n60 ), 
            .O(n404[30]), .CO(\add_50/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i31 .I0_POLARITY = 1'b1;
    defparam \add_50/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i30  (.I0(angle_pool_x[29]), .I1(gyro_x[15]), .CI(\add_50/n58 ), 
            .O(n404[29]), .CO(\add_50/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i30 .I0_POLARITY = 1'b1;
    defparam \add_50/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i29  (.I0(angle_pool_x[28]), .I1(gyro_x[15]), .CI(\add_50/n56 ), 
            .O(n404[28]), .CO(\add_50/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i29 .I0_POLARITY = 1'b1;
    defparam \add_50/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i28  (.I0(angle_pool_x[27]), .I1(gyro_x[15]), .CI(\add_50/n54 ), 
            .O(n404[27]), .CO(\add_50/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i28 .I0_POLARITY = 1'b1;
    defparam \add_50/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i27  (.I0(angle_pool_x[26]), .I1(gyro_x[15]), .CI(\add_50/n52 ), 
            .O(n404[26]), .CO(\add_50/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i27 .I0_POLARITY = 1'b1;
    defparam \add_50/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i26  (.I0(angle_pool_x[25]), .I1(gyro_x[15]), .CI(\add_50/n50 ), 
            .O(n404[25]), .CO(\add_50/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i26 .I0_POLARITY = 1'b1;
    defparam \add_50/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i25  (.I0(angle_pool_x[24]), .I1(gyro_x[15]), .CI(\add_50/n48 ), 
            .O(n404[24]), .CO(\add_50/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i25 .I0_POLARITY = 1'b1;
    defparam \add_50/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i24  (.I0(angle_pool_x[23]), .I1(gyro_x[15]), .CI(\add_50/n46 ), 
            .O(n404[23]), .CO(\add_50/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i24 .I0_POLARITY = 1'b1;
    defparam \add_50/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i23  (.I0(angle_pool_x[22]), .I1(gyro_x[15]), .CI(\add_50/n44 ), 
            .O(n404[22]), .CO(\add_50/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i23 .I0_POLARITY = 1'b1;
    defparam \add_50/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i22  (.I0(angle_pool_x[21]), .I1(gyro_x[15]), .CI(\add_50/n42 ), 
            .O(n404[21]), .CO(\add_50/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i22 .I0_POLARITY = 1'b1;
    defparam \add_50/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i21  (.I0(angle_pool_x[20]), .I1(gyro_x[15]), .CI(\add_50/n40 ), 
            .O(n404[20]), .CO(\add_50/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i21 .I0_POLARITY = 1'b1;
    defparam \add_50/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i20  (.I0(angle_pool_x[19]), .I1(gyro_x[15]), .CI(\add_50/n38 ), 
            .O(n404[19]), .CO(\add_50/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i20 .I0_POLARITY = 1'b1;
    defparam \add_50/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i19  (.I0(angle_pool_x[18]), .I1(gyro_x[15]), .CI(\add_50/n36 ), 
            .O(n404[18]), .CO(\add_50/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i19 .I0_POLARITY = 1'b1;
    defparam \add_50/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i18  (.I0(angle_pool_x[17]), .I1(gyro_x[15]), .CI(\add_50/n34 ), 
            .O(n404[17]), .CO(\add_50/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i18 .I0_POLARITY = 1'b1;
    defparam \add_50/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i17  (.I0(angle_pool_x[16]), .I1(gyro_x[15]), .CI(\add_50/n32 ), 
            .O(n404[16]), .CO(\add_50/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i17 .I0_POLARITY = 1'b1;
    defparam \add_50/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i16  (.I0(angle_pool_x[15]), .I1(gyro_x[15]), .CI(\add_50/n30 ), 
            .O(n404[15]), .CO(\add_50/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i16 .I0_POLARITY = 1'b1;
    defparam \add_50/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i15  (.I0(angle_pool_x[14]), .I1(gyro_x[14]), .CI(\add_50/n28 ), 
            .O(n404[14]), .CO(\add_50/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i15 .I0_POLARITY = 1'b1;
    defparam \add_50/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i14  (.I0(angle_pool_x[13]), .I1(gyro_x[13]), .CI(\add_50/n26 ), 
            .O(n404[13]), .CO(\add_50/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i14 .I0_POLARITY = 1'b1;
    defparam \add_50/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i13  (.I0(angle_pool_x[12]), .I1(gyro_x[12]), .CI(\add_50/n24 ), 
            .O(n404[12]), .CO(\add_50/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i13 .I0_POLARITY = 1'b1;
    defparam \add_50/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i12  (.I0(angle_pool_x[11]), .I1(gyro_x[11]), .CI(\add_50/n22 ), 
            .O(n404[11]), .CO(\add_50/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i12 .I0_POLARITY = 1'b1;
    defparam \add_50/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i11  (.I0(angle_pool_x[10]), .I1(gyro_x[10]), .CI(\add_50/n20 ), 
            .O(n404[10]), .CO(\add_50/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i11 .I0_POLARITY = 1'b1;
    defparam \add_50/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i10  (.I0(angle_pool_x[9]), .I1(gyro_x[9]), .CI(\add_50/n18 ), 
            .O(n404[9]), .CO(\add_50/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i10 .I0_POLARITY = 1'b1;
    defparam \add_50/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i9  (.I0(angle_pool_x[8]), .I1(gyro_x[8]), .CI(\add_50/n16 ), 
            .O(n404[8]), .CO(\add_50/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i9 .I0_POLARITY = 1'b1;
    defparam \add_50/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i8  (.I0(angle_pool_x[7]), .I1(gyro_x[7]), .CI(\add_50/n14 ), 
            .O(n404[7]), .CO(\add_50/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i8 .I0_POLARITY = 1'b1;
    defparam \add_50/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i7  (.I0(angle_pool_x[6]), .I1(gyro_x[6]), .CI(\add_50/n12 ), 
            .O(n404[6]), .CO(\add_50/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i7 .I0_POLARITY = 1'b1;
    defparam \add_50/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i6  (.I0(angle_pool_x[5]), .I1(gyro_x[5]), .CI(\add_50/n10 ), 
            .O(n404[5]), .CO(\add_50/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i6 .I0_POLARITY = 1'b1;
    defparam \add_50/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i5  (.I0(angle_pool_x[4]), .I1(gyro_x[4]), .CI(\add_50/n8 ), 
            .O(n404[4]), .CO(\add_50/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i5 .I0_POLARITY = 1'b1;
    defparam \add_50/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i4  (.I0(angle_pool_x[3]), .I1(gyro_x[3]), .CI(\add_50/n6 ), 
            .O(n404[3]), .CO(\add_50/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i4 .I0_POLARITY = 1'b1;
    defparam \add_50/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i3  (.I0(angle_pool_x[2]), .I1(gyro_x[2]), .CI(\add_50/n4 ), 
            .O(n404[2]), .CO(\add_50/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i3 .I0_POLARITY = 1'b1;
    defparam \add_50/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_50/i2  (.I0(angle_pool_x[1]), .I1(gyro_x[1]), .CI(\add_50/n2 ), 
            .O(n404[1]), .CO(\add_50/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(696)
    defparam \add_50/i2 .I0_POLARITY = 1'b1;
    defparam \add_50/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i32  (.I0(angle_pool[31]), .I1(gyro_z[15]), .CI(\add_29/n62 ), 
            .O(n302_33[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i32 .I0_POLARITY = 1'b1;
    defparam \add_29/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i31  (.I0(angle_pool[30]), .I1(gyro_z[15]), .CI(\add_29/n60 ), 
            .O(n302_32[30]), .CO(\add_29/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i31 .I0_POLARITY = 1'b1;
    defparam \add_29/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i30  (.I0(angle_pool[29]), .I1(gyro_z[15]), .CI(\add_29/n58 ), 
            .O(n302_31[29]), .CO(\add_29/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i30 .I0_POLARITY = 1'b1;
    defparam \add_29/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i29  (.I0(angle_pool[28]), .I1(gyro_z[15]), .CI(\add_29/n56 ), 
            .O(n302_30[28]), .CO(\add_29/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i29 .I0_POLARITY = 1'b1;
    defparam \add_29/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i28  (.I0(angle_pool[27]), .I1(gyro_z[15]), .CI(\add_29/n54 ), 
            .O(n302_29[27]), .CO(\add_29/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i28 .I0_POLARITY = 1'b1;
    defparam \add_29/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i27  (.I0(angle_pool[26]), .I1(gyro_z[15]), .CI(\add_29/n52 ), 
            .O(n302_28[26]), .CO(\add_29/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i27 .I0_POLARITY = 1'b1;
    defparam \add_29/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i26  (.I0(angle_pool[25]), .I1(gyro_z[15]), .CI(\add_29/n50 ), 
            .O(n302_27[25]), .CO(\add_29/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i26 .I0_POLARITY = 1'b1;
    defparam \add_29/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i25  (.I0(angle_pool[24]), .I1(gyro_z[15]), .CI(\add_29/n48 ), 
            .O(n302_26[24]), .CO(\add_29/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i25 .I0_POLARITY = 1'b1;
    defparam \add_29/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i24  (.I0(angle_pool[23]), .I1(gyro_z[15]), .CI(\add_29/n46 ), 
            .O(n302_25[23]), .CO(\add_29/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i24 .I0_POLARITY = 1'b1;
    defparam \add_29/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i23  (.I0(angle_pool[22]), .I1(gyro_z[15]), .CI(\add_29/n44 ), 
            .O(n302_24[22]), .CO(\add_29/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i23 .I0_POLARITY = 1'b1;
    defparam \add_29/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i22  (.I0(angle_pool[21]), .I1(gyro_z[15]), .CI(\add_29/n42 ), 
            .O(n302_23[21]), .CO(\add_29/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i22 .I0_POLARITY = 1'b1;
    defparam \add_29/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i21  (.I0(angle_pool[20]), .I1(gyro_z[15]), .CI(\add_29/n40 ), 
            .O(n302_22[20]), .CO(\add_29/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i21 .I0_POLARITY = 1'b1;
    defparam \add_29/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i20  (.I0(angle_pool[19]), .I1(gyro_z[15]), .CI(\add_29/n38 ), 
            .O(n302_21[19]), .CO(\add_29/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i20 .I0_POLARITY = 1'b1;
    defparam \add_29/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i19  (.I0(angle_pool[18]), .I1(gyro_z[15]), .CI(\add_29/n36 ), 
            .O(n302_20[18]), .CO(\add_29/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i19 .I0_POLARITY = 1'b1;
    defparam \add_29/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i18  (.I0(angle_pool[17]), .I1(gyro_z[15]), .CI(\add_29/n34 ), 
            .O(n302_19[17]), .CO(\add_29/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i18 .I0_POLARITY = 1'b1;
    defparam \add_29/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i17  (.I0(angle_pool[16]), .I1(gyro_z[15]), .CI(\add_29/n32 ), 
            .O(n302_18[16]), .CO(\add_29/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i17 .I0_POLARITY = 1'b1;
    defparam \add_29/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i16  (.I0(angle_pool[15]), .I1(gyro_z[15]), .CI(\add_29/n30 ), 
            .O(n302_17[15]), .CO(\add_29/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i16 .I0_POLARITY = 1'b1;
    defparam \add_29/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i15  (.I0(angle_pool[14]), .I1(gyro_z[14]), .CI(\add_29/n28 ), 
            .O(n302_16[14]), .CO(\add_29/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i15 .I0_POLARITY = 1'b1;
    defparam \add_29/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i14  (.I0(angle_pool[13]), .I1(gyro_z[13]), .CI(\add_29/n26 ), 
            .O(n302_15[13]), .CO(\add_29/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i14 .I0_POLARITY = 1'b1;
    defparam \add_29/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i13  (.I0(angle_pool[12]), .I1(gyro_z[12]), .CI(\add_29/n24 ), 
            .O(n302_14[12]), .CO(\add_29/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i13 .I0_POLARITY = 1'b1;
    defparam \add_29/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i12  (.I0(angle_pool[11]), .I1(gyro_z[11]), .CI(\add_29/n22 ), 
            .O(n302_13[11]), .CO(\add_29/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i12 .I0_POLARITY = 1'b1;
    defparam \add_29/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i11  (.I0(angle_pool[10]), .I1(gyro_z[10]), .CI(\add_29/n20 ), 
            .O(n302_12[10]), .CO(\add_29/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i11 .I0_POLARITY = 1'b1;
    defparam \add_29/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i10  (.I0(angle_pool[9]), .I1(gyro_z[9]), .CI(\add_29/n18 ), 
            .O(n302_11[9]), .CO(\add_29/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i10 .I0_POLARITY = 1'b1;
    defparam \add_29/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i9  (.I0(angle_pool[8]), .I1(gyro_z[8]), .CI(\add_29/n16 ), 
            .O(n302_10[8]), .CO(\add_29/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i9 .I0_POLARITY = 1'b1;
    defparam \add_29/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i8  (.I0(angle_pool[7]), .I1(gyro_z[7]), .CI(\add_29/n14 ), 
            .O(n302_9[7]), .CO(\add_29/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i8 .I0_POLARITY = 1'b1;
    defparam \add_29/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i7  (.I0(angle_pool[6]), .I1(gyro_z[6]), .CI(\add_29/n12 ), 
            .O(n302_8[6]), .CO(\add_29/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i7 .I0_POLARITY = 1'b1;
    defparam \add_29/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i6  (.I0(angle_pool[5]), .I1(gyro_z[5]), .CI(\add_29/n10 ), 
            .O(n302_7[5]), .CO(\add_29/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i6 .I0_POLARITY = 1'b1;
    defparam \add_29/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i4  (.I0(angle_pool[3]), .I1(gyro_z[3]), .CI(\add_29/n6 ), 
            .O(n302_5[3]), .CO(\add_29/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i4 .I0_POLARITY = 1'b1;
    defparam \add_29/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_29/i5  (.I0(angle_pool[4]), .I1(gyro_z[4]), .CI(\add_29/n8 ), 
            .O(n302_6[4]), .CO(\add_29/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(692)
    defparam \add_29/i5 .I0_POLARITY = 1'b1;
    defparam \add_29/i5 .I1_POLARITY = 1'b1;
    EFX_MULT \Inst_pwm_servo_2/mult_5  (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), 
            .CEB(1'b0), .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({10'b0000000000, 
            angle_raw_z}), .B({18'b000000000000111101}), .O({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, \Inst_pwm_servo_2/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
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
            Open_41, Open_42, Open_43, \Inst_pwm_servo_1/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
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
            Open_63, Open_64, Open_65, \Inst_pwm_servo_0/n6 [15:2]})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
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
    EFX_LUT4 LUT__3654 (.I0(gyro_z[4]), .I1(gyro_z[10]), .I2(gyro_z[11]), 
            .I3(gyro_z[14]), .O(n1602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3654.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3655 (.I0(n1602), .I1(gyro_z[5]), .I2(n1601), .I3(gyro_z[4]), 
            .O(n1603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__3655.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__3656 (.I0(rst_n_i), .I1(data_valid_out), .O(n1591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3656.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3657 (.I0(gyro_z[4]), .I1(gyro_z[6]), .I2(gyro_z[12]), 
            .I3(gyro_z[13]), .O(n1604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3657.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3658 (.I0(gyro_z[4]), .I1(gyro_z[7]), .I2(gyro_z[8]), 
            .I3(gyro_z[9]), .O(n1605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3658.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3659 (.I0(n1604), .I1(n1605), .I2(n1603), .I3(n1591), 
            .O(n1587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3659.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3660 (.I0(uart_timer[1]), .I1(uart_timer[0]), .I2(uart_timer[2]), 
            .I3(uart_timer[3]), .O(n1606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3660.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3661 (.I0(uart_timer[6]), .I1(uart_timer[7]), .O(n1607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3661.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3662 (.I0(n1606), .I1(uart_timer[4]), .I2(uart_timer[5]), 
            .I3(n1607), .O(n1608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3662.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3663 (.I0(uart_timer[8]), .I1(uart_timer[9]), .O(n1609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3663.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3664 (.I0(uart_timer[10]), .I1(uart_timer[11]), .I2(uart_timer[12]), 
            .O(n1610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3664.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3665 (.I0(n1608), .I1(n1609), .I2(n1610), .I3(uart_timer[13]), 
            .O(n1611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3665.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3666 (.I0(uart_timer[14]), .I1(uart_timer[15]), .I2(uart_timer[20]), 
            .I3(uart_timer[21]), .O(n1612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3666.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3667 (.I0(uart_timer[17]), .I1(uart_timer[16]), .I2(uart_timer[18]), 
            .I3(uart_timer[19]), .O(n1613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3667.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3668 (.I0(n1613), .I1(uart_timer[21]), .I2(uart_timer[20]), 
            .O(n1614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3668.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3669 (.I0(n1611), .I1(n1612), .I2(uart_timer[17]), .I3(n1614), 
            .O(n1615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__3669.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__3670 (.I0(uart_timer[0]), .I1(n1615), .O(n973_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__3670.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3671 (.I0(\Inst_MPU6500_Controller/n4425 ), .I1(\Inst_MPU6500_Controller/n4435 ), 
            .I2(\Inst_MPU6500_Controller/n4440 ), .I3(\Inst_MPU6500_Controller/n4450 ), 
            .O(n1616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3671.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3672 (.I0(\Inst_MPU6500_Controller/n4425 ), .I1(\Inst_MPU6500_Controller/n4455 ), 
            .I2(\Inst_MPU6500_Controller/n4465 ), .I3(\Inst_MPU6500_Controller/n4470 ), 
            .O(n1617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3672.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3673 (.I0(\Inst_MPU6500_Controller/n4425 ), .I1(\Inst_MPU6500_Controller/n4445 ), 
            .I2(\Inst_MPU6500_Controller/n4460 ), .I3(\Inst_MPU6500_Controller/n4475 ), 
            .O(n1618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3673.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3674 (.I0(n1616), .I1(n1617), .I2(n1618), .O(n1619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3674.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3675 (.I0(\Inst_MPU6500_Controller/raw_data[9] [0]), .I1(\Inst_MPU6500_Controller/raw_data[9] [1]), 
            .I2(\Inst_MPU6500_Controller/n4415 ), .I3(\Inst_MPU6500_Controller/n4420 ), 
            .O(n1620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0004 */ ;
    defparam LUT__3675.LUTMASK = 16'h0004;
    EFX_LUT4 LUT__3676 (.I0(n1620), .I1(\Inst_MPU6500_Controller/n4480 ), 
            .O(n1621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3676.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3677 (.I0(gyro_x[4]), .I1(gyro_x[5]), .I2(n1621_q), 
            .I3(n1619_q), .O(n1622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0081 */ ;
    defparam LUT__3677.LUTMASK = 16'h0081;
    EFX_LUT4 LUT__3678 (.I0(angle_pool_x[0]), .I1(n404[0]), .I2(n1622), 
            .O(n437_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3678.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3679 (.I0(n404[6]), .I1(angle_pool_x[6]), .I2(n1622), 
            .O(n437[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3679.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3680 (.I0(angle_pool[23]), .I1(angle_pool[24]), .I2(angle_pool[25]), 
            .I3(angle_pool[26]), .O(n1623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3680.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3681 (.I0(angle_pool[19]), .I1(angle_pool[20]), .I2(angle_pool[21]), 
            .I3(angle_pool[22]), .O(n1624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3681.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3682 (.I0(angle_pool[23]), .I1(angle_pool[24]), .I2(angle_pool[25]), 
            .I3(angle_pool[26]), .O(n1625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3682.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3683 (.I0(angle_pool[19]), .I1(angle_pool[20]), .I2(angle_pool[21]), 
            .I3(angle_pool[22]), .O(n1626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3683.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3684 (.I0(n1625), .I1(n1626), .O(n1627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3684.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3685 (.I0(n1624), .I1(n1623), .I2(n1627), .O(n1628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3685.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3686 (.I0(angle_pool[31]), .I1(n1627), .O(n1629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3686.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3687 (.I0(n1628), .I1(angle_pool[12]), .I2(n1629), .O(n928_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__3687.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3688 (.I0(tx_busy_sig), .I1(n1615), .I2(rst_n_i), .O(n1593)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3688.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3689 (.I0(tx_busy_sig), .I1(n1615), .O(n1585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3689.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3690 (.I0(angle_pool_x[25]), .I1(angle_pool_x[26]), .I2(angle_pool_x[27]), 
            .I3(angle_pool_x[28]), .O(n1630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3690.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3691 (.I0(angle_pool_x[21]), .I1(angle_pool_x[22]), .I2(angle_pool_x[23]), 
            .I3(angle_pool_x[24]), .O(n1631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3691.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3692 (.I0(angle_pool_x[25]), .I1(angle_pool_x[26]), .I2(angle_pool_x[27]), 
            .I3(angle_pool_x[28]), .O(n1632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3692.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3693 (.I0(angle_pool_x[21]), .I1(angle_pool_x[22]), .I2(angle_pool_x[23]), 
            .I3(angle_pool_x[24]), .O(n1633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3693.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3694 (.I0(n1632), .I1(n1633), .O(n1634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3694.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3695 (.I0(n1631), .I1(n1630), .I2(n1634), .O(n1635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3695.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3696 (.I0(angle_pool_x[14]), .I1(angle_pool_x[15]), .O(n1636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3696.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3697 (.I0(angle_pool_x[16]), .I1(angle_pool_x[17]), .I2(n1636), 
            .O(n1637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3697.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3698 (.I0(angle_pool_x[18]), .I1(angle_pool_x[19]), .I2(n1637), 
            .O(n1638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3698.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3699 (.I0(angle_pool_x[20]), .I1(n1638), .I2(n1634), 
            .I3(angle_pool_x[31]), .O(n1639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4fb0 */ ;
    defparam LUT__3699.LUTMASK = 16'h4fb0;
    EFX_LUT4 LUT__3700 (.I0(n1635), .I1(angle_pool_x[14]), .I2(n1639), 
            .O(n888_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__3700.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3701 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1640)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3701.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3702 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(n1640), 
            .O(\Inst_MPU6500_Controller/n731 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3702.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3703 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1641)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3703.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3704 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1642)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3704.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3705 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n1643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3705.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3706 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3706.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3707 (.I0(n1643), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1644), .O(n1645)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3707.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3708 (.I0(switch_out), .I1(n1642), .I2(n1641), .I3(n1645), 
            .O(ceg_net279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__3708.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__3709 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1646)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3709.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3710 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(spi_data_valid), 
            .I2(n1646), .O(n1647)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3710.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3711 (.I0(\Inst_MPU6500_Controller/byte_cntr [3]), .I1(n1647), 
            .O(n1648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3711.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3712 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1648), .O(\Inst_MPU6500_Controller/n6169 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3712.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3713 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .O(n1649)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3713.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3714 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(spi_data_valid), 
            .O(n1650)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3714.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3715 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1651)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__3715.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__3716 (.I0(n1650), .I1(n1649), .I2(n1651), .O(n1652)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3716.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3717 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [5]), .O(n1653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3717.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3718 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(n1653), .O(n1654)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3718.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3719 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .O(n1655)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3719.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3720 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n1656)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3720.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3721 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1657)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3721.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3722 (.I0(n1655), .I1(n1656), .I2(n1657), .O(n1658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3722.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3723 (.I0(\Inst_MPU6500_Controller/delay_cntr [8]), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [19]), .O(n1659)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3723.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3724 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n1660)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3724.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3725 (.I0(n1659), .I1(n1660), .O(n1661)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3725.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3726 (.I0(n1658), .I1(n1661), .I2(n1654), .I3(n1644), 
            .O(n1662)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3726.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3727 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(n1663)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3727.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3728 (.I0(\Inst_MPU6500_Controller/delay_cntr [15]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1664)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3728.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3729 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1665)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3729.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3730 (.I0(n1663), .I1(n1664), .I2(n1655), .I3(n1665), 
            .O(n1666)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3730.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3731 (.I0(n1666), .I1(n1661), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n1667)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3731.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3732 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1668)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3732.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3733 (.I0(n1667), .I1(n1668), .I2(n1662), .I3(n1651), 
            .O(n1669)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__3733.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__3734 (.I0(n1669), .I1(n1652), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n740 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3734.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3735 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [0]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n1670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f0a */ ;
    defparam LUT__3735.LUTMASK = 16'h3f0a;
    EFX_LUT4 LUT__3736 (.I0(n1644), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n1671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3736.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3737 (.I0(n1670), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1671), .O(ceg_net298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3737.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3738 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3738.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3739 (.I0(n1672), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3739.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3740 (.I0(n1649), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(n1673), .O(\Inst_MPU6500_Controller/n735 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3740.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__3741 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3741.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3742 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(n1674), .O(ceg_net313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf23f */ ;
    defparam LUT__3742.LUTMASK = 16'hf23f;
    EFX_LUT4 LUT__3743 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3743.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__3744 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3744.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3745 (.I0(\Inst_MPU6500_Controller/delay_cntr [18]), .I1(n1655), 
            .I2(n1665), .I3(n1675), .O(n1676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3745.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3746 (.I0(n1659), .I1(n1656), .I2(n1657), .O(n1677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3746.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3747 (.I0(n1676), .I1(n1677), .O(n1678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3747.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3748 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n1678), 
            .I2(\Inst_MPU6500_Controller/state [0]), .O(n1679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3748.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3749 (.I0(spi_data_valid), .I1(n1662), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n1680)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf0c */ ;
    defparam LUT__3749.LUTMASK = 16'haf0c;
    EFX_LUT4 LUT__3750 (.I0(n1680), .I1(n1679), .I2(n1668), .O(\Inst_MPU6500_Controller/n763 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3750.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3751 (.I0(n1661), .I1(n1666), .I2(switch_out), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n1681)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__3751.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__3752 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n1682)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__3752.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__3753 (.I0(n1672), .I1(n1681), .I2(n1682), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__3753.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__3754 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n1648), .O(\Inst_MPU6500_Controller/n6171 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3754.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3755 (.I0(\Inst_MPU6500_Controller/byte_cntr [3]), .I1(n1647), 
            .O(n1683)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3755.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3756 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1683), .O(\Inst_MPU6500_Controller/n6245 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3756.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3757 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1683), .O(\Inst_MPU6500_Controller/n6252 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3757.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3758 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n1683), .O(\Inst_MPU6500_Controller/n6259 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3758.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3759 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1683), .O(\Inst_MPU6500_Controller/n6266 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3759.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3760 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(n1647), 
            .I2(n1649), .O(\Inst_MPU6500_Controller/n6273 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3760.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3761 (.I0(n1649), .I1(n1650), .O(n1684)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3761.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3762 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1684), 
            .O(\Inst_MPU6500_Controller/n6280 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3762.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3763 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1685)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3763.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3764 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(n1641), .I3(n1685), .O(\Inst_MPU6500_Controller/n768 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3764.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__3765 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__3765.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__3766 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n1668), 
            .O(\~Inst_MPU6500_Controller/n5110 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3766.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3767 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n1686)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3767.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3768 (.I0(n1686), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1649), .I3(\Inst_MPU6500_Controller/state [3]), .O(n1687)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3768.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3769 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n1674), 
            .I2(n1687), .I3(spi_cs_n_o), .O(n1688)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__3769.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__3770 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1688), .O(\Inst_MPU6500_Controller/n730 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00eb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3770.LUTMASK = 16'h00eb;
    EFX_LUT4 LUT__3771 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_data_valid), 
            .O(n1689)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3771.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3772 (.I0(n1689), .I1(switch_out), .I2(n1674), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n1690)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ba */ ;
    defparam LUT__3772.LUTMASK = 16'hf0ba;
    EFX_LUT4 LUT__3773 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1690), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n1672), .O(ceg_net302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf111 */ ;
    defparam LUT__3773.LUTMASK = 16'hf111;
    EFX_LUT4 LUT__3774 (.I0(n1667), .I1(n1662), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1691)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3774.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3775 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n1692)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3775.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3776 (.I0(n1692), .I1(n1668), .I2(n1652), .O(n1693)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3776.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3777 (.I0(n1651), .I1(n1678), .I2(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I3(n1693), .O(n1694)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3777.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3778 (.I0(n1691), .I1(n1694), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I3(\Inst_MPU6500_Controller/delay_cntr [1]), .O(\Inst_MPU6500_Controller/n740 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3778.LUTMASK = 16'hcee0;
    EFX_LUT4 LUT__3779 (.I0(n1684), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n1695)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3779.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3780 (.I0(n1678), .I1(n1651), .I2(n1692), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n1696)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__3780.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__3781 (.I0(n1695), .I1(n1655), .I2(n1696), .I3(n1691), 
            .O(\Inst_MPU6500_Controller/n740 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3781.LUTMASK = 16'hcf0a;
    EFX_LUT4 LUT__3782 (.I0(\Inst_MPU6500_Controller/delay_cntr [2]), .I1(n1692), 
            .O(n1697)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3782.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3783 (.I0(n1695), .I1(n1697), .I2(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I3(n1669), .O(\Inst_MPU6500_Controller/n740 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ca0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3783.LUTMASK = 16'h3ca0;
    EFX_LUT4 LUT__3784 (.I0(n1642), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1698)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3784.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3785 (.I0(n1677), .I1(n1676), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1698), .O(n1699)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__3785.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__3786 (.I0(n1662), .I1(n1667), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1699), .O(n1700)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3786.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3787 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n1701)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3787.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3788 (.I0(n1652), .I1(n1700), .I2(n1701), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n740 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3788.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3789 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(n1701), 
            .O(n1702)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3789.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3790 (.I0(n1652), .I1(n1702), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(\Inst_MPU6500_Controller/n740 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3790.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3791 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n1703)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3791.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3792 (.I0(n1701), .I1(n1703), .O(n1704)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3792.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3793 (.I0(n1652), .I1(n1704), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(\Inst_MPU6500_Controller/n740 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3793.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3794 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(n1704), 
            .O(n1705)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3794.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3795 (.I0(n1652), .I1(n1705), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .O(\Inst_MPU6500_Controller/n740 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3795.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3796 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(n1705), 
            .O(n1706)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3796.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3797 (.I0(n1652), .I1(n1706), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(\Inst_MPU6500_Controller/n740 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3797.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3798 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n1707)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3798.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3799 (.I0(n1701), .I1(n1703), .I2(n1707), .O(n1708)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3799.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3800 (.I0(n1678), .I1(n1651), .I2(n1708), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n1709)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__3800.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__3801 (.I0(n1676), .I1(n1695), .I2(n1709), .I3(n1691), 
            .O(\Inst_MPU6500_Controller/n740 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf0c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3801.LUTMASK = 16'haf0c;
    EFX_LUT4 LUT__3802 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(n1708), 
            .O(n1710)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3802.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3803 (.I0(n1652), .I1(n1700), .I2(n1710), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(\Inst_MPU6500_Controller/n740 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3803.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3804 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(n1708), .O(n1711)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3804.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3805 (.I0(n1652), .I1(n1711), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(\Inst_MPU6500_Controller/n740 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3805.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3806 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(n1708), .O(n1712)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3806.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3807 (.I0(n1678), .I1(n1651), .I2(n1712), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1713)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__3807.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__3808 (.I0(n1665), .I1(n1713), .I2(n1695), .I3(n1691), 
            .O(\Inst_MPU6500_Controller/n740 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3b30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3808.LUTMASK = 16'h3b30;
    EFX_LUT4 LUT__3809 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1714)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3809.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3810 (.I0(n1701), .I1(n1703), .I2(n1707), .I3(n1714), 
            .O(n1715)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3810.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3811 (.I0(n1652), .I1(n1715), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .O(\Inst_MPU6500_Controller/n740 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3811.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3812 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1715), 
            .O(n1716)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3812.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3813 (.I0(n1652), .I1(n1716), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(\Inst_MPU6500_Controller/n740 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3813.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3814 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n1684), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n1717)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3814.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3815 (.I0(n1642), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(n1716), .O(n1718)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3815.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3816 (.I0(n1662), .I1(n1667), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1719)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__3816.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__3817 (.I0(n1717), .I1(n1718), .I2(n1719), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(\Inst_MPU6500_Controller/n740 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3817.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3818 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1715), 
            .O(n1720)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3818.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3819 (.I0(n1667), .I1(n1662), .I2(n1720), .I3(n1717), 
            .O(n1721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3819.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3820 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n1722)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3820.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3821 (.I0(n1715), .I1(n1722), .O(n1723)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3821.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3822 (.I0(n1678), .I1(n1642), .I2(n1723), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__3822.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__3823 (.I0(n1724), .I1(n1719), .I2(n1721), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(\Inst_MPU6500_Controller/n740 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3823.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__3824 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(n1723), 
            .O(n1725)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3824.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3825 (.I0(n1695), .I1(n1725), .I2(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I3(n1669), .O(\Inst_MPU6500_Controller/n740 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ca0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3825.LUTMASK = 16'h3ca0;
    EFX_LUT4 LUT__3826 (.I0(\Inst_MPU6500_Controller/delay_cntr [18]), .I1(n1668), 
            .O(n1726)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3826.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3827 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(n1722), .O(n1727)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3827.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3828 (.I0(n1715), .I1(n1727), .I2(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n1728)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__3828.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3829 (.I0(n1667), .I1(n1662), .I2(n1651), .I3(n1728), 
            .O(n1729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__3829.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__3830 (.I0(n1642), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .I2(n1668), .O(n1730)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3830.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3831 (.I0(n1678), .I1(n1651), .I2(n1728), .I3(n1730), 
            .O(n1731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3831.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3832 (.I0(n1726), .I1(n1695), .I2(n1729), .I3(n1731), 
            .O(\Inst_MPU6500_Controller/n740 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3832.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__3833 (.I0(\Inst_MPU6500_Controller/delay_cntr [18]), .I1(n1715), 
            .I2(n1727), .O(n1732)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3833.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3834 (.I0(n1652), .I1(n1732), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(\Inst_MPU6500_Controller/n740 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3834.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3835 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(n1732), 
            .O(n1733)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3835.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3836 (.I0(n1652), .I1(n1733), .I2(n1669), .I3(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(\Inst_MPU6500_Controller/n740 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3836.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3837 (.I0(n1642), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [19]), .I3(n1732), .O(n1734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3837.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3838 (.I0(n1717), .I1(n1734), .I2(n1719), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(\Inst_MPU6500_Controller/n740 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3838.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3839 (.I0(\Inst_MPU6500_Controller/raw_data[3] [1]), .I1(\Inst_MPU6500_Controller/raw_data[3] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [3]), .I3(\Inst_MPU6500_Controller/raw_data[3] [4]), 
            .O(n1735)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3839.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3840 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(n1735), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [6]), .O(\Inst_MPU6500_Controller/n4275 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3840.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3841 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .I2(n1735), .I3(\Inst_MPU6500_Controller/raw_data[3] [7]), .O(\Inst_MPU6500_Controller/n4280 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3841.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3842 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [7]), .I3(n1735), .O(n1736)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3842.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3843 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(n1736), 
            .O(\Inst_MPU6500_Controller/n4285 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3843.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3844 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(n1736), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [1]), .O(\Inst_MPU6500_Controller/n4290 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3844.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3845 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[2] [1]), 
            .I2(n1736), .O(n1737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3845.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3846 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(n1737), 
            .O(\Inst_MPU6500_Controller/n4295 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3846.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3847 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(n1737), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [3]), .O(\Inst_MPU6500_Controller/n4300 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3847.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3848 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .I2(n1737), .I3(\Inst_MPU6500_Controller/raw_data[2] [4]), .O(\Inst_MPU6500_Controller/n4305 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3848.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3849 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [4]), .I3(n1737), .O(n1738)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3849.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3850 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n1738), 
            .O(\Inst_MPU6500_Controller/n4310 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3850.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3851 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n1738), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [6]), .O(\Inst_MPU6500_Controller/n4315 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3851.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3852 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(\Inst_MPU6500_Controller/raw_data[2] [6]), 
            .I2(n1738), .I3(\Inst_MPU6500_Controller/raw_data[2] [7]), .O(\Inst_MPU6500_Controller/n4320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3852.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3853 (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), .I1(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .O(\Inst_MPU6500_Controller/n4415 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3853.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3854 (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), .I1(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [3]), .O(\Inst_MPU6500_Controller/n4420 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3854.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__3855 (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), .I1(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [3]), .I3(\Inst_MPU6500_Controller/raw_data[9] [4]), 
            .O(\Inst_MPU6500_Controller/n4425 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf807 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3855.LUTMASK = 16'hf807;
    EFX_LUT4 LUT__3856 (.I0(spi_to_mpu_data[2]), .I1(spi_to_mpu_data[1]), 
            .I2(spi_to_mpu_data[3]), .I3(spi_to_mpu_data[4]), .O(n1739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3856.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3857 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1739_q), 
            .O(\Inst_MPU6500_Controller/n4430 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3857.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3858 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1739_q), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [6]), .O(\Inst_MPU6500_Controller/n4435 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3858.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3859 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1739_q), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [6]), .I3(\Inst_MPU6500_Controller/raw_data[9] [7]), 
            .O(\Inst_MPU6500_Controller/n4440 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he01f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3859.LUTMASK = 16'he01f;
    EFX_LUT4 LUT__3860 (.I0(spi_to_mpu_data[5]), .I1(n1739), .I2(spi_to_mpu_data[6]), 
            .I3(spi_to_mpu_data[7]), .O(n1740)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3860.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3861 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(n1740_q), 
            .O(\Inst_MPU6500_Controller/n4445 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3861.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3862 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(n1740_q), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [1]), .O(\Inst_MPU6500_Controller/n4450 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3862.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3863 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(\Inst_MPU6500_Controller/raw_data[8] [1]), 
            .I2(n1740_q), .I3(\Inst_MPU6500_Controller/raw_data[8] [2]), 
            .O(\Inst_MPU6500_Controller/n4455 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3863.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3864 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(\Inst_MPU6500_Controller/raw_data[8] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [2]), .I3(n1740_q), 
            .O(n1741)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3864.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3865 (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), .I1(n1741), 
            .O(\Inst_MPU6500_Controller/n4460 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3865.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3866 (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), .I1(n1741), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [4]), .O(\Inst_MPU6500_Controller/n4465 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3866.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3867 (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), .I1(\Inst_MPU6500_Controller/raw_data[8] [4]), 
            .I2(n1741), .O(n1742)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3867.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3868 (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), .I1(n1742), 
            .O(\Inst_MPU6500_Controller/n4470 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3868.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3869 (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), .I1(n1742), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [6]), .O(\Inst_MPU6500_Controller/n4475 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3869.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3870 (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), .I1(\Inst_MPU6500_Controller/raw_data[8] [6]), 
            .I2(n1742), .I3(\Inst_MPU6500_Controller/raw_data[8] [7]), .O(\Inst_MPU6500_Controller/n4480 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3870.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3871 (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), .I1(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .O(\Inst_MPU6500_Controller/n4495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3871.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3872 (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), .I1(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [3]), .O(\Inst_MPU6500_Controller/n4500 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3872.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__3873 (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), .I1(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [3]), .I3(\Inst_MPU6500_Controller/raw_data[11] [4]), 
            .O(\Inst_MPU6500_Controller/n4505 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3873.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__3874 (.I0(spi_to_mpu_data[2]), .I1(spi_to_mpu_data[1]), 
            .I2(spi_to_mpu_data[3]), .I3(spi_to_mpu_data[4]), .O(n1743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__3874.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__3875 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(n1743_q), 
            .O(\Inst_MPU6500_Controller/n4510 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3875.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3876 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(n1743_q), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [6]), .O(\Inst_MPU6500_Controller/n4515 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3876.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3877 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(\Inst_MPU6500_Controller/raw_data[11] [6]), 
            .I2(n1743_q), .I3(\Inst_MPU6500_Controller/raw_data[11] [7]), 
            .O(\Inst_MPU6500_Controller/n4520 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3877.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3878 (.I0(spi_to_mpu_data[5]), .I1(spi_to_mpu_data[6]), 
            .I2(spi_to_mpu_data[7]), .I3(n1743), .O(n1744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3878.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3879 (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), .I1(n1744_q), 
            .O(\Inst_MPU6500_Controller/n4525 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3879.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3880 (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), .I1(n1744_q), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [1]), .O(\Inst_MPU6500_Controller/n4530 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3880.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3881 (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), .I1(\Inst_MPU6500_Controller/raw_data[10] [1]), 
            .I2(n1744_q), .O(n1745)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3881.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3882 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(n1745), 
            .O(\Inst_MPU6500_Controller/n4535 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3882.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3883 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(n1745), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [3]), .O(\Inst_MPU6500_Controller/n4540 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3883.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3884 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(\Inst_MPU6500_Controller/raw_data[10] [3]), 
            .I2(n1745), .I3(\Inst_MPU6500_Controller/raw_data[10] [4]), 
            .O(\Inst_MPU6500_Controller/n4545 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3884.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3885 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(\Inst_MPU6500_Controller/raw_data[10] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [4]), .I3(n1745), 
            .O(n1746)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3885.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3886 (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), .I1(n1746), 
            .O(\Inst_MPU6500_Controller/n4550 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3886.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3887 (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), .I1(n1746), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [6]), .O(\Inst_MPU6500_Controller/n4555 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3887.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3888 (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), .I1(\Inst_MPU6500_Controller/raw_data[10] [6]), 
            .I2(n1746), .I3(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .O(\Inst_MPU6500_Controller/n4560 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3888.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3889 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .O(\Inst_MPU6500_Controller/n4570 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3889.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3890 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .O(\Inst_MPU6500_Controller/n4575 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3890.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3891 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(\Inst_MPU6500_Controller/n4580 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3891.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__3892 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(n1747)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3892.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3893 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(n1747), 
            .O(\Inst_MPU6500_Controller/n4585 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3893.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3894 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(n1747), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [5]), .O(\Inst_MPU6500_Controller/n4590 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3894.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3895 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I2(n1747), .I3(\Inst_MPU6500_Controller/raw_data[13] [6]), 
            .O(\Inst_MPU6500_Controller/n4595 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3895.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3896 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [6]), .O(n1748)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3896.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3897 (.I0(n1747), .I1(n1748), .O(n1749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3897.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3898 (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), .I1(n1749), 
            .O(\Inst_MPU6500_Controller/n4600 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3898.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3899 (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), .I1(n1749), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [0]), .O(\Inst_MPU6500_Controller/n4605 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3899.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3900 (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .I2(n1749), .I3(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .O(\Inst_MPU6500_Controller/n4610 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3900.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3901 (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), .I1(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [7]), .O(n1750)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3901.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3902 (.I0(n1747), .I1(n1748), .I2(n1750), .O(n1751)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3902.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3903 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(n1751), 
            .O(\Inst_MPU6500_Controller/n4615 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3903.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3904 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(n1751), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [3]), .O(\Inst_MPU6500_Controller/n4620 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3904.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3905 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(\Inst_MPU6500_Controller/raw_data[12] [3]), 
            .I2(n1751), .I3(\Inst_MPU6500_Controller/raw_data[12] [4]), 
            .O(\Inst_MPU6500_Controller/n4625 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3905.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3906 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(\Inst_MPU6500_Controller/raw_data[12] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [4]), .I3(n1751), 
            .O(n1752)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3906.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3907 (.I0(\Inst_MPU6500_Controller/raw_data[12] [5]), .I1(n1752), 
            .O(\Inst_MPU6500_Controller/n4630 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3907.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3908 (.I0(\Inst_MPU6500_Controller/raw_data[12] [5]), .I1(n1752), 
            .O(n1753)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3908.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3909 (.I0(\Inst_MPU6500_Controller/raw_data[12] [6]), .I1(n1753), 
            .O(\Inst_MPU6500_Controller/n4635 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3909.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3910 (.I0(\Inst_MPU6500_Controller/raw_data[12] [6]), .I1(n1753), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [7]), .O(\Inst_MPU6500_Controller/n4640 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3910.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3911 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1648), .O(\Inst_MPU6500_Controller/n6195 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3911.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3912 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1648), .O(\Inst_MPU6500_Controller/n6209 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__3912.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3913 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(n1754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3913.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3914 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[1]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3914.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3915 (.I0(n1754), .I1(n1641), .I2(n1755), .O(\Inst_MPU6500_Controller/n768 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3915.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__3916 (.I0(n1754), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n768 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3916.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__3917 (.I0(n1644), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/n777 ), .O(ceg_net309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__3917.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3918 (.I0(n1754), .I1(mpu_to_spi_data[3]), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1756)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3918.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3919 (.I0(n1756), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n768 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3919.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__3920 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(n1640), .O(\Inst_MPU6500_Controller/n731 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3920.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3921 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(n1641), .O(n1757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3921.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3922 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[4]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1758)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3922.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3923 (.I0(\Inst_MPU6500_Controller/n731 [1]), .I1(n1757), 
            .I2(n1758), .O(\Inst_MPU6500_Controller/n768 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3923.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__3924 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n1641), .O(\Inst_MPU6500_Controller/n768 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3924.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3925 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[5]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1759)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3925.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3926 (.I0(\Inst_MPU6500_Controller/n768 [6]), .I1(n1759), 
            .O(\Inst_MPU6500_Controller/n768 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3926.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3927 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1672), 
            .O(\Inst_MPU6500_Controller/n768 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3927.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3928 (.I0(n1649), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n1686), .I3(n1673), .O(\Inst_MPU6500_Controller/n735 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3928.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__3929 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(n1686), 
            .O(n1760)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3929.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3930 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1760), 
            .I2(n1673), .O(\Inst_MPU6500_Controller/n735 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3930.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3931 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1760), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(n1673), .O(\Inst_MPU6500_Controller/n735 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3931.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3932 (.I0(n1678), .I1(n1689), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [1]), .O(n1761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5f0c */ ;
    defparam LUT__3932.LUTMASK = 16'h5f0c;
    EFX_LUT4 LUT__3933 (.I0(n1643), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n1762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ff0 */ ;
    defparam LUT__3933.LUTMASK = 16'h4ff0;
    EFX_LUT4 LUT__3934 (.I0(n1762), .I1(n1761), .I2(n1695), .O(\Inst_MPU6500_Controller/n763 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3934.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3935 (.I0(n1684), .I1(n1646), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n1763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf3ac */ ;
    defparam LUT__3935.LUTMASK = 16'hf3ac;
    EFX_LUT4 LUT__3936 (.I0(n1651), .I1(n1678), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1763), .O(\Inst_MPU6500_Controller/n763 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3936.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__3937 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1640), .O(n1764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3937.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3938 (.I0(n1661), .I1(n1654), .I2(n1658), .I3(n1764), 
            .O(n1765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3938.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3939 (.I0(ceg_net300), .I1(n1765), .O(ceg_net314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__3939.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3940 (.I0(n1646), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1643), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n763 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3940.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__3941 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n1678), .I3(n1698), .O(n1766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__3941.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__3942 (.I0(n1766), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n1765), .I3(ceg_net300), .O(ceg_net315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;
    defparam LUT__3942.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__3943 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(n1754), 
            .I2(n1640), .O(\Inst_MPU6500_Controller/n731 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__3943.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3944 (.I0(\Inst_MPU6500_Controller/n4505 ), .I1(\Inst_MPU6500_Controller/n4515 ), 
            .I2(\Inst_MPU6500_Controller/n4520 ), .I3(\Inst_MPU6500_Controller/n4525 ), 
            .O(n1767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3944.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3945 (.I0(\Inst_MPU6500_Controller/n4505 ), .I1(\Inst_MPU6500_Controller/n4530 ), 
            .I2(\Inst_MPU6500_Controller/n4535 ), .I3(\Inst_MPU6500_Controller/n4540 ), 
            .O(n1768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3945.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3946 (.I0(\Inst_MPU6500_Controller/n4505 ), .I1(\Inst_MPU6500_Controller/n4545 ), 
            .I2(\Inst_MPU6500_Controller/n4550 ), .I3(\Inst_MPU6500_Controller/n4555 ), 
            .O(n1769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__3946.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__3947 (.I0(n1767), .I1(n1768), .I2(n1769), .O(n1770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3947.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3948 (.I0(\Inst_MPU6500_Controller/raw_data[11] [0]), .I1(\Inst_MPU6500_Controller/raw_data[11] [1]), 
            .I2(\Inst_MPU6500_Controller/n4495 ), .I3(\Inst_MPU6500_Controller/n4500 ), 
            .O(n1771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0004 */ ;
    defparam LUT__3948.LUTMASK = 16'h0004;
    EFX_LUT4 LUT__3949 (.I0(n1771), .I1(\Inst_MPU6500_Controller/n4560 ), 
            .O(n1772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3949.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3950 (.I0(gyro_y[4]), .I1(gyro_y[5]), .I2(n1772_q), 
            .I3(n1770_q), .O(n1773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0081 */ ;
    defparam LUT__3950.LUTMASK = 16'h0081;
    EFX_LUT4 LUT__3951 (.I0(angle_pool_y[30]), .I1(n576[30]), .I2(n1773), 
            .O(n609_2[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3951.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3952 (.I0(angle_pool_y[31]), .I1(n576[31]), .I2(n1773), 
            .O(\sub_77/n1 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam LUT__3952.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3953 (.I0(angle_pool_y[29]), .I1(n576[29]), .I2(n1773), 
            .O(n609_3[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3953.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3954 (.I0(angle_pool_y[28]), .I1(n576[28]), .I2(n1773), 
            .O(n609_4[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3954.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3955 (.I0(angle_pool_y[27]), .I1(n576[27]), .I2(n1773), 
            .O(n609_5[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3955.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3956 (.I0(angle_pool_y[26]), .I1(n576[26]), .I2(n1773), 
            .O(n609_6[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3956.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3957 (.I0(angle_pool_y[25]), .I1(n576[25]), .I2(n1773), 
            .O(n609_7[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3957.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3958 (.I0(angle_pool_y[24]), .I1(n576[24]), .I2(n1773), 
            .O(n609_8[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3958.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3959 (.I0(angle_pool_y[23]), .I1(n576[23]), .I2(n1773), 
            .O(n609_9[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3959.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3960 (.I0(angle_pool_y[22]), .I1(n576[22]), .I2(n1773), 
            .O(n609_10[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3960.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3961 (.I0(angle_pool_y[21]), .I1(n576[21]), .I2(n1773), 
            .O(n609_11[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3961.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3962 (.I0(angle_pool_y[20]), .I1(n576[20]), .I2(n1773), 
            .O(n609_12[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3962.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3963 (.I0(angle_pool_y[19]), .I1(n576[19]), .I2(n1773), 
            .O(n609_13[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3963.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3964 (.I0(angle_pool_y[18]), .I1(n576[18]), .I2(n1773), 
            .O(n609_14[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3964.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3965 (.I0(angle_pool_y[17]), .I1(n576[17]), .I2(n1773), 
            .O(n609_15[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3965.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3966 (.I0(angle_pool_y[16]), .I1(n576[16]), .I2(n1773), 
            .O(n609_16[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3966.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3967 (.I0(angle_pool_y[15]), .I1(n576[15]), .I2(n1773), 
            .O(n609_17[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3967.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3968 (.I0(angle_pool_y[14]), .I1(n576[14]), .I2(n1773), 
            .O(n609_18[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3968.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3969 (.I0(angle_pool_y[13]), .I1(n576[13]), .I2(n1773), 
            .O(n609_19[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3969.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3970 (.I0(angle_pool_y[12]), .I1(n576[12]), .I2(n1773), 
            .O(n609_20[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3970.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3971 (.I0(angle_pool_y[11]), .I1(n576[11]), .I2(n1773), 
            .O(n609_21[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3971.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3972 (.I0(angle_pool_y[10]), .I1(n576[10]), .I2(n1773), 
            .O(n609_22[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3972.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3973 (.I0(angle_pool_y[9]), .I1(n576[9]), .I2(n1773), 
            .O(n609_23[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3973.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3974 (.I0(angle_pool_y[8]), .I1(n576[8]), .I2(n1773), 
            .O(n609_24[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3974.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3975 (.I0(angle_pool_y[7]), .I1(n576[7]), .I2(n1773), 
            .O(n609_25[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3975.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3976 (.I0(angle_pool_y[6]), .I1(n576[6]), .I2(n1773), 
            .O(n609_26[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3976.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3977 (.I0(angle_pool_y[5]), .I1(n576[5]), .I2(n1773), 
            .O(n609_27[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3977.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3978 (.I0(angle_pool_y[4]), .I1(n576[4]), .I2(n1773), 
            .O(n609_28[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3978.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3979 (.I0(angle_pool_y[3]), .I1(n576[3]), .I2(n1773), 
            .O(n609_29[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3979.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3980 (.I0(angle_pool_y[2]), .I1(n576[2]), .I2(n1773), 
            .O(n609_30[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3980.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3981 (.I0(angle_pool_y[1]), .I1(n576[1]), .I2(n1773), 
            .O(n609_31[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__3981.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3982 (.I0(angle_pool_x[30]), .I1(n404[30]), .I2(n1622), 
            .O(n437_3[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3982.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3983 (.I0(angle_pool_x[31]), .I1(n404[31]), .I2(n1622), 
            .O(\sub_52/n1 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam LUT__3983.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3984 (.I0(angle_pool_x[29]), .I1(n404[29]), .I2(n1622), 
            .O(n437_4[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3984.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3985 (.I0(n404[28]), .I1(angle_pool_x[28]), .I2(n1622), 
            .O(n437_5[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3985.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3986 (.I0(n404[27]), .I1(angle_pool_x[27]), .I2(n1622), 
            .O(n437_6[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3986.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3987 (.I0(n404[26]), .I1(angle_pool_x[26]), .I2(n1622), 
            .O(n437_7[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3987.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3988 (.I0(n404[25]), .I1(angle_pool_x[25]), .I2(n1622), 
            .O(n437_8[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3988.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3989 (.I0(n404[24]), .I1(angle_pool_x[24]), .I2(n1622), 
            .O(n437_9[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3989.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3990 (.I0(n404[23]), .I1(angle_pool_x[23]), .I2(n1622), 
            .O(n437_10[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3990.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3991 (.I0(n404[22]), .I1(angle_pool_x[22]), .I2(n1622), 
            .O(n437_11[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3991.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3992 (.I0(n404[21]), .I1(angle_pool_x[21]), .I2(n1622), 
            .O(n437[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3992.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3993 (.I0(n404[20]), .I1(angle_pool_x[20]), .I2(n1622), 
            .O(n437[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3993.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3994 (.I0(n404[19]), .I1(angle_pool_x[19]), .I2(n1622), 
            .O(n437[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3994.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3995 (.I0(n404[18]), .I1(angle_pool_x[18]), .I2(n1622), 
            .O(n437[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3995.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3996 (.I0(n404[17]), .I1(angle_pool_x[17]), .I2(n1622), 
            .O(n437[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3996.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3997 (.I0(n404[16]), .I1(angle_pool_x[16]), .I2(n1622), 
            .O(n437[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3997.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3998 (.I0(n404[15]), .I1(angle_pool_x[15]), .I2(n1622), 
            .O(n437[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3998.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3999 (.I0(n404[14]), .I1(angle_pool_x[14]), .I2(n1622), 
            .O(n437[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__3999.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4000 (.I0(n404[13]), .I1(angle_pool_x[13]), .I2(n1622), 
            .O(n437[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4000.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4001 (.I0(n404[12]), .I1(angle_pool_x[12]), .I2(n1622), 
            .O(n437[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4001.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4002 (.I0(n404[11]), .I1(angle_pool_x[11]), .I2(n1622), 
            .O(n437[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4002.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4003 (.I0(n404[10]), .I1(angle_pool_x[10]), .I2(n1622), 
            .O(n437[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4003.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4004 (.I0(n404[9]), .I1(angle_pool_x[9]), .I2(n1622), 
            .O(n437[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4004.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4005 (.I0(n404[8]), .I1(angle_pool_x[8]), .I2(n1622), 
            .O(n437[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4005.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4006 (.I0(n404[7]), .I1(angle_pool_x[7]), .I2(n1622), 
            .O(n437[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4006.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4007 (.I0(n404[5]), .I1(angle_pool_x[5]), .I2(n1622), 
            .O(n437[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4007.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4008 (.I0(n404[4]), .I1(angle_pool_x[4]), .I2(n1622), 
            .O(n437[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4008.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4009 (.I0(n404[3]), .I1(angle_pool_x[3]), .I2(n1622), 
            .O(n437[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4009.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4010 (.I0(n404[2]), .I1(angle_pool_x[2]), .I2(n1622), 
            .O(n437[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4010.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4011 (.I0(n404[1]), .I1(angle_pool_x[1]), .I2(n1622), 
            .O(n437[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(697)
    defparam LUT__4011.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4012 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(n1774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4012.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4013 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(n1774), 
            .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4013.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4014 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n1775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4014.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4015 (.I0(\Inst_Spi_Mode_3/bitcounter [3]), .I1(n1775), 
            .O(n1776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4015.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4016 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n1776), .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4016.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4017 (.I0(spi_start), .I1(n1774), .O(n1777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4017.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4018 (.I0(n1776), .I1(n1774), .I2(n1777), .O(ceg_net318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(181)
    defparam LUT__4018.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4019 (.I0(mpu_to_spi_data[0]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4019.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4020 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1776), .O(n1778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__4020.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__4021 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4021.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4022 (.I0(n1779), .I1(n1778), .I2(n1777), .O(ceg_net207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__4022.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__4023 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4023.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__4024 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n1779), .O(n1780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4024.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4025 (.I0(n1780), .I1(n1776), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__4025.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__4026 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net69 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__4026.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__4027 (.I0(n1774), .I1(n1776), .O(ceg_net209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4027.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4028 (.I0(\Inst_Spi_Mode_3/data_buffer [7]), .I1(\Inst_Spi_Mode_3/data_buffer [5]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha0cf */ ;
    defparam LUT__4028.LUTMASK = 16'ha0cf;
    EFX_LUT4 LUT__4029 (.I0(\Inst_Spi_Mode_3/data_buffer [6]), .I1(\Inst_Spi_Mode_3/data_buffer [4]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1781), .O(n1782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc0a */ ;
    defparam LUT__4029.LUTMASK = 16'hfc0a;
    EFX_LUT4 LUT__4030 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha0cf */ ;
    defparam LUT__4030.LUTMASK = 16'ha0cf;
    EFX_LUT4 LUT__4031 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1783), .O(n1784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc0a */ ;
    defparam LUT__4031.LUTMASK = 16'hfc0a;
    EFX_LUT4 LUT__4032 (.I0(n1784), .I1(n1782), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__4032.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4033 (.I0(\~ceg_net69 ), .I1(n1776), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(349)
    defparam LUT__4033.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__4034 (.I0(mpu_to_spi_data[1]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4034.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4035 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1778), .I3(n1777), .O(ceg_net210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4035.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4036 (.I0(mpu_to_spi_data[2]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4036.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4037 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1778), .I3(n1777), .O(ceg_net211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4037.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4038 (.I0(mpu_to_spi_data[3]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4038.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4039 (.I0(n1778), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1777), .O(ceg_net212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__4039.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__4040 (.I0(mpu_to_spi_data[4]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4040.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4041 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1776), .O(n1785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__4041.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__4042 (.I0(n1785), .I1(n1779), .I2(n1777), .O(ceg_net213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__4042.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__4043 (.I0(mpu_to_spi_data[5]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4043.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4044 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1785), .I3(n1777), .O(ceg_net214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4044.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4045 (.I0(mpu_to_spi_data[6]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4045.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4046 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1785), .I3(n1777), .O(ceg_net215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4046.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4047 (.I0(mpu_to_spi_data[7]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4047.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4048 (.I0(n1785), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1777), .O(ceg_net216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__4048.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__4049 (.I0(n1774), .I1(\Inst_Spi_Mode_3/bitcounter [0]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4049.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__4050 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(n1774), .I3(\Inst_Spi_Mode_3/bitcounter [2]), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4050.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__4051 (.I0(n1774), .I1(\Inst_Spi_Mode_3/bitcounter [3]), 
            .I2(n1775), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4051.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__4052 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4052.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__4053 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n1779), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6f6f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4053.LUTMASK = 16'h6f6f;
    EFX_LUT4 LUT__4054 (.I0(n1780), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4054.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__4055 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .I3(\Inst_pwm_servo_0/counter [4]), 
            .O(n1786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__4055.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__4056 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n1787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4056.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4057 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .O(n1788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4057.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4058 (.I0(n1786), .I1(\Inst_pwm_servo_0/counter [5]), 
            .I2(n1787), .I3(n1788), .O(n1789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__4058.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__4059 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/counter [18]), 
            .O(n1790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4059.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4060 (.I0(\Inst_pwm_servo_0/counter [12]), .I1(n1789), 
            .I2(\Inst_pwm_servo_0/counter [13]), .I3(n1790), .O(n1791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__4060.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__4061 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(n1791), .I3(\Inst_pwm_servo_0/counter [19]), .O(n1792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__4061.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__4062 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4062.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4063 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4063.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4064 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4064.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4065 (.I0(\Inst_pwm_servo_0/counter [0]), .I1(n1792), 
            .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4065.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4066 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [1]), .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4066.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4067 (.I0(\Inst_pwm_servo_0/counter [13]), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/pulse_width [13]), .I3(\Inst_pwm_servo_0/pulse_width [12]), 
            .O(n1793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__4067.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__4068 (.I0(\Inst_pwm_servo_0/counter [16]), .I1(\Inst_pwm_servo_0/pulse_width [16]), 
            .I2(\Inst_pwm_servo_0/counter [15]), .I3(\Inst_pwm_servo_0/pulse_width [15]), 
            .O(n1794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4068.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4069 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/pulse_width[14] ), 
            .I2(n1793), .I3(n1794), .O(n1795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__4069.LUTMASK = 16'he800;
    EFX_LUT4 LUT__4070 (.I0(\Inst_pwm_servo_0/counter [3]), .I1(\Inst_pwm_servo_0/pulse_width[3] ), 
            .O(n1796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4070.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4071 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/pulse_width [2]), 
            .I2(\Inst_pwm_servo_0/counter [1]), .O(n1797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__4071.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__4072 (.I0(\Inst_pwm_servo_0/pulse_width[3] ), .I1(\Inst_pwm_servo_0/counter [3]), 
            .I2(\Inst_pwm_servo_0/counter [4]), .I3(\Inst_pwm_servo_0/pulse_width[4] ), 
            .O(n1798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__4072.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__4073 (.I0(\Inst_pwm_servo_0/pulse_width [6]), .I1(\Inst_pwm_servo_0/counter [6]), 
            .I2(\Inst_pwm_servo_0/pulse_width [5]), .I3(\Inst_pwm_servo_0/counter [5]), 
            .O(n1799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4073.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4074 (.I0(n1797), .I1(n1796), .I2(n1798), .I3(n1799), 
            .O(n1800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__4074.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__4075 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/counter [4]), 
            .I2(\Inst_pwm_servo_0/pulse_width[4] ), .I3(\Inst_pwm_servo_0/pulse_width [5]), 
            .O(n1801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__4075.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__4076 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(n1801), 
            .I2(\Inst_pwm_servo_0/pulse_width [6]), .O(n1802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__4076.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__4077 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/pulse_width [7]), .I3(\Inst_pwm_servo_0/counter [7]), 
            .O(n1803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__4077.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__4078 (.I0(\Inst_pwm_servo_0/counter [8]), .I1(\Inst_pwm_servo_0/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_0/counter [7]), .I3(\Inst_pwm_servo_0/pulse_width [7]), 
            .O(n1804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__4078.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__4079 (.I0(\Inst_pwm_servo_0/pulse_width [9]), .I1(\Inst_pwm_servo_0/counter [9]), 
            .I2(n1804), .O(n1805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__4079.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__4080 (.I0(n1802), .I1(n1800), .I2(n1803), .I3(n1805), 
            .O(n1806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__4080.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__4081 (.I0(\Inst_pwm_servo_0/pulse_width [10]), .I1(\Inst_pwm_servo_0/counter [10]), 
            .I2(\Inst_pwm_servo_0/pulse_width [9]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n1807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4081.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4082 (.I0(\Inst_pwm_servo_0/counter [11]), .I1(\Inst_pwm_servo_0/pulse_width [11]), 
            .I2(\Inst_pwm_servo_0/counter [10]), .I3(\Inst_pwm_servo_0/pulse_width [10]), 
            .O(n1808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4082.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4083 (.I0(\Inst_pwm_servo_0/pulse_width [13]), .I1(\Inst_pwm_servo_0/counter [13]), 
            .O(n1809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4083.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4084 (.I0(\Inst_pwm_servo_0/pulse_width [12]), .I1(\Inst_pwm_servo_0/counter [12]), 
            .I2(\Inst_pwm_servo_0/pulse_width [11]), .I3(\Inst_pwm_servo_0/counter [11]), 
            .O(n1810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4084.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4085 (.I0(\Inst_pwm_servo_0/pulse_width[14] ), .I1(\Inst_pwm_servo_0/counter [14]), 
            .I2(n1809), .I3(n1810), .O(n1811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__4085.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__4086 (.I0(n1806), .I1(n1807), .I2(n1808), .I3(n1811), 
            .O(n1812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__4086.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__4087 (.I0(\Inst_pwm_servo_0/counter [17]), .I1(\Inst_pwm_servo_0/counter [18]), 
            .I2(\Inst_pwm_servo_0/counter [19]), .O(n1813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__4087.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__4088 (.I0(\Inst_pwm_servo_0/counter [16]), .I1(\Inst_pwm_servo_0/pulse_width [16]), 
            .I2(\Inst_pwm_servo_0/pulse_width [15]), .I3(\Inst_pwm_servo_0/counter [15]), 
            .O(n1814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__4088.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__4089 (.I0(n1812), .I1(n1795), .I2(n1813), .I3(n1814), 
            .O(\Inst_pwm_servo_0/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4089.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__4090 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4090.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4091 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4091.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4092 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4092.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4093 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4093.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4094 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4094.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4095 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4095.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4096 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4096.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4097 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4097.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4098 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4098.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4099 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4099.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4100 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4100.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4101 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4101.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4102 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [17]), .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4102.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4103 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [18]), .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4103.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4104 (.I0(n1792), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4104.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4105 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(n1791), .I3(\Inst_pwm_servo_1/counter [19]), .O(n1815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__4105.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__4106 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_1/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4106.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4107 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_1/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4107.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4108 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_1/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4108.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4109 (.I0(\Inst_pwm_servo_1/counter [0]), .I1(n1815), 
            .O(\Inst_pwm_servo_1/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4109.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4110 (.I0(n1815), .I1(\Inst_pwm_servo_1/n42 [1]), .O(\Inst_pwm_servo_1/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4110.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4111 (.I0(\Inst_pwm_servo_1/counter [13]), .I1(\Inst_pwm_servo_1/counter [12]), 
            .I2(\Inst_pwm_servo_1/pulse_width [13]), .I3(\Inst_pwm_servo_1/pulse_width [12]), 
            .O(n1816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__4111.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__4112 (.I0(\Inst_pwm_servo_1/counter [16]), .I1(\Inst_pwm_servo_1/pulse_width [16]), 
            .I2(\Inst_pwm_servo_1/counter [15]), .I3(\Inst_pwm_servo_1/pulse_width [15]), 
            .O(n1817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4112.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4113 (.I0(\Inst_pwm_servo_1/counter [14]), .I1(\Inst_pwm_servo_1/pulse_width[14] ), 
            .I2(n1816), .I3(n1817), .O(n1818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__4113.LUTMASK = 16'he800;
    EFX_LUT4 LUT__4114 (.I0(\Inst_pwm_servo_1/counter [3]), .I1(\Inst_pwm_servo_1/pulse_width[3] ), 
            .O(n1819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4114.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4115 (.I0(\Inst_pwm_servo_1/counter [2]), .I1(\Inst_pwm_servo_1/pulse_width [2]), 
            .I2(\Inst_pwm_servo_1/counter [1]), .O(n1820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__4115.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__4116 (.I0(\Inst_pwm_servo_1/pulse_width[3] ), .I1(\Inst_pwm_servo_1/counter [3]), 
            .I2(\Inst_pwm_servo_1/counter [4]), .I3(\Inst_pwm_servo_1/pulse_width[4] ), 
            .O(n1821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__4116.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__4117 (.I0(\Inst_pwm_servo_1/pulse_width [6]), .I1(\Inst_pwm_servo_1/counter [6]), 
            .I2(\Inst_pwm_servo_1/pulse_width [5]), .I3(\Inst_pwm_servo_1/counter [5]), 
            .O(n1822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4117.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4118 (.I0(n1820), .I1(n1819), .I2(n1821), .I3(n1822), 
            .O(n1823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__4118.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__4119 (.I0(\Inst_pwm_servo_1/counter [5]), .I1(\Inst_pwm_servo_1/counter [4]), 
            .I2(\Inst_pwm_servo_1/pulse_width[4] ), .I3(\Inst_pwm_servo_1/pulse_width [5]), 
            .O(n1824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__4119.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__4120 (.I0(\Inst_pwm_servo_1/counter [6]), .I1(n1824), 
            .I2(\Inst_pwm_servo_1/pulse_width [6]), .O(n1825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__4120.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__4121 (.I0(\Inst_pwm_servo_1/counter [8]), .I1(\Inst_pwm_servo_1/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_1/pulse_width [7]), .I3(\Inst_pwm_servo_1/counter [7]), 
            .O(n1826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__4121.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__4122 (.I0(\Inst_pwm_servo_1/counter [8]), .I1(\Inst_pwm_servo_1/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_1/counter [7]), .I3(\Inst_pwm_servo_1/pulse_width [7]), 
            .O(n1827)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__4122.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__4123 (.I0(\Inst_pwm_servo_1/pulse_width [9]), .I1(\Inst_pwm_servo_1/counter [9]), 
            .I2(n1827), .O(n1828)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__4123.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__4124 (.I0(n1825), .I1(n1823), .I2(n1826), .I3(n1828), 
            .O(n1829)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__4124.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__4125 (.I0(\Inst_pwm_servo_1/pulse_width [10]), .I1(\Inst_pwm_servo_1/counter [10]), 
            .I2(\Inst_pwm_servo_1/pulse_width [9]), .I3(\Inst_pwm_servo_1/counter [9]), 
            .O(n1830)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4125.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4126 (.I0(\Inst_pwm_servo_1/counter [11]), .I1(\Inst_pwm_servo_1/pulse_width [11]), 
            .I2(\Inst_pwm_servo_1/counter [10]), .I3(\Inst_pwm_servo_1/pulse_width [10]), 
            .O(n1831)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4126.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4127 (.I0(\Inst_pwm_servo_1/pulse_width [13]), .I1(\Inst_pwm_servo_1/counter [13]), 
            .O(n1832)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4127.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4128 (.I0(\Inst_pwm_servo_1/pulse_width [12]), .I1(\Inst_pwm_servo_1/counter [12]), 
            .I2(\Inst_pwm_servo_1/pulse_width [11]), .I3(\Inst_pwm_servo_1/counter [11]), 
            .O(n1833)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4128.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4129 (.I0(\Inst_pwm_servo_1/pulse_width[14] ), .I1(\Inst_pwm_servo_1/counter [14]), 
            .I2(n1832), .I3(n1833), .O(n1834)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__4129.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__4130 (.I0(n1829), .I1(n1830), .I2(n1831), .I3(n1834), 
            .O(n1835)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__4130.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__4131 (.I0(\Inst_pwm_servo_1/counter [16]), .I1(\Inst_pwm_servo_1/pulse_width [16]), 
            .I2(\Inst_pwm_servo_1/pulse_width [15]), .I3(\Inst_pwm_servo_1/counter [15]), 
            .O(n1836)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__4131.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__4132 (.I0(n1835), .I1(n1818), .I2(n1813), .I3(n1836), 
            .O(\Inst_pwm_servo_1/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4132.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__4133 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_1/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4133.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4134 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_1/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4134.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4135 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_1/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4135.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4136 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_1/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4136.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4137 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_1/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4137.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4138 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_1/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4138.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4139 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_1/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4139.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4140 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_1/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4140.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4141 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_1/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4141.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4142 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_1/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4142.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4143 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_1/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4143.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4144 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_1/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4144.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4145 (.I0(n1815), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_1/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4145.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4146 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(n1791), .I3(\Inst_pwm_servo_2/counter [19]), .O(n1837)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__4146.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__4147 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_2/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4147.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4148 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_2/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4148.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4149 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_2/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4149.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4150 (.I0(\Inst_pwm_servo_2/counter [0]), .I1(n1837), 
            .O(\Inst_pwm_servo_2/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4150.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4151 (.I0(n1837), .I1(\Inst_pwm_servo_2/n42 [1]), .O(\Inst_pwm_servo_2/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4151.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4152 (.I0(\Inst_pwm_servo_2/counter [13]), .I1(\Inst_pwm_servo_2/counter [12]), 
            .I2(\Inst_pwm_servo_2/pulse_width [13]), .I3(\Inst_pwm_servo_2/pulse_width [12]), 
            .O(n1838)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__4152.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__4153 (.I0(\Inst_pwm_servo_2/counter [16]), .I1(\Inst_pwm_servo_2/pulse_width [16]), 
            .I2(\Inst_pwm_servo_2/counter [15]), .I3(\Inst_pwm_servo_2/pulse_width [15]), 
            .O(n1839)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4153.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4154 (.I0(\Inst_pwm_servo_2/counter [14]), .I1(\Inst_pwm_servo_2/pulse_width[14] ), 
            .I2(n1838), .I3(n1839), .O(n1840)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he800 */ ;
    defparam LUT__4154.LUTMASK = 16'he800;
    EFX_LUT4 LUT__4155 (.I0(\Inst_pwm_servo_2/counter [3]), .I1(\Inst_pwm_servo_2/pulse_width[3] ), 
            .O(n1841)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4155.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4156 (.I0(\Inst_pwm_servo_2/counter [2]), .I1(\Inst_pwm_servo_2/pulse_width [2]), 
            .I2(\Inst_pwm_servo_2/counter [1]), .O(n1842)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__4156.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__4157 (.I0(\Inst_pwm_servo_2/pulse_width[3] ), .I1(\Inst_pwm_servo_2/counter [3]), 
            .I2(\Inst_pwm_servo_2/counter [4]), .I3(\Inst_pwm_servo_2/pulse_width[4] ), 
            .O(n1843)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__4157.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__4158 (.I0(\Inst_pwm_servo_2/pulse_width [6]), .I1(\Inst_pwm_servo_2/counter [6]), 
            .I2(\Inst_pwm_servo_2/pulse_width [5]), .I3(\Inst_pwm_servo_2/counter [5]), 
            .O(n1844)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4158.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4159 (.I0(n1842), .I1(n1841), .I2(n1843), .I3(n1844), 
            .O(n1845)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__4159.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__4160 (.I0(\Inst_pwm_servo_2/counter [5]), .I1(\Inst_pwm_servo_2/counter [4]), 
            .I2(\Inst_pwm_servo_2/pulse_width[4] ), .I3(\Inst_pwm_servo_2/pulse_width [5]), 
            .O(n1846)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8fe */ ;
    defparam LUT__4160.LUTMASK = 16'ha8fe;
    EFX_LUT4 LUT__4161 (.I0(\Inst_pwm_servo_2/counter [6]), .I1(n1846), 
            .I2(\Inst_pwm_servo_2/pulse_width [6]), .O(n1847)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__4161.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__4162 (.I0(\Inst_pwm_servo_2/counter [8]), .I1(\Inst_pwm_servo_2/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_2/pulse_width [7]), .I3(\Inst_pwm_servo_2/counter [7]), 
            .O(n1848)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__4162.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__4163 (.I0(\Inst_pwm_servo_2/counter [8]), .I1(\Inst_pwm_servo_2/pulse_width[8] ), 
            .I2(\Inst_pwm_servo_2/counter [7]), .I3(\Inst_pwm_servo_2/pulse_width [7]), 
            .O(n1849)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8ee */ ;
    defparam LUT__4163.LUTMASK = 16'he8ee;
    EFX_LUT4 LUT__4164 (.I0(\Inst_pwm_servo_2/pulse_width [9]), .I1(\Inst_pwm_servo_2/counter [9]), 
            .I2(n1849), .O(n1850)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__4164.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__4165 (.I0(n1847), .I1(n1845), .I2(n1848), .I3(n1850), 
            .O(n1851)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__4165.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__4166 (.I0(\Inst_pwm_servo_2/pulse_width [10]), .I1(\Inst_pwm_servo_2/counter [10]), 
            .I2(\Inst_pwm_servo_2/pulse_width [9]), .I3(\Inst_pwm_servo_2/counter [9]), 
            .O(n1852)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4166.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4167 (.I0(\Inst_pwm_servo_2/counter [11]), .I1(\Inst_pwm_servo_2/pulse_width [11]), 
            .I2(\Inst_pwm_servo_2/counter [10]), .I3(\Inst_pwm_servo_2/pulse_width [10]), 
            .O(n1853)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4167.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4168 (.I0(\Inst_pwm_servo_2/pulse_width [13]), .I1(\Inst_pwm_servo_2/counter [13]), 
            .O(n1854)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4168.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4169 (.I0(\Inst_pwm_servo_2/pulse_width [12]), .I1(\Inst_pwm_servo_2/counter [12]), 
            .I2(\Inst_pwm_servo_2/pulse_width [11]), .I3(\Inst_pwm_servo_2/counter [11]), 
            .O(n1855)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__4169.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__4170 (.I0(\Inst_pwm_servo_2/pulse_width[14] ), .I1(\Inst_pwm_servo_2/counter [14]), 
            .I2(n1854), .I3(n1855), .O(n1856)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__4170.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__4171 (.I0(n1851), .I1(n1852), .I2(n1853), .I3(n1856), 
            .O(n1857)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__4171.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__4172 (.I0(\Inst_pwm_servo_2/counter [16]), .I1(\Inst_pwm_servo_2/pulse_width [16]), 
            .I2(\Inst_pwm_servo_2/pulse_width [15]), .I3(\Inst_pwm_servo_2/counter [15]), 
            .O(n1858)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__4172.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__4173 (.I0(n1857), .I1(n1840), .I2(n1813), .I3(n1858), 
            .O(\Inst_pwm_servo_2/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4173.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__4174 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_2/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4174.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4175 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_2/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4175.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4176 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_2/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4176.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4177 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_2/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4177.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4178 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_2/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4178.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4179 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_2/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4179.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4180 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_2/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4180.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4181 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_2/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4181.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4182 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_2/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4182.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4183 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_2/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4183.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4184 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_2/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4184.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4185 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_2/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4185.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4186 (.I0(n1837), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_2/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(45)
    defparam LUT__4186.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4187 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(n1859)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4187.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4188 (.I0(tx_start_sig), .I1(n1859), .O(\Inst_uart_tx/n333 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__4188.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4189 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(n1859), .O(n1860)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4189.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4190 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n1860), .O(\Inst_uart_tx/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4190.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4191 (.I0(tx_start_sig), .I1(n1859), .O(ceg_net92)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(174)
    defparam LUT__4191.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4192 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/state [0]), 
            .O(n1861)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__4192.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__4193 (.I0(n1861), .I1(\Inst_uart_tx/bitcounter [5]), .I2(tx_start_sig), 
            .I3(n1859), .O(ceg_net319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(174)
    defparam LUT__4193.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__4194 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4194.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4195 (.I0(n1861), .I1(\Inst_uart_tx/state [1]), .I2(\Inst_uart_tx/bitcounter [5]), 
            .I3(\Inst_uart_tx/n333 ), .O(ceg_net222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__4195.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__4196 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4196.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4197 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n115 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4197.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__4198 (.I0(n1860), .I1(\Inst_uart_tx/n115 [1]), .O(ceg_net219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    defparam LUT__4198.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__4199 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [5]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n1862)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4199.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4200 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(n1862), .I3(\Inst_uart_tx/bit_idx [0]), .O(n1863)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__4200.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__4201 (.I0(\Inst_uart_tx/data_buffer [1]), .I1(\Inst_uart_tx/data_buffer [3]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n1864)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__4201.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4202 (.I0(\Inst_uart_tx/bit_idx [1]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(n1864), .I3(\Inst_uart_tx/bit_idx [0]), .O(n1865)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbb0f */ ;
    defparam LUT__4202.LUTMASK = 16'hbb0f;
    EFX_LUT4 LUT__4203 (.I0(\Inst_uart_tx/data_buffer [4]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .O(n1866)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4203.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4204 (.I0(n1865), .I1(n1863), .I2(n1866), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n1867)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;
    defparam LUT__4204.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__4205 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n1868)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__4205.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4206 (.I0(n1868), .I1(n1867), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n119 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4206.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4207 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__4207.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__4208 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n1860), .O(\Inst_uart_tx/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4208.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4209 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n1869)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4209.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4210 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1869), .I2(n1860), 
            .O(\Inst_uart_tx/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4210.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4211 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1869), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n1860), .O(\Inst_uart_tx/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4211.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__4212 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n1869), .O(n1870)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4212.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4213 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1870), .I2(n1860), 
            .O(\Inst_uart_tx/n129 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4213.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4214 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1860), .I2(n1870), 
            .O(\Inst_uart_tx/n129 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4214.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4215 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4215.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4216 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4216.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__4217 (.I0(\Inst_debounce/count_reg [6]), .I1(\Inst_debounce/count_reg [7]), 
            .I2(\Inst_debounce/count_reg [8]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n1871)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__4217.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__4218 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n1872)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4218.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4219 (.I0(n1871), .I1(n1872), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n1873)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__4219.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__4220 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n1874)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__4220.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__4221 (.I0(n1873), .I1(n1874), .O(n1875)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4221.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4222 (.I0(n1875), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(326)
    defparam LUT__4222.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__4223 (.I0(angle_pool_y[0]), .I1(n576[0]), .I2(n1773), 
            .O(n609[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(703)
    defparam LUT__4223.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4224 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n1875), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(326)
    defparam LUT__4224.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__4225 (.I0(n939[1]), .I1(n1615), .O(n973[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4225.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4226 (.I0(n939[2]), .I1(n1615), .O(n973[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4226.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4227 (.I0(n939[3]), .I1(n1615), .O(n973[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4227.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4228 (.I0(n939[4]), .I1(n1615), .O(n973[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4228.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4229 (.I0(n939[5]), .I1(n1615), .O(n973[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4229.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4230 (.I0(n939[6]), .I1(n1615), .O(n973[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4230.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4231 (.I0(n939[7]), .I1(n1615), .O(n973[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4231.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4232 (.I0(n939[8]), .I1(n1615), .O(n973[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4232.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4233 (.I0(n939[9]), .I1(n1615), .O(n973[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4233.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4234 (.I0(n939[10]), .I1(n1615), .O(n973[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4234.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4235 (.I0(n939[11]), .I1(n1615), .O(n973[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4235.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4236 (.I0(n939[12]), .I1(n1615), .O(n973[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4236.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4237 (.I0(n939[13]), .I1(n1615), .O(n973[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4237.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4238 (.I0(n939[14]), .I1(n1615), .O(n973[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4238.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4239 (.I0(n939[15]), .I1(n1615), .O(n973[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4239.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4240 (.I0(n939[16]), .I1(n1615), .O(n973[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4240.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4241 (.I0(n939[17]), .I1(n1615), .O(n973[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4241.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4242 (.I0(n939[18]), .I1(n1615), .O(n973[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4242.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4243 (.I0(n939[19]), .I1(n1615), .O(n973[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4243.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4244 (.I0(n939[20]), .I1(n1615), .O(n973[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4244.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4245 (.I0(n939[21]), .I1(n1615), .O(n973[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(755)
    defparam LUT__4245.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4246 (.I0(angle_pool_y[23]), .I1(angle_pool_y[24]), .I2(angle_pool_y[25]), 
            .I3(angle_pool_y[26]), .O(n1876)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4246.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4247 (.I0(angle_pool_y[19]), .I1(angle_pool_y[20]), .I2(angle_pool_y[21]), 
            .I3(angle_pool_y[22]), .O(n1877)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4247.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4248 (.I0(angle_pool_y[23]), .I1(angle_pool_y[24]), .I2(angle_pool_y[25]), 
            .I3(angle_pool_y[26]), .O(n1878)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__4248.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__4249 (.I0(angle_pool_y[19]), .I1(angle_pool_y[20]), .I2(angle_pool_y[21]), 
            .I3(angle_pool_y[22]), .O(n1879)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__4249.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__4250 (.I0(n1878), .I1(n1879), .O(n1880)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4250.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4251 (.I0(n1877), .I1(n1876), .I2(n1880), .O(n1881)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__4251.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__4252 (.I0(angle_pool_y[12]), .I1(angle_pool_y[13]), .O(n1882)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4252.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4253 (.I0(angle_pool_y[14]), .I1(angle_pool_y[15]), .I2(n1882), 
            .O(n1883)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__4253.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__4254 (.I0(angle_pool_y[16]), .I1(angle_pool_y[17]), .I2(n1883), 
            .O(n1884)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__4254.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__4255 (.I0(angle_pool_y[18]), .I1(n1884), .I2(n1880), 
            .I3(angle_pool_y[31]), .O(n1885)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4fb0 */ ;
    defparam LUT__4255.LUTMASK = 16'h4fb0;
    EFX_LUT4 LUT__4256 (.I0(n1881), .I1(angle_pool_y[12]), .I2(n1885), 
            .O(n908[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4256.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__4257 (.I0(n1881), .I1(angle_pool_y[13]), .I2(angle_pool_y[12]), 
            .I3(n1885), .O(n908[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00eb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4257.LUTMASK = 16'h00eb;
    EFX_LUT4 LUT__4258 (.I0(n1881), .I1(angle_pool_y[14]), .I2(n1882), 
            .I3(n1885), .O(n908[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4258.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4259 (.I0(angle_pool_y[14]), .I1(n1882), .O(n1886)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4259.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4260 (.I0(n1881), .I1(angle_pool_y[15]), .I2(n1886), 
            .I3(n1885), .O(n908[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4260.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4261 (.I0(n1881), .I1(angle_pool_y[16]), .I2(n1883), 
            .I3(n1885), .O(n908[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4261.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4262 (.I0(angle_pool_y[16]), .I1(n1883), .O(n1887)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4262.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4263 (.I0(n1881), .I1(angle_pool_y[17]), .I2(n1887), 
            .I3(n1885), .O(n908[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4263.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4264 (.I0(n1881), .I1(angle_pool_y[18]), .I2(n1884), 
            .I3(n1885), .O(n908[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4264.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4265 (.I0(angle_pool_y[18]), .I1(n1884), .I2(angle_pool_y[19]), 
            .O(n1888)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__4265.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__4266 (.I0(n1888), .I1(n1881), .I2(n1885), .O(n908[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(723)
    defparam LUT__4266.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4267 (.I0(n1628), .I1(angle_pool[13]), .I2(n1629), .O(n928[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4267.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__4268 (.I0(n1628), .I1(angle_pool[14]), .I2(n1629), .O(n928[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4268.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__4269 (.I0(n1628), .I1(angle_pool[15]), .I2(n1629), .O(n928[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4269.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__4270 (.I0(n1628), .I1(angle_pool[16]), .I2(n1629), .O(n928[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4270.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__4271 (.I0(n1628), .I1(angle_pool[17]), .I2(n1629), .O(n928[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4271.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__4272 (.I0(n1628), .I1(angle_pool[18]), .I2(n1629), .O(n928[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4272.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__4273 (.I0(n1627), .I1(angle_pool[31]), .O(n928[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(731)
    defparam LUT__4273.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4274 (.I0(n1635), .I1(angle_pool_x[15]), .I2(angle_pool_x[14]), 
            .I3(n1639), .O(n888[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00eb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4274.LUTMASK = 16'h00eb;
    EFX_LUT4 LUT__4275 (.I0(n1635), .I1(angle_pool_x[16]), .I2(n1636), 
            .I3(n1639), .O(n888[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4275.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4276 (.I0(angle_pool_x[16]), .I1(n1636), .O(n1889)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4276.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4277 (.I0(n1635), .I1(angle_pool_x[17]), .I2(n1889), 
            .I3(n1639), .O(n888[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4277.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4278 (.I0(n1635), .I1(angle_pool_x[18]), .I2(n1637), 
            .I3(n1639), .O(n888[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4278.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4279 (.I0(angle_pool_x[18]), .I1(n1637), .O(n1890)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4279.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4280 (.I0(n1635), .I1(angle_pool_x[19]), .I2(n1890), 
            .I3(n1639), .O(n888[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4280.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4281 (.I0(n1635), .I1(angle_pool_x[20]), .I2(n1638), 
            .I3(n1639), .O(n888[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4281.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__4282 (.I0(angle_pool_x[20]), .I1(n1638), .I2(angle_pool_x[21]), 
            .O(n1891)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__4282.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__4283 (.I0(n1891), .I1(n1635), .I2(n1639), .O(n888[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(714)
    defparam LUT__4283.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3652 (.I0(gyro_z[0]), .I1(gyro_z[1]), .I2(gyro_z[2]), 
            .I3(gyro_z[3]), .O(n1600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3652.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3653 (.I0(n1600), .I1(gyro_z[15]), .O(n1601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3653.LUTMASK = 16'h4444;
    EFX_FF \gyro_x[0]~FF_frt_3_frt_9  (.D(n1621), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(n1621_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[0]~FF_frt_3_frt_9 .CLK_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF_frt_3_frt_9 .CE_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF_frt_3_frt_9 .SR_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF_frt_3_frt_9 .D_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF_frt_3_frt_9 .SR_SYNC = 1'b1;
    defparam \gyro_x[0]~FF_frt_3_frt_9 .SR_VALUE = 1'b0;
    defparam \gyro_x[0]~FF_frt_3_frt_9 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[4]~FF_frt_2_frt_8  (.D(n1619), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(n1619_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_x[4]~FF_frt_2_frt_8 .CLK_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF_frt_2_frt_8 .CE_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF_frt_2_frt_8 .SR_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF_frt_2_frt_8 .D_POLARITY = 1'b0;
    defparam \gyro_x[4]~FF_frt_2_frt_8 .SR_SYNC = 1'b1;
    defparam \gyro_x[4]~FF_frt_2_frt_8 .SR_VALUE = 1'b0;
    defparam \gyro_x[4]~FF_frt_2_frt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12  (.D(n1739), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(n1739_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .D_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF_frt_12 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15  (.D(n1744), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(n1744_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .D_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF_frt_15 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14  (.D(n1740), 
           .CE(\Inst_MPU6500_Controller/n6252 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(n1740_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .D_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF_frt_14 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13  (.D(n1743), 
           .CE(\Inst_MPU6500_Controller/n6266 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(n1743_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF_frt_13 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \sub_52/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), .CI(1'b0), 
            .CO(n1892)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n1895), .O(\Inst_pwm_servo_1/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_1/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n1894), .O(\Inst_pwm_servo_2/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_2/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i31__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), .CI(n1893), 
            .O(\sub_77/add_2/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i31__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i31__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_FF \gyro_y[0]~FF_frt_7_frt_11  (.D(n1772), .CE(\~Inst_MPU6500_Controller/n5110 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(n1772_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \gyro_y[0]~FF_frt_7_frt_11 .CLK_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF_frt_7_frt_11 .CE_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF_frt_7_frt_11 .SR_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF_frt_7_frt_11 .D_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF_frt_7_frt_11 .SR_SYNC = 1'b1;
    defparam \gyro_y[0]~FF_frt_7_frt_11 .SR_VALUE = 1'b0;
    defparam \gyro_y[0]~FF_frt_7_frt_11 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), 
            .CI(n1896), .O(\Inst_pwm_servo_0/n23 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(38)
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_6/i15__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \sub_52/add_2/i31__AUX_ADD_CO  (.I0(1'b0), .I1(1'b0), .CI(n1897), 
            .O(\sub_52/add_2/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(699)
    defparam \sub_52/add_2/i31__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \sub_52/add_2/i31__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \sub_77/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), .CI(1'b0), 
            .CO(n1898)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(704)
    defparam \sub_77/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \sub_77/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF_124c75ff_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_124c75ff_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_124c75ff_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_124c75ff_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_124c75ff_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_124c75ff_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_124c75ff_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_124c75ff_0
// module not written out since it is a black box. 
//

