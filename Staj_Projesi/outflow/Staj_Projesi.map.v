
//
// Verific Verilog Description of module top
//

module top (clk_i, rst_n_i, switch_in, pwm_out_0, pwm_out_1, pwm_out_2, 
            rx, tx, spi_cs_n_o, mosi_o, miso_i, sclk_o) /* verific EFX_ATTRIBUTE_NETLIST__TOP_IS_VHDL=TRUE, EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(24)
    input rst_n_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(25)
    input switch_in /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    output pwm_out_0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(28)
    output pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    output pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(30)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(32)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(33)
    output spi_cs_n_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(35)
    output mosi_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(36)
    input miso_i /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(37)
    output sclk_o /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(38)
    
    wire [31:0]n390_2;
    wire [31:0]n390_33;
    wire [31:0]n390_32;
    wire [31:0]n390_31;
    wire [31:0]n390_30;
    wire [31:0]n390_29;
    wire [31:0]n390_28;
    wire [31:0]n390_27;
    wire [31:0]n390_26;
    wire [31:0]n390_25;
    wire [31:0]n390_24;
    wire [31:0]n390_23;
    wire [31:0]n390_22;
    wire [31:0]n390_21;
    wire [31:0]n390_20;
    wire [31:0]n390_19;
    wire [31:0]n390_18;
    wire [31:0]n390_17;
    wire [31:0]n390_16;
    wire [31:0]n390_13;
    wire [4:0]n480_2;
    wire n930;
    wire [2:0]n476_2;
    wire [33:0]data_in;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(204)
    wire [31:0]root_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(200)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(68)
    
    wire \Inst_SquareRoot/sub_9/add_2/n2 ;
    wire [4:0]byte_idx;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(213)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(172)
    wire [2:0]uart_state;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(212)
    
    wire tx_start_sig;
    wire [15:0]accel_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(184)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[0] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(92)
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(89)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[1] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[2] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[3] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[4] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[5] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[8] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[9] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[10] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[11] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[12] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[13] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(74)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(180)
    wire [15:0]accel_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(184)
    wire [15:0]accel_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(184)
    wire [15:0]gyro_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(185)
    wire [15:0]gyro_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(185)
    wire [15:0]gyro_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(185)
    
    wire \add_13/n2 ;
    wire [16:0]\Inst_SquareRoot/q_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(24)
    wire [4:0]\Inst_SquareRoot/count ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(28)
    wire [33:0]\Inst_SquareRoot/a_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(23)
    wire [1:0]\Inst_SquareRoot/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(20)
    wire [18:0]\Inst_SquareRoot/r_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(25)
    wire [16:0]data_out;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(205)
    wire [19:0]\Inst_pwm_servo_0/n42 ;
    
    wire \Inst_pwm_servo_0/add_20/n2 ;
    wire [31:0]root_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(199)
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    wire [31:0]n390_3;
    
    wire \add_13/n4 ;
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(181)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid;
    wire [19:0]\Inst_SquareRoot/n7 ;
    
    wire \Inst_SquareRoot/sub_6/add_2/n32 , \Inst_SquareRoot/sub_6/add_2/n30 , 
        \Inst_SquareRoot/sub_6/add_2/n28 , \Inst_SquareRoot/sub_6/add_2/n26 , 
        \Inst_SquareRoot/sub_6/add_2/n24 , \Inst_SquareRoot/sub_6/add_2/n22 , 
        \Inst_SquareRoot/sub_6/add_2/n20 , \Inst_SquareRoot/sub_6/add_2/n18 , 
        \Inst_SquareRoot/sub_6/add_2/n16 , \Inst_SquareRoot/sub_6/add_2/n14 , 
        \Inst_SquareRoot/sub_6/add_2/n12 , \Inst_SquareRoot/sub_6/add_2/n10 , 
        \Inst_SquareRoot/sub_6/add_2/n8 , \Inst_SquareRoot/sub_6/add_2/n6 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n2 , \Inst_SquareRoot/sub_6/add_2/n4 , \Inst_debounce/add_30/n36 , 
        \Inst_debounce/add_30/n34 ;
    wire [5:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(47)
    
    wire \Inst_debounce/add_30/n32 , \Inst_debounce/add_30/n30 , \Inst_debounce/add_30/n28 , 
        \Inst_debounce/add_30/n26 , \Inst_debounce/add_30/n24 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    
    wire \Inst_debounce/add_30/n22 , \Inst_debounce/add_30/n20 , \Inst_debounce/add_30/n18 , 
        \Inst_debounce/add_30/n16 , \Inst_debounce/add_30/n14 ;
    wire [31:0]n390_4;
    
    wire \add_13/n6 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(48)
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(49)
    
    wire \Inst_debounce/add_30/n12 , tx_busy_sig, \Inst_debounce/add_30/n10 , 
        \Inst_debounce/add_30/n8 , \Inst_debounce/add_30/n6 , \Inst_debounce/add_30/n4 , 
        \Inst_pwm_servo_0/add_20/n36 , \Inst_pwm_servo_0/add_20/n34 , \Inst_pwm_servo_0/add_20/n32 , 
        \Inst_pwm_servo_0/add_20/n30 , \Inst_pwm_servo_0/add_20/n28 , \Inst_pwm_servo_0/add_20/n26 , 
        \Inst_pwm_servo_0/add_20/n24 , \Inst_pwm_servo_0/add_20/n22 , \Inst_pwm_servo_0/add_20/n20 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \Inst_SquareRoot/sub_6/add_2/n2 , \Inst_pwm_servo_0/add_20/n18 , 
        \Inst_pwm_servo_0/add_20/n16 , \Inst_debounce/sync_1 , switch_out, 
        \Inst_debounce/sync_0 , \Inst_pwm_servo_0/add_20/n14 , \Inst_pwm_servo_0/add_20/n12 , 
        \Inst_pwm_servo_0/add_20/n10 , \Inst_pwm_servo_0/add_20/n8 , \Inst_pwm_servo_0/add_20/n6 , 
        \Inst_pwm_servo_0/add_20/n4 ;
    wire [5:0]\Inst_SquareRoot/n49 ;
    
    wire \Inst_SquareRoot/sub_9/add_2/n8 , \Inst_SquareRoot/sub_9/add_2/n6 , 
        \Inst_SquareRoot/sub_9/add_2/n4 , \add_13/n62 , \add_13/n60 , 
        \add_13/n58 , \add_13/n56 , \add_13/n54 , \add_13/n52 , \add_13/n50 , 
        \add_13/n48 , \add_13/n46 , \add_13/n44 , \add_13/n42 , \add_13/n40 , 
        \add_13/n38 , \add_13/n36 , \add_13/n34 , \add_13/n32 , \add_13/n30 ;
    wire [31:0]n390_15;
    
    wire \add_13/n28 ;
    wire [31:0]n390_14;
    
    wire \add_13/n26 , \add_13/n24 ;
    wire [31:0]n390_12;
    
    wire \add_13/n22 ;
    wire [31:0]n390_11;
    
    wire \add_13/n20 ;
    wire [31:0]n390_10;
    
    wire \add_13/n18 ;
    wire [31:0]n390_9;
    
    wire \add_13/n16 ;
    wire [31:0]n390_8;
    
    wire \add_13/n14 ;
    wire [31:0]n390_7;
    
    wire \add_13/n12 ;
    wire [31:0]n390_6;
    
    wire \add_13/n10 ;
    wire [31:0]n390_5;
    
    wire \add_13/n8 , \clk_i~O , n1366;
    wire [2:0]\Inst_MPU6500_Controller/n732 ;
    
    wire ceg_net323, ceg_net331, ceg_net206, ceg_net301, \~n983 , 
        \Inst_MPU6500_Controller/n5015 , \Inst_MPU6500_Controller/n6149 ;
    wire [21:0]\Inst_MPU6500_Controller/n741 ;
    
    wire ceg_net347;
    wire [3:0]\Inst_MPU6500_Controller/n736 ;
    
    wire ceg_net362, \Inst_MPU6500_Controller/n778 ;
    wire [3:0]\Inst_MPU6500_Controller/n764 ;
    
    wire ceg_net349, \Inst_MPU6500_Controller/n6156 , \Inst_MPU6500_Controller/n6131 , 
        \Inst_MPU6500_Controller/n6132 , \Inst_MPU6500_Controller/n6133 , 
        \Inst_MPU6500_Controller/n6134 , \Inst_MPU6500_Controller/n6205 , 
        \Inst_MPU6500_Controller/n6212 , \Inst_MPU6500_Controller/n6219 , 
        \Inst_MPU6500_Controller/n6226 , \Inst_MPU6500_Controller/n6233 , 
        \Inst_MPU6500_Controller/n6240 ;
    wire [7:0]\Inst_MPU6500_Controller/n769 ;
    
    wire ceg_net350, \Inst_MPU6500_Controller/n731 , ceg_net351, \Inst_MPU6500_Controller/n1914 , 
        \Inst_MPU6500_Controller/n1919 , \Inst_MPU6500_Controller/n1924 , 
        \Inst_MPU6500_Controller/n1929 , \Inst_MPU6500_Controller/n1934 , 
        \Inst_MPU6500_Controller/n1939 , \Inst_MPU6500_Controller/n1944 , 
        \Inst_MPU6500_Controller/n1949 , \Inst_MPU6500_Controller/n1954 , 
        \Inst_MPU6500_Controller/n1959 , \Inst_MPU6500_Controller/n1964 , 
        \Inst_MPU6500_Controller/n1969 , \Inst_MPU6500_Controller/n1974 , 
        \Inst_MPU6500_Controller/n1979 , \Inst_MPU6500_Controller/n4326 , 
        \Inst_MPU6500_Controller/n4331 , \Inst_MPU6500_Controller/n4336 , 
        \Inst_MPU6500_Controller/n4341 , \Inst_MPU6500_Controller/n4346 , 
        \Inst_MPU6500_Controller/n4351 , \Inst_MPU6500_Controller/n4356 , 
        \Inst_MPU6500_Controller/n4361 , \Inst_MPU6500_Controller/n4366 , 
        \Inst_MPU6500_Controller/n4371 , \Inst_MPU6500_Controller/n4376 , 
        \Inst_MPU6500_Controller/n4381 , \Inst_MPU6500_Controller/n4386 , 
        \Inst_MPU6500_Controller/n4391 , \Inst_MPU6500_Controller/n4396 , 
        \Inst_MPU6500_Controller/n4416 , \Inst_MPU6500_Controller/n4421 , 
        \Inst_MPU6500_Controller/n4426 , \Inst_MPU6500_Controller/n4431 , 
        \Inst_MPU6500_Controller/n4436 , \Inst_MPU6500_Controller/n4441 , 
        \Inst_MPU6500_Controller/n4446 , \Inst_MPU6500_Controller/n4451 , 
        \Inst_MPU6500_Controller/n4456 , \Inst_MPU6500_Controller/n4461 , 
        \Inst_MPU6500_Controller/n4466 , \Inst_MPU6500_Controller/n4471 , 
        \Inst_MPU6500_Controller/n4476 , \Inst_MPU6500_Controller/n4491 , 
        \Inst_MPU6500_Controller/n4496 , \Inst_MPU6500_Controller/n4501 , 
        \Inst_MPU6500_Controller/n4506 , \Inst_MPU6500_Controller/n4511 , 
        \Inst_MPU6500_Controller/n4516 , \Inst_MPU6500_Controller/n4521 , 
        \Inst_MPU6500_Controller/n4526 , \Inst_MPU6500_Controller/n4531 , 
        \Inst_MPU6500_Controller/n4536 , \Inst_MPU6500_Controller/n4541 , 
        \Inst_MPU6500_Controller/n4546 , \Inst_MPU6500_Controller/n4551 , 
        \Inst_MPU6500_Controller/n4556 , \Inst_MPU6500_Controller/n4571 , 
        \Inst_MPU6500_Controller/n4576 , \Inst_MPU6500_Controller/n4581 , 
        \Inst_MPU6500_Controller/n4586 , \Inst_MPU6500_Controller/n4591 , 
        \Inst_MPU6500_Controller/n4596 , \Inst_MPU6500_Controller/n4601 , 
        \Inst_MPU6500_Controller/n4606 , \Inst_MPU6500_Controller/n4611 , 
        \Inst_MPU6500_Controller/n4616 , \Inst_MPU6500_Controller/n4621 , 
        \Inst_MPU6500_Controller/n4626 , \Inst_MPU6500_Controller/n4631 , 
        \Inst_MPU6500_Controller/n4636 , \Inst_MPU6500_Controller/n1834 , 
        \Inst_MPU6500_Controller/n1839 , \Inst_MPU6500_Controller/n1844 , 
        \Inst_MPU6500_Controller/n1849 , \Inst_MPU6500_Controller/n1854 , 
        \Inst_MPU6500_Controller/n1859 , \Inst_MPU6500_Controller/n1864 , 
        \Inst_MPU6500_Controller/n1869 , \Inst_MPU6500_Controller/n1874 , 
        \Inst_MPU6500_Controller/n1879 , \Inst_MPU6500_Controller/n1884 , 
        \Inst_MPU6500_Controller/n1889 , \Inst_MPU6500_Controller/n1894 , 
        \Inst_MPU6500_Controller/n1899 , \Inst_MPU6500_Controller/n1904 , 
        ceg_net354, ceg_net363, ceg_net364, \Inst_SquareRoot/n453 , 
        ceg_net136, \Inst_SquareRoot/n446 , \Inst_SquareRoot/n444 , \~ceg_net65 , 
        \Inst_SquareRoot/n448 , \Inst_SquareRoot/n442 , \Inst_SquareRoot/n440 , 
        \Inst_SquareRoot/n455 , \Inst_SquareRoot/n457 , \Inst_SquareRoot/n459 , 
        \Inst_SquareRoot/n461 , \Inst_SquareRoot/n463 , \Inst_SquareRoot/n465 , 
        \Inst_SquareRoot/n467 , \Inst_SquareRoot/n469 , \Inst_SquareRoot/n471 , 
        \Inst_SquareRoot/n473 , \Inst_SquareRoot/n475 , \Inst_SquareRoot/n477 , 
        \Inst_SquareRoot/n479 , \Inst_SquareRoot/n481 , \Inst_SquareRoot/n483 , 
        \Inst_SquareRoot/n485 , \Inst_SquareRoot/n487 , \Inst_SquareRoot/n489 , 
        \Inst_SquareRoot/n491 , \Inst_SquareRoot/n493 , \Inst_SquareRoot/n495 , 
        \Inst_SquareRoot/n497 , \Inst_SquareRoot/n499 , \Inst_SquareRoot/n501 , 
        \Inst_SquareRoot/n503 , \Inst_SquareRoot/n505 , \Inst_SquareRoot/n507 , 
        \Inst_SquareRoot/n509 , \Inst_SquareRoot/n511 , \Inst_SquareRoot/n513 , 
        \Inst_SquareRoot/n515 , \Inst_SquareRoot/n517 , \Inst_SquareRoot/n519 , 
        \Inst_SquareRoot/n521 , \Inst_SquareRoot/n523 , \Inst_SquareRoot/n525 , 
        \Inst_SquareRoot/n527 , \Inst_SquareRoot/n529 , \Inst_SquareRoot/n531 , 
        \Inst_SquareRoot/n533 , \Inst_SquareRoot/n535 , \Inst_SquareRoot/n537 , 
        \Inst_SquareRoot/n539 , \Inst_SquareRoot/n541 , \Inst_SquareRoot/n543 , 
        \Inst_SquareRoot/n545 , \Inst_SquareRoot/n547 , \Inst_SquareRoot/n553 , 
        \Inst_SquareRoot/n555 , \Inst_SquareRoot/n557 , \Inst_SquareRoot/n559 , 
        \Inst_SquareRoot/n561 , \Inst_SquareRoot/n563 , \Inst_SquareRoot/n565 , 
        \Inst_SquareRoot/n567 , \Inst_SquareRoot/n569 , \Inst_SquareRoot/n571 , 
        \Inst_SquareRoot/n573 , \Inst_SquareRoot/n575 , \Inst_SquareRoot/n577 , 
        \Inst_SquareRoot/n579 , \Inst_SquareRoot/n581 , \Inst_SquareRoot/n583 , 
        \Inst_SquareRoot/n601 , \Inst_SquareRoot/n603 , \Inst_SquareRoot/n605 , 
        \Inst_SquareRoot/n607 , ceg_net64;
    wire [3:0]\Inst_Spi_Mode_3/n129 ;
    
    wire ceg_net75, ceg_net367;
    wire [7:0]\Inst_Spi_Mode_3/n135 ;
    
    wire ceg_net236;
    wire [3:0]\Inst_Spi_Mode_3/n124 ;
    
    wire ceg_net237, \~ceg_net83 , ceg_net238, \Inst_Spi_Mode_3/n25 , 
        \Inst_Spi_Mode_3/n466 , ceg_net239, ceg_net240, ceg_net241, 
        ceg_net242, ceg_net243, ceg_net244, ceg_net245;
    wire [1:0]\Inst_Spi_Mode_3/n144 ;
    wire [19:0]\Inst_pwm_servo_0/n63 ;
    
    wire \Inst_pwm_servo_0/n85 ;
    wire [5:0]\Inst_uart_tx/n129 ;
    
    wire ceg_net106, ceg_net368;
    wire [2:0]\Inst_uart_tx/n136 ;
    
    wire ceg_net251, \Inst_uart_tx/n335 , \Inst_uart_tx/n118 , ceg_net248, 
        \Inst_uart_tx/n119 , ceg_net249;
    wire [1:0]\Inst_uart_tx/n115 ;
    
    wire \Inst_debounce/n151 , \Inst_debounce/n149 , n1365, n934, n938, 
        n942, n946, n950, n954, n958;
    wire [4:0]n480;
    wire [2:0]n476;
    
    wire n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, 
        n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, 
        n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, 
        n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, 
        n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, 
        n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, 
        n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, 
        n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, 
        n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, 
        n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, 
        n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, 
        n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, 
        n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, 
        n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, 
        n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, 
        n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, 
        n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, 
        n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, 
        n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, 
        n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, 
        n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, 
        n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, 
        n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, 
        n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, 
        n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, 
        n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, 
        n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, 
        n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, 
        n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, 
        n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, 
        n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, 
        n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, 
        n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, 
        n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, 
        n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, 
        n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, 
        n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, 
        n1358, n1359, n1360, n1361, n1362, n1363, n1364;
    
    assign pwm_out_0 = pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(28)
    assign pwm_out_2 = pwm_out_1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(30)
    EFX_FF \data_in[0]~FF  (.D(n390_2[0]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[0]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[0]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[0]~FF .D_POLARITY = 1'b1;
    defparam \data_in[0]~FF .SR_SYNC = 1'b1;
    defparam \data_in[0]~FF .SR_VALUE = 1'b0;
    defparam \data_in[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n732 [0]), 
           .CE(ceg_net323), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[0]~FF  (.D(n480_2[0]), .CE(ceg_net331), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \byte_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[0]~FF  (.D(n930), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_state[0]~FF  (.D(n476_2[0]), .CE(ceg_net301), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \uart_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_state[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_state[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_state[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(\~n983 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [0]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n741 [0]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n736 [0]), 
           .CE(ceg_net362), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_start~FF  (.D(\Inst_MPU6500_Controller/n778 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \spi_start~FF .CLK_POLARITY = 1'b1;
    defparam \spi_start~FF .CE_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_POLARITY = 1'b0;
    defparam \spi_start~FF .D_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_SYNC = 1'b0;
    defparam \spi_start~FF .SR_VALUE = 1'b0;
    defparam \spi_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[0]~FF  (.D(\Inst_MPU6500_Controller/n764 [0]), 
           .CE(ceg_net349), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[0]~FF  (.D(\Inst_MPU6500_Controller/n769 [0]), 
           .CE(ceg_net350), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[3] [0]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .D_POLARITY = 1'b0;
    defparam \accel_y[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [0]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [0]), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [0]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[0]~FF  (.D(\Inst_MPU6500_Controller/raw_data[13] [0]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .D_POLARITY = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_cs_n_o~FF  (.D(\Inst_MPU6500_Controller/n731 ), .CE(ceg_net351), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_cs_n_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \spi_cs_n_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .CE_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .SR_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .D_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC = 1'b0;
    defparam \spi_cs_n_o~FF .SR_VALUE = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n741 [1]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n741 [2]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n741 [3]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n741 [4]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n741 [5]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n741 [6]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n741 [7]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n741 [8]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n741 [9]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n741 [10]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n741 [11]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n741 [12]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n741 [13]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n741 [14]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n741 [15]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n741 [16]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n741 [17]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n741 [18]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n741 [19]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n741 [20]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n741 [21]), 
           .CE(ceg_net347), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[1] [1]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .D_POLARITY = 1'b0;
    defparam \accel_x[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[2]~FF  (.D(\Inst_MPU6500_Controller/n1914 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[3]~FF  (.D(\Inst_MPU6500_Controller/n1919 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[4]~FF  (.D(\Inst_MPU6500_Controller/n1924 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[5]~FF  (.D(\Inst_MPU6500_Controller/n1929 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[6]~FF  (.D(\Inst_MPU6500_Controller/n1934 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[7]~FF  (.D(\Inst_MPU6500_Controller/n1939 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[8]~FF  (.D(\Inst_MPU6500_Controller/n1944 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[9]~FF  (.D(\Inst_MPU6500_Controller/n1949 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[10]~FF  (.D(\Inst_MPU6500_Controller/n1954 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[11]~FF  (.D(\Inst_MPU6500_Controller/n1959 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[12]~FF  (.D(\Inst_MPU6500_Controller/n1964 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[13]~FF  (.D(\Inst_MPU6500_Controller/n1969 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[14]~FF  (.D(\Inst_MPU6500_Controller/n1974 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[15]~FF  (.D(\Inst_MPU6500_Controller/n1979 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[1]~FF  (.D(\Inst_MPU6500_Controller/n4326 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[2]~FF  (.D(\Inst_MPU6500_Controller/n4331 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[3]~FF  (.D(\Inst_MPU6500_Controller/n4336 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[4]~FF  (.D(\Inst_MPU6500_Controller/n4341 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[5]~FF  (.D(\Inst_MPU6500_Controller/n4346 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[6]~FF  (.D(\Inst_MPU6500_Controller/n4351 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[7]~FF  (.D(\Inst_MPU6500_Controller/n4356 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[8]~FF  (.D(\Inst_MPU6500_Controller/n4361 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[9]~FF  (.D(\Inst_MPU6500_Controller/n4366 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[10]~FF  (.D(\Inst_MPU6500_Controller/n4371 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[11]~FF  (.D(\Inst_MPU6500_Controller/n4376 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[12]~FF  (.D(\Inst_MPU6500_Controller/n4381 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[13]~FF  (.D(\Inst_MPU6500_Controller/n4386 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[14]~FF  (.D(\Inst_MPU6500_Controller/n4391 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[15]~FF  (.D(\Inst_MPU6500_Controller/n4396 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [1]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[2]~FF  (.D(\Inst_MPU6500_Controller/raw_data[5] [2]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .D_POLARITY = 1'b0;
    defparam \accel_z[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[3]~FF  (.D(\Inst_MPU6500_Controller/n4416 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[4]~FF  (.D(\Inst_MPU6500_Controller/n4421 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[5]~FF  (.D(\Inst_MPU6500_Controller/n4426 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[6]~FF  (.D(\Inst_MPU6500_Controller/n4431 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[7]~FF  (.D(\Inst_MPU6500_Controller/n4436 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[8]~FF  (.D(\Inst_MPU6500_Controller/n4441 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[9]~FF  (.D(\Inst_MPU6500_Controller/n4446 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[10]~FF  (.D(\Inst_MPU6500_Controller/n4451 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[11]~FF  (.D(\Inst_MPU6500_Controller/n4456 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[12]~FF  (.D(\Inst_MPU6500_Controller/n4461 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[13]~FF  (.D(\Inst_MPU6500_Controller/n4466 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[14]~FF  (.D(\Inst_MPU6500_Controller/n4471 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[15]~FF  (.D(\Inst_MPU6500_Controller/n4476 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \accel_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \accel_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[9] [1]), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .D_POLARITY = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[2]~FF  (.D(\Inst_MPU6500_Controller/n4491 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[3]~FF  (.D(\Inst_MPU6500_Controller/n4496 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[4]~FF  (.D(\Inst_MPU6500_Controller/n4501 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[5]~FF  (.D(\Inst_MPU6500_Controller/n4506 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[6]~FF  (.D(\Inst_MPU6500_Controller/n4511 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[7]~FF  (.D(\Inst_MPU6500_Controller/n4516 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[8]~FF  (.D(\Inst_MPU6500_Controller/n4521 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[9]~FF  (.D(\Inst_MPU6500_Controller/n4526 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[10]~FF  (.D(\Inst_MPU6500_Controller/n4531 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[11]~FF  (.D(\Inst_MPU6500_Controller/n4536 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[12]~FF  (.D(\Inst_MPU6500_Controller/n4541 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[13]~FF  (.D(\Inst_MPU6500_Controller/n4546 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[14]~FF  (.D(\Inst_MPU6500_Controller/n4551 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[15]~FF  (.D(\Inst_MPU6500_Controller/n4556 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[1]~FF  (.D(\Inst_MPU6500_Controller/raw_data[11] [1]), 
           .CE(\Inst_MPU6500_Controller/n5015 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .D_POLARITY = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[2]~FF  (.D(\Inst_MPU6500_Controller/n4571 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[3]~FF  (.D(\Inst_MPU6500_Controller/n4576 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[4]~FF  (.D(\Inst_MPU6500_Controller/n4581 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[5]~FF  (.D(\Inst_MPU6500_Controller/n4586 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[6]~FF  (.D(\Inst_MPU6500_Controller/n4591 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[7]~FF  (.D(\Inst_MPU6500_Controller/n4596 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[8]~FF  (.D(\Inst_MPU6500_Controller/n4601 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[9]~FF  (.D(\Inst_MPU6500_Controller/n4606 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[10]~FF  (.D(\Inst_MPU6500_Controller/n4611 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[11]~FF  (.D(\Inst_MPU6500_Controller/n4616 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[12]~FF  (.D(\Inst_MPU6500_Controller/n4621 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[13]~FF  (.D(\Inst_MPU6500_Controller/n4626 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[14]~FF  (.D(\Inst_MPU6500_Controller/n4631 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[15]~FF  (.D(\Inst_MPU6500_Controller/n4636 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[1]~FF  (.D(\Inst_MPU6500_Controller/n1834 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[2]~FF  (.D(\Inst_MPU6500_Controller/n1839 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[3]~FF  (.D(\Inst_MPU6500_Controller/n1844 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[4]~FF  (.D(\Inst_MPU6500_Controller/n1849 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[5]~FF  (.D(\Inst_MPU6500_Controller/n1854 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[6]~FF  (.D(\Inst_MPU6500_Controller/n1859 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[7]~FF  (.D(\Inst_MPU6500_Controller/n1864 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[8]~FF  (.D(\Inst_MPU6500_Controller/n1869 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[9]~FF  (.D(\Inst_MPU6500_Controller/n1874 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[10]~FF  (.D(\Inst_MPU6500_Controller/n1879 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[11]~FF  (.D(\Inst_MPU6500_Controller/n1884 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[12]~FF  (.D(\Inst_MPU6500_Controller/n1889 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[13]~FF  (.D(\Inst_MPU6500_Controller/n1894 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[14]~FF  (.D(\Inst_MPU6500_Controller/n1899 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[15]~FF  (.D(\Inst_MPU6500_Controller/n1904 ), .CE(\Inst_MPU6500_Controller/n5015 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \gyro_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6149 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6156 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6131 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6132 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6133 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6134 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6205 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6212 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6219 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6226 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6233 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n6240 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[1]~FF  (.D(\Inst_MPU6500_Controller/n769 [1]), 
           .CE(ceg_net350), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[2]~FF  (.D(\Inst_MPU6500_Controller/n769 [2]), 
           .CE(ceg_net354), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[3]~FF  (.D(\Inst_MPU6500_Controller/n769 [3]), 
           .CE(ceg_net350), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n769 [4]), 
           .CE(ceg_net350), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n769 [5]), 
           .CE(ceg_net350), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[6]~FF  (.D(\Inst_MPU6500_Controller/n769 [6]), 
           .CE(ceg_net354), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[7]~FF  (.D(\Inst_MPU6500_Controller/n769 [7]), 
           .CE(ceg_net354), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \mpu_to_spi_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n736 [1]), 
           .CE(ceg_net362), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n736 [2]), 
           .CE(ceg_net362), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n736 [3]), 
           .CE(ceg_net362), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[1]~FF  (.D(\Inst_MPU6500_Controller/n764 [1]), 
           .CE(ceg_net349), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[2]~FF  (.D(\Inst_MPU6500_Controller/n764 [2]), 
           .CE(ceg_net363), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[3]~FF  (.D(\Inst_MPU6500_Controller/n764 [3]), 
           .CE(ceg_net364), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[1]~FF  (.D(\Inst_MPU6500_Controller/n732 [1]), 
           .CE(ceg_net323), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[2]~FF  (.D(\Inst_MPU6500_Controller/n732 [2]), 
           .CE(ceg_net323), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(287)
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[0]~FF  (.D(\Inst_SquareRoot/n453 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[0]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/count[0]~FF  (.D(\Inst_SquareRoot/n446 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/count[0]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/count[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[0]~FF  (.D(\Inst_SquareRoot/n444 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[0]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/state[0]~FF  (.D(\Inst_SquareRoot/state [0]), 
           .CE(\~ceg_net65 ), .CLK(\clk_i~O ), .SR(\Inst_SquareRoot/state [1]), 
           .Q(\Inst_SquareRoot/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/state[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[0]~FF  (.D(\Inst_SquareRoot/n448 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[0]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[0]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[0]~FF  (.D(\Inst_SquareRoot/q_reg [0]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[0]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[0]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[0]~FF .D_POLARITY = 1'b1;
    defparam \data_out[0]~FF .SR_SYNC = 1'b1;
    defparam \data_out[0]~FF .SR_VALUE = 1'b0;
    defparam \data_out[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[1]~FF  (.D(\Inst_SquareRoot/n442 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[1]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[2]~FF  (.D(\Inst_SquareRoot/n440 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[3]~FF  (.D(\Inst_SquareRoot/n455 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[4]~FF  (.D(\Inst_SquareRoot/n457 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[5]~FF  (.D(\Inst_SquareRoot/n459 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[6]~FF  (.D(\Inst_SquareRoot/n461 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[7]~FF  (.D(\Inst_SquareRoot/n463 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[8]~FF  (.D(\Inst_SquareRoot/n465 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[9]~FF  (.D(\Inst_SquareRoot/n467 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[10]~FF  (.D(\Inst_SquareRoot/n469 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[11]~FF  (.D(\Inst_SquareRoot/n471 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[12]~FF  (.D(\Inst_SquareRoot/n473 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[13]~FF  (.D(\Inst_SquareRoot/n475 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[14]~FF  (.D(\Inst_SquareRoot/n477 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[15]~FF  (.D(\Inst_SquareRoot/n479 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[16]~FF  (.D(\Inst_SquareRoot/n481 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[17]~FF  (.D(\Inst_SquareRoot/n483 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[17]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[17]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[18]~FF  (.D(\Inst_SquareRoot/n485 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[18]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[18]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[19]~FF  (.D(\Inst_SquareRoot/n487 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[19]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[19]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[20]~FF  (.D(\Inst_SquareRoot/n489 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[20]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[20]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[21]~FF  (.D(\Inst_SquareRoot/n491 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[21]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[21]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[22]~FF  (.D(\Inst_SquareRoot/n493 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[22]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[22]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[22]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[22]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[22]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[22]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[23]~FF  (.D(\Inst_SquareRoot/n495 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[23]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[23]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[23]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[23]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[23]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[23]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[24]~FF  (.D(\Inst_SquareRoot/n497 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[24]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[24]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[24]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[24]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[24]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[24]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[25]~FF  (.D(\Inst_SquareRoot/n499 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[25]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[25]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[25]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[25]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[25]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[25]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[26]~FF  (.D(\Inst_SquareRoot/n501 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[26]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[26]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[26]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[26]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[26]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[26]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[27]~FF  (.D(\Inst_SquareRoot/n503 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[27]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[27]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[27]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[27]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[27]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[27]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[28]~FF  (.D(\Inst_SquareRoot/n505 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[28]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[28]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[28]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[28]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[28]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[28]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[29]~FF  (.D(\Inst_SquareRoot/n507 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[29]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[29]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[29]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[29]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[29]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[29]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[30]~FF  (.D(\Inst_SquareRoot/n509 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[30]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[30]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[30]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[30]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[30]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[30]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[31]~FF  (.D(\Inst_SquareRoot/n511 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[31]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[32]~FF  (.D(\Inst_SquareRoot/n513 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [32])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[32]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[32]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[32]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[32]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[32]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[32]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[32]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/a_reg[33]~FF  (.D(\Inst_SquareRoot/n515 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/a_reg [33])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/a_reg[33]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[33]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/a_reg[33]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[33]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/a_reg[33]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/a_reg[33]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/a_reg[33]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[1]~FF  (.D(\Inst_SquareRoot/n517 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[1]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[2]~FF  (.D(\Inst_SquareRoot/n519 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[3]~FF  (.D(\Inst_SquareRoot/n521 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[4]~FF  (.D(\Inst_SquareRoot/n523 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[5]~FF  (.D(\Inst_SquareRoot/n525 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[6]~FF  (.D(\Inst_SquareRoot/n527 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[7]~FF  (.D(\Inst_SquareRoot/n529 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[8]~FF  (.D(\Inst_SquareRoot/n531 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[9]~FF  (.D(\Inst_SquareRoot/n533 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[10]~FF  (.D(\Inst_SquareRoot/n535 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[11]~FF  (.D(\Inst_SquareRoot/n537 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[12]~FF  (.D(\Inst_SquareRoot/n539 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[13]~FF  (.D(\Inst_SquareRoot/n541 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[14]~FF  (.D(\Inst_SquareRoot/n543 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[15]~FF  (.D(\Inst_SquareRoot/n545 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/r_reg[16]~FF  (.D(\Inst_SquareRoot/n547 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/r_reg [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/r_reg[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/r_reg[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/r_reg[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/r_reg[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/r_reg[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[1]~FF  (.D(\Inst_SquareRoot/n553 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[1]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[2]~FF  (.D(\Inst_SquareRoot/n555 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[3]~FF  (.D(\Inst_SquareRoot/n557 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[4]~FF  (.D(\Inst_SquareRoot/n559 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[5]~FF  (.D(\Inst_SquareRoot/n561 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[6]~FF  (.D(\Inst_SquareRoot/n563 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[7]~FF  (.D(\Inst_SquareRoot/n565 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[8]~FF  (.D(\Inst_SquareRoot/n567 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[9]~FF  (.D(\Inst_SquareRoot/n569 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[10]~FF  (.D(\Inst_SquareRoot/n571 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[11]~FF  (.D(\Inst_SquareRoot/n573 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[12]~FF  (.D(\Inst_SquareRoot/n575 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[13]~FF  (.D(\Inst_SquareRoot/n577 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[14]~FF  (.D(\Inst_SquareRoot/n579 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[15]~FF  (.D(\Inst_SquareRoot/n581 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/q_reg[16]~FF  (.D(\Inst_SquareRoot/n583 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/q_reg [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/q_reg[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/q_reg[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/q_reg[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/q_reg[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/q_reg[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[1]~FF  (.D(\Inst_SquareRoot/q_reg [1]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[1]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[1]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[1]~FF .D_POLARITY = 1'b1;
    defparam \data_out[1]~FF .SR_SYNC = 1'b1;
    defparam \data_out[1]~FF .SR_VALUE = 1'b0;
    defparam \data_out[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[2]~FF  (.D(\Inst_SquareRoot/q_reg [2]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[2]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[2]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[2]~FF .D_POLARITY = 1'b1;
    defparam \data_out[2]~FF .SR_SYNC = 1'b1;
    defparam \data_out[2]~FF .SR_VALUE = 1'b0;
    defparam \data_out[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[3]~FF  (.D(\Inst_SquareRoot/q_reg [3]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[3]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[3]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[3]~FF .D_POLARITY = 1'b1;
    defparam \data_out[3]~FF .SR_SYNC = 1'b1;
    defparam \data_out[3]~FF .SR_VALUE = 1'b0;
    defparam \data_out[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[4]~FF  (.D(\Inst_SquareRoot/q_reg [4]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[4]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[4]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[4]~FF .D_POLARITY = 1'b1;
    defparam \data_out[4]~FF .SR_SYNC = 1'b1;
    defparam \data_out[4]~FF .SR_VALUE = 1'b0;
    defparam \data_out[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[5]~FF  (.D(\Inst_SquareRoot/q_reg [5]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[5]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[5]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[5]~FF .D_POLARITY = 1'b1;
    defparam \data_out[5]~FF .SR_SYNC = 1'b1;
    defparam \data_out[5]~FF .SR_VALUE = 1'b0;
    defparam \data_out[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[6]~FF  (.D(\Inst_SquareRoot/q_reg [6]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[6]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[6]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[6]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[6]~FF .D_POLARITY = 1'b1;
    defparam \data_out[6]~FF .SR_SYNC = 1'b1;
    defparam \data_out[6]~FF .SR_VALUE = 1'b0;
    defparam \data_out[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[7]~FF  (.D(\Inst_SquareRoot/q_reg [7]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[7]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[7]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[7]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[7]~FF .D_POLARITY = 1'b1;
    defparam \data_out[7]~FF .SR_SYNC = 1'b1;
    defparam \data_out[7]~FF .SR_VALUE = 1'b0;
    defparam \data_out[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[8]~FF  (.D(\Inst_SquareRoot/q_reg [8]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[8]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[8]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[8]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[8]~FF .D_POLARITY = 1'b1;
    defparam \data_out[8]~FF .SR_SYNC = 1'b1;
    defparam \data_out[8]~FF .SR_VALUE = 1'b0;
    defparam \data_out[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[9]~FF  (.D(\Inst_SquareRoot/q_reg [9]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[9]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[9]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[9]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[9]~FF .D_POLARITY = 1'b1;
    defparam \data_out[9]~FF .SR_SYNC = 1'b1;
    defparam \data_out[9]~FF .SR_VALUE = 1'b0;
    defparam \data_out[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[10]~FF  (.D(\Inst_SquareRoot/q_reg [10]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[10]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[10]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[10]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[10]~FF .D_POLARITY = 1'b1;
    defparam \data_out[10]~FF .SR_SYNC = 1'b1;
    defparam \data_out[10]~FF .SR_VALUE = 1'b0;
    defparam \data_out[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[11]~FF  (.D(\Inst_SquareRoot/q_reg [11]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[11]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[11]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[11]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[11]~FF .D_POLARITY = 1'b1;
    defparam \data_out[11]~FF .SR_SYNC = 1'b1;
    defparam \data_out[11]~FF .SR_VALUE = 1'b0;
    defparam \data_out[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[12]~FF  (.D(\Inst_SquareRoot/q_reg [12]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[12]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[12]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[12]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[12]~FF .D_POLARITY = 1'b1;
    defparam \data_out[12]~FF .SR_SYNC = 1'b1;
    defparam \data_out[12]~FF .SR_VALUE = 1'b0;
    defparam \data_out[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[13]~FF  (.D(\Inst_SquareRoot/q_reg [13]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[13]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[13]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[13]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[13]~FF .D_POLARITY = 1'b1;
    defparam \data_out[13]~FF .SR_SYNC = 1'b1;
    defparam \data_out[13]~FF .SR_VALUE = 1'b0;
    defparam \data_out[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[14]~FF  (.D(\Inst_SquareRoot/q_reg [14]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[14]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[14]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[14]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[14]~FF .D_POLARITY = 1'b1;
    defparam \data_out[14]~FF .SR_SYNC = 1'b1;
    defparam \data_out[14]~FF .SR_VALUE = 1'b0;
    defparam \data_out[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[15]~FF  (.D(\Inst_SquareRoot/q_reg [15]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[15]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[15]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[15]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[15]~FF .D_POLARITY = 1'b1;
    defparam \data_out[15]~FF .SR_SYNC = 1'b1;
    defparam \data_out[15]~FF .SR_VALUE = 1'b0;
    defparam \data_out[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_out[16]~FF  (.D(\Inst_SquareRoot/q_reg [16]), .CE(\Inst_SquareRoot/state [1]), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_out[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \data_out[16]~FF .CLK_POLARITY = 1'b1;
    defparam \data_out[16]~FF .CE_POLARITY = 1'b1;
    defparam \data_out[16]~FF .SR_POLARITY = 1'b1;
    defparam \data_out[16]~FF .D_POLARITY = 1'b1;
    defparam \data_out[16]~FF .SR_SYNC = 1'b1;
    defparam \data_out[16]~FF .SR_VALUE = 1'b0;
    defparam \data_out[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/count[1]~FF  (.D(\Inst_SquareRoot/n601 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/count[1]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/count[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/count[2]~FF  (.D(\Inst_SquareRoot/n603 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/count[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/count[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/count[3]~FF  (.D(\Inst_SquareRoot/n605 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/count[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/count[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/count[4]~FF  (.D(\Inst_SquareRoot/n607 ), .CE(ceg_net136), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(\Inst_SquareRoot/count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_SquareRoot/count[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/count[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/count[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_SquareRoot/state[1]~FF  (.D(ceg_net64), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(\Inst_SquareRoot/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(86)
    defparam \Inst_SquareRoot/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/state[1]~FF .SR_SYNC = 1'b1;
    defparam \Inst_SquareRoot/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_SquareRoot/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[0]~FF  (.D(\Inst_Spi_Mode_3/n129 [0]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[0]~FF  (.D(\Inst_Spi_Mode_3/state [0]), 
           .CE(ceg_net367), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[0]~FF  (.D(\Inst_Spi_Mode_3/n135 [0]), 
           .CE(ceg_net236), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[0]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [0]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[0]~FF  (.D(\Inst_Spi_Mode_3/n124 [0]), 
           .CE(ceg_net237), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_data_valid~FF  (.D(ceg_net75), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(spi_data_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_data_valid~FF .CLK_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .CE_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_POLARITY = 1'b0;
    defparam \spi_data_valid~FF .D_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_SYNC = 1'b0;
    defparam \spi_data_valid~FF .SR_VALUE = 1'b0;
    defparam \spi_data_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_o~FF  (.D(\~ceg_net83 ), .CE(ceg_net238), .CLK(\clk_i~O ), 
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
           .CE(ceg_net239), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[2]~FF  (.D(\Inst_Spi_Mode_3/n135 [2]), 
           .CE(ceg_net240), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[3]~FF  (.D(\Inst_Spi_Mode_3/n135 [3]), 
           .CE(ceg_net241), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[4]~FF  (.D(\Inst_Spi_Mode_3/n135 [4]), 
           .CE(ceg_net242), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[5]~FF  (.D(\Inst_Spi_Mode_3/n135 [5]), 
           .CE(ceg_net243), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[6]~FF  (.D(\Inst_Spi_Mode_3/n135 [6]), 
           .CE(ceg_net244), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[7]~FF  (.D(\Inst_Spi_Mode_3/n135 [7]), 
           .CE(ceg_net245), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[1]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [1]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[2]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [2]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[3]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [3]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[4]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [4]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[5]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [5]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[6]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [6]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[7]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [7]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[1]~FF  (.D(\Inst_Spi_Mode_3/n129 [1]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[2]~FF  (.D(\Inst_Spi_Mode_3/n129 [2]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[3]~FF  (.D(\Inst_Spi_Mode_3/n129 [3]), 
           .CE(ceg_net75), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[1]~FF  (.D(\Inst_Spi_Mode_3/n124 [1]), 
           .CE(ceg_net237), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[2]~FF  (.D(\Inst_Spi_Mode_3/n124 [2]), 
           .CE(ceg_net237), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[1]~FF  (.D(\Inst_Spi_Mode_3/n144 [1]), .CE(ceg_net367), 
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
    EFX_FF \pwm_out_2~FF  (.D(\Inst_pwm_servo_0/n85 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(54)
    defparam \pwm_out_2~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_2~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_2~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_2~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_2~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n129 [0]), .CE(ceg_net106), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net368), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n136 [0]), .CE(ceg_net251), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[0]~FF  (.D(tx_data_sig[0]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n118 ), .CE(ceg_net248), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_busy_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \tx_busy_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .CE_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_busy_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_busy_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_busy_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_busy_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n119 ), .CE(ceg_net249), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \tx~FF .CLK_POLARITY = 1'b1;
    defparam \tx~FF .CE_POLARITY = 1'b0;
    defparam \tx~FF .SR_POLARITY = 1'b0;
    defparam \tx~FF .D_POLARITY = 1'b1;
    defparam \tx~FF .SR_SYNC = 1'b0;
    defparam \tx~FF .SR_VALUE = 1'b1;
    defparam \tx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[1]~FF  (.D(tx_data_sig[1]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[2]~FF  (.D(tx_data_sig[2]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[3]~FF  (.D(tx_data_sig[3]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[4]~FF  (.D(tx_data_sig[4]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[5]~FF  (.D(tx_data_sig[5]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[6]~FF  (.D(tx_data_sig[6]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/data_buffer[7]~FF  (.D(tx_data_sig[7]), .CE(\Inst_uart_tx/n335 ), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n129 [1]), .CE(ceg_net106), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n129 [2]), .CE(ceg_net106), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n129 [3]), .CE(ceg_net106), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n129 [4]), .CE(ceg_net106), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n129 [5]), .CE(ceg_net106), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net251), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n136 [2]), .CE(ceg_net251), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n115 [1]), .CE(ceg_net368), 
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
    EFX_FF \data_in[1]~FF  (.D(n390_3[1]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[1]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[1]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[1]~FF .D_POLARITY = 1'b1;
    defparam \data_in[1]~FF .SR_SYNC = 1'b1;
    defparam \data_in[1]~FF .SR_VALUE = 1'b0;
    defparam \data_in[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[2]~FF  (.D(n390_4[2]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[2]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[2]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[2]~FF .D_POLARITY = 1'b1;
    defparam \data_in[2]~FF .SR_SYNC = 1'b1;
    defparam \data_in[2]~FF .SR_VALUE = 1'b0;
    defparam \data_in[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[3]~FF  (.D(n390_5[3]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[3]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[3]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[3]~FF .D_POLARITY = 1'b1;
    defparam \data_in[3]~FF .SR_SYNC = 1'b1;
    defparam \data_in[3]~FF .SR_VALUE = 1'b0;
    defparam \data_in[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[4]~FF  (.D(n390_6[4]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[4]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[4]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[4]~FF .D_POLARITY = 1'b1;
    defparam \data_in[4]~FF .SR_SYNC = 1'b1;
    defparam \data_in[4]~FF .SR_VALUE = 1'b0;
    defparam \data_in[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[5]~FF  (.D(n390_7[5]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[5]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[5]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[5]~FF .D_POLARITY = 1'b1;
    defparam \data_in[5]~FF .SR_SYNC = 1'b1;
    defparam \data_in[5]~FF .SR_VALUE = 1'b0;
    defparam \data_in[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[6]~FF  (.D(n390_8[6]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[6]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[6]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[6]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[6]~FF .D_POLARITY = 1'b1;
    defparam \data_in[6]~FF .SR_SYNC = 1'b1;
    defparam \data_in[6]~FF .SR_VALUE = 1'b0;
    defparam \data_in[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[7]~FF  (.D(n390_9[7]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[7]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[7]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[7]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[7]~FF .D_POLARITY = 1'b1;
    defparam \data_in[7]~FF .SR_SYNC = 1'b1;
    defparam \data_in[7]~FF .SR_VALUE = 1'b0;
    defparam \data_in[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[8]~FF  (.D(n390_10[8]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[8]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[8]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[8]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[8]~FF .D_POLARITY = 1'b1;
    defparam \data_in[8]~FF .SR_SYNC = 1'b1;
    defparam \data_in[8]~FF .SR_VALUE = 1'b0;
    defparam \data_in[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[9]~FF  (.D(n390_11[9]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[9]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[9]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[9]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[9]~FF .D_POLARITY = 1'b1;
    defparam \data_in[9]~FF .SR_SYNC = 1'b1;
    defparam \data_in[9]~FF .SR_VALUE = 1'b0;
    defparam \data_in[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[10]~FF  (.D(n390_12[10]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[10]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[10]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[10]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[10]~FF .D_POLARITY = 1'b1;
    defparam \data_in[10]~FF .SR_SYNC = 1'b1;
    defparam \data_in[10]~FF .SR_VALUE = 1'b0;
    defparam \data_in[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[11]~FF  (.D(n390_13[11]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[11]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[11]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[11]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[11]~FF .D_POLARITY = 1'b1;
    defparam \data_in[11]~FF .SR_SYNC = 1'b1;
    defparam \data_in[11]~FF .SR_VALUE = 1'b0;
    defparam \data_in[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[12]~FF  (.D(n390_14[12]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[12]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[12]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[12]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[12]~FF .D_POLARITY = 1'b1;
    defparam \data_in[12]~FF .SR_SYNC = 1'b1;
    defparam \data_in[12]~FF .SR_VALUE = 1'b0;
    defparam \data_in[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[13]~FF  (.D(n390_15[13]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[13]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[13]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[13]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[13]~FF .D_POLARITY = 1'b1;
    defparam \data_in[13]~FF .SR_SYNC = 1'b1;
    defparam \data_in[13]~FF .SR_VALUE = 1'b0;
    defparam \data_in[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[14]~FF  (.D(n390_16[14]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[14]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[14]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[14]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[14]~FF .D_POLARITY = 1'b1;
    defparam \data_in[14]~FF .SR_SYNC = 1'b1;
    defparam \data_in[14]~FF .SR_VALUE = 1'b0;
    defparam \data_in[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[15]~FF  (.D(n390_17[15]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[15]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[15]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[15]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[15]~FF .D_POLARITY = 1'b1;
    defparam \data_in[15]~FF .SR_SYNC = 1'b1;
    defparam \data_in[15]~FF .SR_VALUE = 1'b0;
    defparam \data_in[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[16]~FF  (.D(n390_18[16]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[16]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[16]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[16]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[16]~FF .D_POLARITY = 1'b1;
    defparam \data_in[16]~FF .SR_SYNC = 1'b1;
    defparam \data_in[16]~FF .SR_VALUE = 1'b0;
    defparam \data_in[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[17]~FF  (.D(n390_19[17]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[17]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[17]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[17]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[17]~FF .D_POLARITY = 1'b1;
    defparam \data_in[17]~FF .SR_SYNC = 1'b1;
    defparam \data_in[17]~FF .SR_VALUE = 1'b0;
    defparam \data_in[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[18]~FF  (.D(n390_20[18]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[18]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[18]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[18]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[18]~FF .D_POLARITY = 1'b1;
    defparam \data_in[18]~FF .SR_SYNC = 1'b1;
    defparam \data_in[18]~FF .SR_VALUE = 1'b0;
    defparam \data_in[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[19]~FF  (.D(n390_21[19]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[19]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[19]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[19]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[19]~FF .D_POLARITY = 1'b1;
    defparam \data_in[19]~FF .SR_SYNC = 1'b1;
    defparam \data_in[19]~FF .SR_VALUE = 1'b0;
    defparam \data_in[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[20]~FF  (.D(n390_22[20]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[20]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[20]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[20]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[20]~FF .D_POLARITY = 1'b1;
    defparam \data_in[20]~FF .SR_SYNC = 1'b1;
    defparam \data_in[20]~FF .SR_VALUE = 1'b0;
    defparam \data_in[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[21]~FF  (.D(n390_23[21]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[21]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[21]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[21]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[21]~FF .D_POLARITY = 1'b1;
    defparam \data_in[21]~FF .SR_SYNC = 1'b1;
    defparam \data_in[21]~FF .SR_VALUE = 1'b0;
    defparam \data_in[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[22]~FF  (.D(n390_24[22]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[22]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[22]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[22]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[22]~FF .D_POLARITY = 1'b1;
    defparam \data_in[22]~FF .SR_SYNC = 1'b1;
    defparam \data_in[22]~FF .SR_VALUE = 1'b0;
    defparam \data_in[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[23]~FF  (.D(n390_25[23]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[23]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[23]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[23]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[23]~FF .D_POLARITY = 1'b1;
    defparam \data_in[23]~FF .SR_SYNC = 1'b1;
    defparam \data_in[23]~FF .SR_VALUE = 1'b0;
    defparam \data_in[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[24]~FF  (.D(n390_26[24]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[24]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[24]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[24]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[24]~FF .D_POLARITY = 1'b1;
    defparam \data_in[24]~FF .SR_SYNC = 1'b1;
    defparam \data_in[24]~FF .SR_VALUE = 1'b0;
    defparam \data_in[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[25]~FF  (.D(n390_27[25]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[25]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[25]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[25]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[25]~FF .D_POLARITY = 1'b1;
    defparam \data_in[25]~FF .SR_SYNC = 1'b1;
    defparam \data_in[25]~FF .SR_VALUE = 1'b0;
    defparam \data_in[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[26]~FF  (.D(n390_28[26]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[26]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[26]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[26]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[26]~FF .D_POLARITY = 1'b1;
    defparam \data_in[26]~FF .SR_SYNC = 1'b1;
    defparam \data_in[26]~FF .SR_VALUE = 1'b0;
    defparam \data_in[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[27]~FF  (.D(n390_29[27]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[27]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[27]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[27]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[27]~FF .D_POLARITY = 1'b1;
    defparam \data_in[27]~FF .SR_SYNC = 1'b1;
    defparam \data_in[27]~FF .SR_VALUE = 1'b0;
    defparam \data_in[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[28]~FF  (.D(n390_30[28]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[28]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[28]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[28]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[28]~FF .D_POLARITY = 1'b1;
    defparam \data_in[28]~FF .SR_SYNC = 1'b1;
    defparam \data_in[28]~FF .SR_VALUE = 1'b0;
    defparam \data_in[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[29]~FF  (.D(n390_31[29]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[29]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[29]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[29]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[29]~FF .D_POLARITY = 1'b1;
    defparam \data_in[29]~FF .SR_SYNC = 1'b1;
    defparam \data_in[29]~FF .SR_VALUE = 1'b0;
    defparam \data_in[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[30]~FF  (.D(n390_32[30]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[30]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[30]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[30]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[30]~FF .D_POLARITY = 1'b1;
    defparam \data_in[30]~FF .SR_SYNC = 1'b1;
    defparam \data_in[30]~FF .SR_VALUE = 1'b0;
    defparam \data_in[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_in[32]~FF  (.D(n390_33[31]), .CE(rst_n_i), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(data_in[32])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \data_in[32]~FF .CLK_POLARITY = 1'b1;
    defparam \data_in[32]~FF .CE_POLARITY = 1'b1;
    defparam \data_in[32]~FF .SR_POLARITY = 1'b1;
    defparam \data_in[32]~FF .D_POLARITY = 1'b1;
    defparam \data_in[32]~FF .SR_SYNC = 1'b1;
    defparam \data_in[32]~FF .SR_VALUE = 1'b0;
    defparam \data_in[32]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[1]~FF  (.D(n934), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[2]~FF  (.D(n938), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[3]~FF  (.D(n942), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[4]~FF  (.D(n946), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[5]~FF  (.D(n950), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[6]~FF  (.D(n954), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[7]~FF  (.D(n958), .CE(ceg_net206), .CLK(\clk_i~O ), 
           .SR(1'b0), .Q(tx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \tx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .CE_POLARITY = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_SYNC = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[1]~FF  (.D(n480[1]), .CE(ceg_net331), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \byte_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[2]~FF  (.D(n480[2]), .CE(ceg_net331), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \byte_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[3]~FF  (.D(n480[3]), .CE(ceg_net331), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \byte_idx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[3]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[3]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[3]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[3]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[3]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_idx[4]~FF  (.D(n480[4]), .CE(ceg_net331), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(byte_idx[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \byte_idx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_idx[4]~FF .CE_POLARITY = 1'b0;
    defparam \byte_idx[4]~FF .SR_POLARITY = 1'b0;
    defparam \byte_idx[4]~FF .D_POLARITY = 1'b1;
    defparam \byte_idx[4]~FF .SR_SYNC = 1'b0;
    defparam \byte_idx[4]~FF .SR_VALUE = 1'b0;
    defparam \byte_idx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_state[1]~FF  (.D(n476[1]), .CE(ceg_net301), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \uart_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_state[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_state[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_state[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_state[2]~FF  (.D(n476[2]), .CE(ceg_net301), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_state[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(600)
    defparam \uart_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_state[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_state[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_state[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_state[2]~FF .SR_SYNC = 1'b0;
    defparam \uart_state[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_9/add_2/i1  (.I0(\Inst_SquareRoot/count [0]), 
            .I1(1'b0), .CI(n1365), .CO(\Inst_SquareRoot/sub_9/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(73)
    defparam \Inst_SquareRoot/sub_9/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_9/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i1  (.I0(root_y[0]), .I1(root_z[0]), .CI(1'b0), .O(n390_2[0]), 
            .CO(\add_13/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i1 .I0_POLARITY = 1'b1;
    defparam \add_13/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_20/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_20/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_20/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_20/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i2  (.I0(root_y[1]), .I1(root_z[1]), .CI(\add_13/n2 ), 
            .O(n390_3[1]), .CO(\add_13/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i2 .I0_POLARITY = 1'b1;
    defparam \add_13/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i17  (.I0(\Inst_SquareRoot/r_reg [14]), 
            .I1(\Inst_SquareRoot/q_reg [14]), .CI(\Inst_SquareRoot/sub_6/add_2/n32 ), 
            .O(\Inst_SquareRoot/n7 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i16  (.I0(\Inst_SquareRoot/r_reg [13]), 
            .I1(\Inst_SquareRoot/q_reg [13]), .CI(\Inst_SquareRoot/sub_6/add_2/n30 ), 
            .O(\Inst_SquareRoot/n7 [15]), .CO(\Inst_SquareRoot/sub_6/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i15  (.I0(\Inst_SquareRoot/r_reg [12]), 
            .I1(\Inst_SquareRoot/q_reg [12]), .CI(\Inst_SquareRoot/sub_6/add_2/n28 ), 
            .O(\Inst_SquareRoot/n7 [14]), .CO(\Inst_SquareRoot/sub_6/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i14  (.I0(\Inst_SquareRoot/r_reg [11]), 
            .I1(\Inst_SquareRoot/q_reg [11]), .CI(\Inst_SquareRoot/sub_6/add_2/n26 ), 
            .O(\Inst_SquareRoot/n7 [13]), .CO(\Inst_SquareRoot/sub_6/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i13  (.I0(\Inst_SquareRoot/r_reg [10]), 
            .I1(\Inst_SquareRoot/q_reg [10]), .CI(\Inst_SquareRoot/sub_6/add_2/n24 ), 
            .O(\Inst_SquareRoot/n7 [12]), .CO(\Inst_SquareRoot/sub_6/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i12  (.I0(\Inst_SquareRoot/r_reg [9]), 
            .I1(\Inst_SquareRoot/q_reg [9]), .CI(\Inst_SquareRoot/sub_6/add_2/n22 ), 
            .O(\Inst_SquareRoot/n7 [11]), .CO(\Inst_SquareRoot/sub_6/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i11  (.I0(\Inst_SquareRoot/r_reg [8]), 
            .I1(\Inst_SquareRoot/q_reg [8]), .CI(\Inst_SquareRoot/sub_6/add_2/n20 ), 
            .O(\Inst_SquareRoot/n7 [10]), .CO(\Inst_SquareRoot/sub_6/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i10  (.I0(\Inst_SquareRoot/r_reg [7]), 
            .I1(\Inst_SquareRoot/q_reg [7]), .CI(\Inst_SquareRoot/sub_6/add_2/n18 ), 
            .O(\Inst_SquareRoot/n7 [9]), .CO(\Inst_SquareRoot/sub_6/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i9  (.I0(\Inst_SquareRoot/r_reg [6]), 
            .I1(\Inst_SquareRoot/q_reg [6]), .CI(\Inst_SquareRoot/sub_6/add_2/n16 ), 
            .O(\Inst_SquareRoot/n7 [8]), .CO(\Inst_SquareRoot/sub_6/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i8  (.I0(\Inst_SquareRoot/r_reg [5]), 
            .I1(\Inst_SquareRoot/q_reg [5]), .CI(\Inst_SquareRoot/sub_6/add_2/n14 ), 
            .O(\Inst_SquareRoot/n7 [7]), .CO(\Inst_SquareRoot/sub_6/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i7  (.I0(\Inst_SquareRoot/r_reg [4]), 
            .I1(\Inst_SquareRoot/q_reg [4]), .CI(\Inst_SquareRoot/sub_6/add_2/n12 ), 
            .O(\Inst_SquareRoot/n7 [6]), .CO(\Inst_SquareRoot/sub_6/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i6  (.I0(\Inst_SquareRoot/r_reg [3]), 
            .I1(\Inst_SquareRoot/q_reg [3]), .CI(\Inst_SquareRoot/sub_6/add_2/n10 ), 
            .O(\Inst_SquareRoot/n7 [5]), .CO(\Inst_SquareRoot/sub_6/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i5  (.I0(\Inst_SquareRoot/r_reg [2]), 
            .I1(\Inst_SquareRoot/q_reg [2]), .CI(\Inst_SquareRoot/sub_6/add_2/n8 ), 
            .O(\Inst_SquareRoot/n7 [4]), .CO(\Inst_SquareRoot/sub_6/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i4  (.I0(\Inst_SquareRoot/r_reg [1]), 
            .I1(\Inst_SquareRoot/q_reg [1]), .CI(\Inst_SquareRoot/sub_6/add_2/n6 ), 
            .O(\Inst_SquareRoot/n7 [3]), .CO(\Inst_SquareRoot/sub_6/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i3  (.I0(\Inst_SquareRoot/r_reg [0]), 
            .I1(\Inst_SquareRoot/q_reg [0]), .CI(\Inst_SquareRoot/sub_6/add_2/n4 ), 
            .O(\Inst_SquareRoot/n7 [2]), .CO(\Inst_SquareRoot/sub_6/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i2  (.I0(\Inst_SquareRoot/a_reg [33]), 
            .I1(1'b1), .CI(\Inst_SquareRoot/sub_6/add_2/n2 ), .O(\Inst_SquareRoot/n7 [1]), 
            .CO(\Inst_SquareRoot/sub_6/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i2 .I1_POLARITY = 1'b1;
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
    EFX_ADD \add_13/i3  (.I0(root_y[2]), .I1(root_z[2]), .CI(\add_13/n4 ), 
            .O(n390_4[2]), .CO(\add_13/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i3 .I0_POLARITY = 1'b1;
    defparam \add_13/i3 .I1_POLARITY = 1'b1;
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
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i1  (.I0(\Inst_SquareRoot/a_reg [32]), 
            .I1(1'b0), .CI(n1366), .CO(\Inst_SquareRoot/sub_6/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i1 .I1_POLARITY = 1'b1;
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
    EFX_ADD \Inst_SquareRoot/sub_9/add_2/i5  (.I0(\Inst_SquareRoot/count [4]), 
            .I1(1'b1), .CI(\Inst_SquareRoot/sub_9/add_2/n8 ), .O(\Inst_SquareRoot/n49 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(73)
    defparam \Inst_SquareRoot/sub_9/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_9/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_9/add_2/i4  (.I0(\Inst_SquareRoot/count [3]), 
            .I1(1'b1), .CI(\Inst_SquareRoot/sub_9/add_2/n6 ), .O(\Inst_SquareRoot/n49 [3]), 
            .CO(\Inst_SquareRoot/sub_9/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(73)
    defparam \Inst_SquareRoot/sub_9/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_9/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_9/add_2/i3  (.I0(\Inst_SquareRoot/count [2]), 
            .I1(1'b1), .CI(\Inst_SquareRoot/sub_9/add_2/n4 ), .O(\Inst_SquareRoot/n49 [2]), 
            .CO(\Inst_SquareRoot/sub_9/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(73)
    defparam \Inst_SquareRoot/sub_9/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_9/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_9/add_2/i2  (.I0(\Inst_SquareRoot/count [1]), 
            .I1(1'b1), .CI(\Inst_SquareRoot/sub_9/add_2/n2 ), .O(\Inst_SquareRoot/n49 [1]), 
            .CO(\Inst_SquareRoot/sub_9/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(73)
    defparam \Inst_SquareRoot/sub_9/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_9/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i32  (.I0(root_y[31]), .I1(root_z[31]), .CI(\add_13/n62 ), 
            .O(n390_33[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i32 .I0_POLARITY = 1'b1;
    defparam \add_13/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i31  (.I0(root_y[30]), .I1(root_z[30]), .CI(\add_13/n60 ), 
            .O(n390_32[30]), .CO(\add_13/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i31 .I0_POLARITY = 1'b1;
    defparam \add_13/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i30  (.I0(root_y[29]), .I1(root_z[29]), .CI(\add_13/n58 ), 
            .O(n390_31[29]), .CO(\add_13/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i30 .I0_POLARITY = 1'b1;
    defparam \add_13/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i29  (.I0(root_y[28]), .I1(root_z[28]), .CI(\add_13/n56 ), 
            .O(n390_30[28]), .CO(\add_13/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i29 .I0_POLARITY = 1'b1;
    defparam \add_13/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i28  (.I0(root_y[27]), .I1(root_z[27]), .CI(\add_13/n54 ), 
            .O(n390_29[27]), .CO(\add_13/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i28 .I0_POLARITY = 1'b1;
    defparam \add_13/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i27  (.I0(root_y[26]), .I1(root_z[26]), .CI(\add_13/n52 ), 
            .O(n390_28[26]), .CO(\add_13/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i27 .I0_POLARITY = 1'b1;
    defparam \add_13/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i26  (.I0(root_y[25]), .I1(root_z[25]), .CI(\add_13/n50 ), 
            .O(n390_27[25]), .CO(\add_13/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i26 .I0_POLARITY = 1'b1;
    defparam \add_13/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i25  (.I0(root_y[24]), .I1(root_z[24]), .CI(\add_13/n48 ), 
            .O(n390_26[24]), .CO(\add_13/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i25 .I0_POLARITY = 1'b1;
    defparam \add_13/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i24  (.I0(root_y[23]), .I1(root_z[23]), .CI(\add_13/n46 ), 
            .O(n390_25[23]), .CO(\add_13/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i24 .I0_POLARITY = 1'b1;
    defparam \add_13/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i23  (.I0(root_y[22]), .I1(root_z[22]), .CI(\add_13/n44 ), 
            .O(n390_24[22]), .CO(\add_13/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i23 .I0_POLARITY = 1'b1;
    defparam \add_13/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i22  (.I0(root_y[21]), .I1(root_z[21]), .CI(\add_13/n42 ), 
            .O(n390_23[21]), .CO(\add_13/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i22 .I0_POLARITY = 1'b1;
    defparam \add_13/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i21  (.I0(root_y[20]), .I1(root_z[20]), .CI(\add_13/n40 ), 
            .O(n390_22[20]), .CO(\add_13/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i21 .I0_POLARITY = 1'b1;
    defparam \add_13/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i20  (.I0(root_y[19]), .I1(root_z[19]), .CI(\add_13/n38 ), 
            .O(n390_21[19]), .CO(\add_13/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i20 .I0_POLARITY = 1'b1;
    defparam \add_13/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i19  (.I0(root_y[18]), .I1(root_z[18]), .CI(\add_13/n36 ), 
            .O(n390_20[18]), .CO(\add_13/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i19 .I0_POLARITY = 1'b1;
    defparam \add_13/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i18  (.I0(root_y[17]), .I1(root_z[17]), .CI(\add_13/n34 ), 
            .O(n390_19[17]), .CO(\add_13/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i18 .I0_POLARITY = 1'b1;
    defparam \add_13/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i17  (.I0(root_y[16]), .I1(root_z[16]), .CI(\add_13/n32 ), 
            .O(n390_18[16]), .CO(\add_13/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i17 .I0_POLARITY = 1'b1;
    defparam \add_13/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i16  (.I0(root_y[15]), .I1(root_z[15]), .CI(\add_13/n30 ), 
            .O(n390_17[15]), .CO(\add_13/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i16 .I0_POLARITY = 1'b1;
    defparam \add_13/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i15  (.I0(root_y[14]), .I1(root_z[14]), .CI(\add_13/n28 ), 
            .O(n390_16[14]), .CO(\add_13/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i15 .I0_POLARITY = 1'b1;
    defparam \add_13/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i14  (.I0(root_y[13]), .I1(root_z[13]), .CI(\add_13/n26 ), 
            .O(n390_15[13]), .CO(\add_13/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i14 .I0_POLARITY = 1'b1;
    defparam \add_13/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i13  (.I0(root_y[12]), .I1(root_z[12]), .CI(\add_13/n24 ), 
            .O(n390_14[12]), .CO(\add_13/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i13 .I0_POLARITY = 1'b1;
    defparam \add_13/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i12  (.I0(root_y[11]), .I1(root_z[11]), .CI(\add_13/n22 ), 
            .O(n390_13[11]), .CO(\add_13/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i12 .I0_POLARITY = 1'b1;
    defparam \add_13/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i11  (.I0(root_y[10]), .I1(root_z[10]), .CI(\add_13/n20 ), 
            .O(n390_12[10]), .CO(\add_13/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i11 .I0_POLARITY = 1'b1;
    defparam \add_13/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i10  (.I0(root_y[9]), .I1(root_z[9]), .CI(\add_13/n18 ), 
            .O(n390_11[9]), .CO(\add_13/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i10 .I0_POLARITY = 1'b1;
    defparam \add_13/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i9  (.I0(root_y[8]), .I1(root_z[8]), .CI(\add_13/n16 ), 
            .O(n390_10[8]), .CO(\add_13/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i9 .I0_POLARITY = 1'b1;
    defparam \add_13/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i8  (.I0(root_y[7]), .I1(root_z[7]), .CI(\add_13/n14 ), 
            .O(n390_9[7]), .CO(\add_13/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i8 .I0_POLARITY = 1'b1;
    defparam \add_13/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i7  (.I0(root_y[6]), .I1(root_z[6]), .CI(\add_13/n12 ), 
            .O(n390_8[6]), .CO(\add_13/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i7 .I0_POLARITY = 1'b1;
    defparam \add_13/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i6  (.I0(root_y[5]), .I1(root_z[5]), .CI(\add_13/n10 ), 
            .O(n390_7[5]), .CO(\add_13/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i6 .I0_POLARITY = 1'b1;
    defparam \add_13/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i5  (.I0(root_y[4]), .I1(root_z[4]), .CI(\add_13/n8 ), 
            .O(n390_6[4]), .CO(\add_13/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i5 .I0_POLARITY = 1'b1;
    defparam \add_13/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_13/i4  (.I0(root_y[3]), .I1(root_z[3]), .CI(\add_13/n6 ), 
            .O(n390_5[3]), .CO(\add_13/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(516)
    defparam \add_13/i4 .I0_POLARITY = 1'b1;
    defparam \add_13/i4 .I1_POLARITY = 1'b1;
    EFX_MULT mult_8 (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), .CEB(1'b0), 
            .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({accel_z[15], accel_z[15], 
            accel_z}), .B({accel_z[15], accel_z[15], accel_z}), .O({Open_0, 
            Open_1, Open_2, Open_3, root_z})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(368)
    defparam mult_8.WIDTH = 18;
    defparam mult_8.A_REG = 1'b0;
    defparam mult_8.B_REG = 1'b0;
    defparam mult_8.O_REG = 1'b0;
    defparam mult_8.CLK_POLARITY = 1'b1;
    defparam mult_8.CEA_POLARITY = 1'b1;
    defparam mult_8.RSTA_POLARITY = 1'b1;
    defparam mult_8.RSTA_SYNC = 1'b0;
    defparam mult_8.RSTA_VALUE = 1'b0;
    defparam mult_8.CEB_POLARITY = 1'b1;
    defparam mult_8.RSTB_POLARITY = 1'b1;
    defparam mult_8.RSTB_SYNC = 1'b0;
    defparam mult_8.RSTB_VALUE = 1'b0;
    defparam mult_8.CEO_POLARITY = 1'b1;
    defparam mult_8.RSTO_POLARITY = 1'b1;
    defparam mult_8.RSTO_SYNC = 1'b0;
    defparam mult_8.RSTO_VALUE = 1'b0;
    defparam mult_8.SR_SYNC_PRIORITY = 1'b1;
    EFX_MULT mult_7 (.CLK(1'b0), .CEA(1'b0), .RSTA(1'b0), .CEB(1'b0), 
            .RSTB(1'b0), .CEO(1'b0), .RSTO(1'b0), .A({accel_y[15], accel_y[15], 
            accel_y}), .B({accel_y[15], accel_y[15], accel_y}), .O({Open_4, 
            Open_5, Open_6, Open_7, root_y})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_MULT, WIDTH=18, EFX_ATTRIBUTE_INSTANCE__IS_STF_MULT_PRE_SYNTHESIZED=TRUE, A_REG=1'b0, B_REG=1'b0, O_REG=1'b0, CLK_POLARITY=1'b1, CEA_POLARITY=1'b1, RSTA_POLARITY=1'b1, RSTA_SYNC=1'b0, RSTA_VALUE=1'b0, CEB_POLARITY=1'b1, RSTB_POLARITY=1'b1, RSTB_SYNC=1'b0, RSTB_VALUE=1'b0, CEO_POLARITY=1'b1, RSTO_POLARITY=1'b1, RSTO_SYNC=1'b0, RSTO_VALUE=1'b0, SR_SYNC_PRIORITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam mult_7.WIDTH = 18;
    defparam mult_7.A_REG = 1'b0;
    defparam mult_7.B_REG = 1'b0;
    defparam mult_7.O_REG = 1'b0;
    defparam mult_7.CLK_POLARITY = 1'b1;
    defparam mult_7.CEA_POLARITY = 1'b1;
    defparam mult_7.RSTA_POLARITY = 1'b1;
    defparam mult_7.RSTA_SYNC = 1'b0;
    defparam mult_7.RSTA_VALUE = 1'b0;
    defparam mult_7.CEB_POLARITY = 1'b1;
    defparam mult_7.RSTB_POLARITY = 1'b1;
    defparam mult_7.RSTB_SYNC = 1'b0;
    defparam mult_7.RSTB_VALUE = 1'b0;
    defparam mult_7.CEO_POLARITY = 1'b1;
    defparam mult_7.RSTO_POLARITY = 1'b1;
    defparam mult_7.RSTO_SYNC = 1'b0;
    defparam mult_7.RSTO_VALUE = 1'b0;
    defparam mult_7.SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__2133 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1063)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2133.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2134 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n1064)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2134.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2135 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1065)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2135.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2136 (.I0(n1064), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1065), .O(n1066)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2136.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2137 (.I0(switch_out), .I1(n1063), .I2(n1062), .I3(n1066), 
            .O(ceg_net323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2137.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2138 (.I0(byte_idx[0]), .I1(uart_state[2]), .O(n480_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(594)
    defparam LUT__2138.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2139 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(tx_busy_sig), 
            .I3(uart_state[2]), .O(ceg_net331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf1fe */ ;
    defparam LUT__2139.LUTMASK = 16'hf1fe;
    EFX_LUT4 LUT__2140 (.I0(byte_idx[2]), .I1(byte_idx[3]), .I2(byte_idx[4]), 
            .O(n1067)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2140.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2141 (.I0(data_out[8]), .I1(data_out[0]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n1068)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2141.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2142 (.I0(gyro_z[0]), .I1(data_out[16]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1069)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ff5 */ ;
    defparam LUT__2142.LUTMASK = 16'h3ff5;
    EFX_LUT4 LUT__2143 (.I0(gyro_z[8]), .I1(gyro_y[8]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1070)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2143.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2144 (.I0(gyro_y[0]), .I1(gyro_x[0]), .I2(byte_idx[0]), 
            .I3(n1070), .O(n1071)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2144.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2145 (.I0(n1071), .I1(n1069), .I2(byte_idx[2]), .O(n1072)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2145.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2146 (.I0(gyro_x[8]), .I1(accel_z[8]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1073)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2146.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2147 (.I0(accel_z[0]), .I1(accel_y[0]), .I2(byte_idx[0]), 
            .I3(n1073), .O(n1074)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2147.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2148 (.I0(accel_y[8]), .I1(accel_x[8]), .I2(byte_idx[1]), 
            .O(n1075)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2148.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2149 (.I0(accel_x[0]), .I1(byte_idx[1]), .I2(n1075), 
            .I3(byte_idx[0]), .O(n1076)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__2149.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__2150 (.I0(n1076), .I1(n1074), .I2(byte_idx[2]), .O(n1077)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2150.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2151 (.I0(n1077), .I1(n1072), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1078)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;
    defparam LUT__2151.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__2152 (.I0(n1068), .I1(n1067), .I2(n1078), .I3(uart_state[1]), 
            .O(n930)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2152.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2153 (.I0(uart_state[2]), .I1(uart_state[0]), .I2(uart_state[1]), 
            .O(ceg_net206)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hebeb */ ;
    defparam LUT__2153.LUTMASK = 16'hebeb;
    EFX_LUT4 LUT__2154 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(uart_state[2]), 
            .O(n476_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1616 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2154.LUTMASK = 16'h1616;
    EFX_LUT4 LUT__2155 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(tx_busy_sig), 
            .I3(uart_state[2]), .O(ceg_net301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he110 */ ;
    defparam LUT__2155.LUTMASK = 16'he110;
    EFX_LUT4 LUT__2156 (.I0(uart_state[0]), .I1(uart_state[1]), .O(\~n983 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2156.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2157 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1079)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2157.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2158 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n1079), 
            .O(\Inst_MPU6500_Controller/n5015 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2158.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2159 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1080)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2159.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2160 (.I0(\Inst_MPU6500_Controller/byte_cntr [3]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(spi_data_valid), .I3(n1080), .O(n1081)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2160.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2161 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1081), .O(\Inst_MPU6500_Controller/n6149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2161.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2162 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .O(n1082)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2162.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2163 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n1083)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2163.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2164 (.I0(n1082), .I1(n1083), .O(n1084)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2164.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2165 (.I0(spi_data_valid), .I1(n1080), .I2(n1084), .O(n1085)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2165.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2166 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n1086)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2166.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2167 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n1087)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2167.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2168 (.I0(\Inst_MPU6500_Controller/delay_cntr [12]), .I1(n1086), 
            .I2(n1087), .O(n1088)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2168.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2169 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n1089)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2169.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2170 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [8]), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n1090)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2170.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2171 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1091)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2171.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2172 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n1092)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2172.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2173 (.I0(n1089), .I1(n1090), .I2(n1091), .I3(n1092), 
            .O(n1093)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2173.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2174 (.I0(n1093), .I1(n1088), .I2(n1065), .O(n1094)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2174.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2175 (.I0(n1086), .I1(n1089), .I2(n1090), .O(n1095)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2175.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2176 (.I0(\Inst_MPU6500_Controller/delay_cntr [14]), .I1(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(n1096)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2176.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2177 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1097)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2177.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2178 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(n1098)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2178.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2179 (.I0(\Inst_MPU6500_Controller/delay_cntr [11]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1099)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2179.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2180 (.I0(n1096), .I1(n1097), .I2(n1098), .I3(n1099), 
            .O(n1100)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2180.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2181 (.I0(n1100), .I1(n1095), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n1101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2181.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2182 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1094), 
            .I2(n1101), .O(n1102)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2182.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2183 (.I0(n1063), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2183.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2184 (.I0(n1103), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1104)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2184.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2185 (.I0(n1085), .I1(n1102), .I2(n1104), .I3(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n741 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1003 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2185.LUTMASK = 16'h1003;
    EFX_LUT4 LUT__2186 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1105)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2186.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2187 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(switch_out), 
            .O(n1106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2187.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2188 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n1107)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c00 */ ;
    defparam LUT__2188.LUTMASK = 16'h2c00;
    EFX_LUT4 LUT__2189 (.I0(n1106), .I1(n1105), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1107), .O(ceg_net347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__2189.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__2190 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n1108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2190.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2191 (.I0(n1083), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n1108), .O(n1109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2191.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2192 (.I0(n1105), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1110)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2192.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2193 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(n1109), .I3(n1110), .O(\Inst_MPU6500_Controller/n736 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2193.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__2194 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1111)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2194.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2195 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(n1111), .O(ceg_net362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf23f */ ;
    defparam LUT__2195.LUTMASK = 16'hf23f;
    EFX_LUT4 LUT__2196 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n778 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2196.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__2197 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1112)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2197.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2198 (.I0(\Inst_MPU6500_Controller/delay_cntr [18]), .I1(n1098), 
            .I2(n1112), .O(n1113)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2198.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2199 (.I0(n1093), .I1(n1113), .O(n1114)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2199.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2200 (.I0(spi_data_valid), .I1(n1114), .I2(\Inst_MPU6500_Controller/state [2]), 
            .O(n1115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2200.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2201 (.I0(n1094), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1079), .O(n1116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2201.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2202 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1115), 
            .I2(n1116), .I3(\Inst_MPU6500_Controller/state [0]), .O(\Inst_MPU6500_Controller/n764 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h88f0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2202.LUTMASK = 16'h88f0;
    EFX_LUT4 LUT__2203 (.I0(n1095), .I1(n1100), .I2(switch_out), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n1117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2203.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2204 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n1118)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2204.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2205 (.I0(n1117), .I1(n1118), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n1119)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf335 */ ;
    defparam LUT__2205.LUTMASK = 16'hf335;
    EFX_LUT4 LUT__2206 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1119), 
            .O(ceg_net349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2206.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2207 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1081), 
            .I2(n1082), .O(\Inst_MPU6500_Controller/n6156 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2207.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2208 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n1081), .O(\Inst_MPU6500_Controller/n6131 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2208.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2209 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1081), .O(\Inst_MPU6500_Controller/n6132 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2209.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2210 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1081), .O(\Inst_MPU6500_Controller/n6133 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2210.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2211 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1081), 
            .I2(n1082), .O(\Inst_MPU6500_Controller/n6134 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2211.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2212 (.I0(\Inst_MPU6500_Controller/byte_cntr [3]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(spi_data_valid), .I3(n1080), .O(n1120)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2212.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2213 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1120), .O(\Inst_MPU6500_Controller/n6205 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2213.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2214 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1082), 
            .I2(n1120), .O(\Inst_MPU6500_Controller/n6212 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2214.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2215 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n1120), .O(\Inst_MPU6500_Controller/n6219 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2215.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2216 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1120), .O(\Inst_MPU6500_Controller/n6226 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2216.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2217 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1120), .O(\Inst_MPU6500_Controller/n6233 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2217.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2218 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1085), 
            .O(\Inst_MPU6500_Controller/n6240 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2218.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2219 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2219.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2220 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(n1062), .I3(n1121), .O(\Inst_MPU6500_Controller/n769 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2220.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__2221 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(25)
    defparam LUT__2221.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__2222 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_cs_n_o), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1ff0 */ ;
    defparam LUT__2222.LUTMASK = 16'h1ff0;
    EFX_LUT4 LUT__2223 (.I0(spi_cs_n_o), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2223.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2224 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(spi_data_valid), 
            .I2(n1084), .I3(n1123), .O(n1124)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__2224.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__2225 (.I0(n1122), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1124), .O(\Inst_MPU6500_Controller/n731 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2225.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2226 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_data_valid), 
            .O(n1125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2226.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2227 (.I0(n1125), .I1(switch_out), .I2(n1111), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n1126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ba */ ;
    defparam LUT__2227.LUTMASK = 16'hf0ba;
    EFX_LUT4 LUT__2228 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1126), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n1105), .O(ceg_net351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf111 */ ;
    defparam LUT__2228.LUTMASK = 16'hf111;
    EFX_LUT4 LUT__2229 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(spi_data_valid), 
            .I2(n1080), .I3(n1084), .O(n1127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2229.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2230 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(n1103), 
            .O(n1128)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2230.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2231 (.I0(n1114), .I1(n1127), .I2(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I3(n1128), .O(n1129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__2231.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__2232 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n1130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__2232.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2233 (.I0(n1101), .I1(n1094), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2233.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2234 (.I0(n1130), .I1(n1131), .I2(n1129), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n741 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2234.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__2235 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n1132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2235.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2236 (.I0(n1094), .I1(n1101), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .I3(n1132), .O(n1133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;
    defparam LUT__2236.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__2237 (.I0(n1114), .I1(n1104), .I2(n1132), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n1134)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__2237.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__2238 (.I0(n1127), .I1(n1134), .I2(n1133), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n741 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h11f0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2238.LUTMASK = 16'h11f0;
    EFX_LUT4 LUT__2239 (.I0(\Inst_MPU6500_Controller/delay_cntr [2]), .I1(n1132), 
            .O(n1135)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2239.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2240 (.I0(n1094), .I1(n1101), .I2(n1127), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1136)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__2240.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__2241 (.I0(n1104), .I1(n1135), .I2(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I3(n1136), .O(\Inst_MPU6500_Controller/n741 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2241.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__2242 (.I0(n1085), .I1(n1104), .O(n1137)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2242.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2243 (.I0(n1113), .I1(n1093), .I2(n1063), .I3(n1079), 
            .O(n1138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__2243.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2244 (.I0(n1094), .I1(n1101), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1138), .O(n1139)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__2244.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__2245 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n1140)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2245.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2246 (.I0(n1137), .I1(n1139), .I2(n1140), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n741 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2246.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__2247 (.I0(n1104), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(n1140), .O(n1141)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2247.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2248 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(n1141), 
            .I2(n1136), .O(\Inst_MPU6500_Controller/n741 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2248.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2249 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(n1141), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .I3(n1136), .O(\Inst_MPU6500_Controller/n741 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2249.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2250 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .O(n1142)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2250.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2251 (.I0(n1140), .I1(n1142), .O(n1143)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2251.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2252 (.I0(n1103), .I1(n1143), .O(n1144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2252.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2253 (.I0(n1127), .I1(n1144), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__2253.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__2254 (.I0(n1145), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n1143), .I3(n1131), .O(\Inst_MPU6500_Controller/n741 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2254.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__2255 (.I0(n1104), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n1143), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), .O(n1146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40bf */ ;
    defparam LUT__2255.LUTMASK = 16'h40bf;
    EFX_LUT4 LUT__2256 (.I0(n1146), .I1(n1136), .O(\Inst_MPU6500_Controller/n741 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2256.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2257 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(n1147)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2257.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2258 (.I0(n1143), .I1(n1147), .O(n1148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2258.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2259 (.I0(n1137), .I1(n1139), .I2(n1148), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(\Inst_MPU6500_Controller/n741 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2259.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__2260 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(n1143), 
            .I2(n1147), .O(n1149)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2260.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2261 (.I0(n1137), .I1(n1139), .I2(n1149), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(\Inst_MPU6500_Controller/n741 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2261.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__2262 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(n1149), 
            .O(n1150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2262.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2263 (.I0(n1104), .I1(n1150), .I2(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I3(n1136), .O(\Inst_MPU6500_Controller/n741 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2263.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__2264 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(n1149), .O(n1151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2264.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2265 (.I0(n1137), .I1(n1139), .I2(n1151), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(\Inst_MPU6500_Controller/n741 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2265.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__2266 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2266.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2267 (.I0(n1140), .I1(n1142), .I2(n1147), .I3(n1152), 
            .O(n1153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2267.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2268 (.I0(n1103), .I1(n1153), .O(n1154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2268.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2269 (.I0(n1127), .I1(n1154), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__2269.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__2270 (.I0(n1155), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(n1153), .I3(n1131), .O(\Inst_MPU6500_Controller/n741 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2270.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__2271 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1103), 
            .I2(n1153), .O(n1156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2271.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2272 (.I0(n1127), .I1(n1156), .I2(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__2272.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__2273 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1153), 
            .O(n1158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2273.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2274 (.I0(n1157), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(n1158), .I3(n1131), .O(\Inst_MPU6500_Controller/n741 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2274.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__2275 (.I0(n1104), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(n1158), .O(n1159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2275.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2276 (.I0(\Inst_MPU6500_Controller/delay_cntr [15]), .I1(n1159), 
            .I2(n1136), .O(\Inst_MPU6500_Controller/n741 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2276.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2277 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1096), 
            .I2(n1153), .O(n1160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2277.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2278 (.I0(n1114), .I1(n1063), .I2(n1160), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1161)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__2278.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__2279 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1096), 
            .I2(n1153), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), .O(n1162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__2279.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__2280 (.I0(n1101), .I1(n1094), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1162), .O(n1163)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__2280.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__2281 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n1085), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1164)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2281.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2282 (.I0(n1161), .I1(n1079), .I2(n1163), .I3(n1164), 
            .O(\Inst_MPU6500_Controller/n741 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2282.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__2283 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1165)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2283.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2284 (.I0(n1153), .I1(n1165), .O(n1166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2284.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2285 (.I0(n1127), .I1(n1103), .I2(n1166), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(n1167)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hea3f */ ;
    defparam LUT__2285.LUTMASK = 16'hea3f;
    EFX_LUT4 LUT__2286 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(n1166), 
            .O(n1168)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__2286.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2287 (.I0(n1168), .I1(n1131), .I2(n1167), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n741 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2287.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__2288 (.I0(n1127), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .I2(n1114), .I3(n1103), .O(n1169)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__2288.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__2289 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(n1166), 
            .I2(n1104), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), .O(n1170)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0807 */ ;
    defparam LUT__2289.LUTMASK = 16'h0807;
    EFX_LUT4 LUT__2290 (.I0(n1169), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n1102), .I3(n1170), .O(\Inst_MPU6500_Controller/n741 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2290.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__2291 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .I2(n1153), .I3(n1165), .O(n1171)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2291.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2292 (.I0(n1127), .I1(n1103), .I2(n1171), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n1172)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hea3f */ ;
    defparam LUT__2292.LUTMASK = 16'hea3f;
    EFX_LUT4 LUT__2293 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(n1171), 
            .O(n1173)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__2293.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2294 (.I0(n1173), .I1(n1131), .I2(n1172), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n741 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2294.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__2295 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [19]), .I3(n1165), .O(n1174)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2295.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2296 (.I0(n1103), .I1(n1153), .I2(n1174), .O(n1175)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2296.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2297 (.I0(n1127), .I1(n1175), .I2(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1176)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__2297.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__2298 (.I0(n1153), .I1(n1174), .O(n1177)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2298.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2299 (.I0(n1176), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(n1177), .I3(n1131), .O(\Inst_MPU6500_Controller/n741 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2299.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__2300 (.I0(\Inst_MPU6500_Controller/delay_cntr [20]), .I1(n1177), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [21]), .O(n1178)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__2300.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__2301 (.I0(\Inst_MPU6500_Controller/delay_cntr [20]), .I1(n1103), 
            .I2(n1153), .I3(n1174), .O(n1179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2301.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2302 (.I0(n1127), .I1(n1179), .I2(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__2302.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__2303 (.I0(n1178), .I1(n1131), .I2(n1180), .O(\Inst_MPU6500_Controller/n741 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2303.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__2304 (.I0(\Inst_MPU6500_Controller/raw_data[1] [1]), .I1(\Inst_MPU6500_Controller/raw_data[1] [2]), 
            .O(\Inst_MPU6500_Controller/n1914 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2304.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2305 (.I0(\Inst_MPU6500_Controller/raw_data[1] [1]), .I1(\Inst_MPU6500_Controller/raw_data[1] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [3]), .O(\Inst_MPU6500_Controller/n1919 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2305.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2306 (.I0(\Inst_MPU6500_Controller/raw_data[1] [1]), .I1(\Inst_MPU6500_Controller/raw_data[1] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [3]), .I3(\Inst_MPU6500_Controller/raw_data[1] [4]), 
            .O(\Inst_MPU6500_Controller/n1924 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2306.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__2307 (.I0(\Inst_MPU6500_Controller/raw_data[1] [1]), .I1(\Inst_MPU6500_Controller/raw_data[1] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [3]), .I3(\Inst_MPU6500_Controller/raw_data[1] [4]), 
            .O(n1181)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2307.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2308 (.I0(\Inst_MPU6500_Controller/raw_data[1] [5]), .I1(n1181), 
            .O(\Inst_MPU6500_Controller/n1929 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2308.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2309 (.I0(\Inst_MPU6500_Controller/raw_data[1] [5]), .I1(n1181), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [6]), .O(\Inst_MPU6500_Controller/n1934 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2309.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__2310 (.I0(\Inst_MPU6500_Controller/raw_data[1] [5]), .I1(n1181), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [6]), .I3(\Inst_MPU6500_Controller/raw_data[1] [7]), 
            .O(\Inst_MPU6500_Controller/n1939 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2310.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__2311 (.I0(\Inst_MPU6500_Controller/raw_data[1] [5]), .I1(n1181), 
            .I2(\Inst_MPU6500_Controller/raw_data[1] [6]), .I3(\Inst_MPU6500_Controller/raw_data[1] [7]), 
            .O(n1182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2311.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2312 (.I0(\Inst_MPU6500_Controller/raw_data[0] [0]), .I1(n1182), 
            .O(\Inst_MPU6500_Controller/n1944 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2312.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2313 (.I0(n1182), .I1(\Inst_MPU6500_Controller/raw_data[0] [0]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [1]), .O(\Inst_MPU6500_Controller/n1949 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2313.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__2314 (.I0(\Inst_MPU6500_Controller/raw_data[0] [0]), .I1(n1182), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [1]), .I3(\Inst_MPU6500_Controller/raw_data[0] [2]), 
            .O(\Inst_MPU6500_Controller/n1954 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0df2 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2314.LUTMASK = 16'h0df2;
    EFX_LUT4 LUT__2315 (.I0(n1182), .I1(\Inst_MPU6500_Controller/raw_data[0] [0]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [1]), .I3(\Inst_MPU6500_Controller/raw_data[0] [2]), 
            .O(n1183)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2315.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2316 (.I0(\Inst_MPU6500_Controller/raw_data[0] [3]), .I1(n1183), 
            .O(\Inst_MPU6500_Controller/n1959 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2316.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2317 (.I0(\Inst_MPU6500_Controller/raw_data[0] [3]), .I1(n1183), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [4]), .O(\Inst_MPU6500_Controller/n1964 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2317.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2318 (.I0(\Inst_MPU6500_Controller/raw_data[0] [3]), .I1(\Inst_MPU6500_Controller/raw_data[0] [4]), 
            .I2(n1183), .I3(\Inst_MPU6500_Controller/raw_data[0] [5]), .O(\Inst_MPU6500_Controller/n1969 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2318.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2319 (.I0(\Inst_MPU6500_Controller/raw_data[0] [3]), .I1(\Inst_MPU6500_Controller/raw_data[0] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [5]), .I3(n1183), .O(n1184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2319.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2320 (.I0(\Inst_MPU6500_Controller/raw_data[0] [6]), .I1(n1184), 
            .O(\Inst_MPU6500_Controller/n1974 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2320.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2321 (.I0(\Inst_MPU6500_Controller/raw_data[0] [6]), .I1(n1184), 
            .I2(\Inst_MPU6500_Controller/raw_data[0] [7]), .O(\Inst_MPU6500_Controller/n1979 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2321.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2322 (.I0(\Inst_MPU6500_Controller/raw_data[3] [0]), .I1(\Inst_MPU6500_Controller/raw_data[3] [1]), 
            .O(\Inst_MPU6500_Controller/n4326 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2322.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2323 (.I0(\Inst_MPU6500_Controller/raw_data[3] [0]), .I1(\Inst_MPU6500_Controller/raw_data[3] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [2]), .O(\Inst_MPU6500_Controller/n4331 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2323.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__2324 (.I0(\Inst_MPU6500_Controller/raw_data[3] [0]), .I1(\Inst_MPU6500_Controller/raw_data[3] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [2]), .I3(\Inst_MPU6500_Controller/raw_data[3] [3]), 
            .O(\Inst_MPU6500_Controller/n4336 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he01f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2324.LUTMASK = 16'he01f;
    EFX_LUT4 LUT__2325 (.I0(\Inst_MPU6500_Controller/raw_data[3] [1]), .I1(\Inst_MPU6500_Controller/raw_data[3] [0]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [2]), .I3(\Inst_MPU6500_Controller/raw_data[3] [3]), 
            .O(n1185)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2325.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2326 (.I0(\Inst_MPU6500_Controller/raw_data[3] [4]), .I1(n1185), 
            .O(\Inst_MPU6500_Controller/n4341 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2326.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2327 (.I0(n1185), .I1(\Inst_MPU6500_Controller/raw_data[3] [4]), 
            .O(n1186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2327.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2328 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(n1186), 
            .O(\Inst_MPU6500_Controller/n4346 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2328.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2329 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(n1186), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [6]), .O(\Inst_MPU6500_Controller/n4351 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2329.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2330 (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), .I1(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .I2(n1186), .O(n1187)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2330.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2331 (.I0(\Inst_MPU6500_Controller/raw_data[3] [7]), .I1(n1187), 
            .O(\Inst_MPU6500_Controller/n4356 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2331.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2332 (.I0(\Inst_MPU6500_Controller/raw_data[3] [7]), .I1(n1187), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [0]), .O(\Inst_MPU6500_Controller/n4361 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2332.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2333 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[3] [7]), 
            .I2(n1187), .I3(\Inst_MPU6500_Controller/raw_data[2] [1]), .O(\Inst_MPU6500_Controller/n4366 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2333.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2334 (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), .I1(\Inst_MPU6500_Controller/raw_data[2] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [5]), .I3(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .O(n1188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2334.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2335 (.I0(n1185), .I1(\Inst_MPU6500_Controller/raw_data[3] [4]), 
            .I2(\Inst_MPU6500_Controller/raw_data[3] [7]), .I3(n1188), .O(n1189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__2335.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__2336 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(n1189), 
            .O(\Inst_MPU6500_Controller/n4371 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2336.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2337 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(n1189), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [3]), .O(\Inst_MPU6500_Controller/n4376 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2337.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2338 (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), .I1(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .I2(n1189), .O(n1190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2338.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2339 (.I0(\Inst_MPU6500_Controller/raw_data[2] [4]), .I1(n1190), 
            .O(\Inst_MPU6500_Controller/n4381 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2339.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2340 (.I0(\Inst_MPU6500_Controller/raw_data[2] [4]), .I1(n1190), 
            .O(n1191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2340.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2341 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n1191), 
            .O(\Inst_MPU6500_Controller/n4386 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2341.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2342 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(n1191), 
            .I2(\Inst_MPU6500_Controller/raw_data[2] [6]), .O(\Inst_MPU6500_Controller/n4391 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2342.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2343 (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), .I1(\Inst_MPU6500_Controller/raw_data[2] [6]), 
            .I2(n1191), .I3(\Inst_MPU6500_Controller/raw_data[2] [7]), .O(\Inst_MPU6500_Controller/n4396 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2343.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2344 (.I0(\Inst_MPU6500_Controller/raw_data[5] [2]), .I1(\Inst_MPU6500_Controller/raw_data[5] [3]), 
            .O(\Inst_MPU6500_Controller/n4416 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2344.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2345 (.I0(\Inst_MPU6500_Controller/raw_data[5] [2]), .I1(\Inst_MPU6500_Controller/raw_data[5] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[5] [4]), .O(\Inst_MPU6500_Controller/n4421 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2345.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2346 (.I0(\Inst_MPU6500_Controller/raw_data[5] [2]), .I1(\Inst_MPU6500_Controller/raw_data[5] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[5] [4]), .I3(\Inst_MPU6500_Controller/raw_data[5] [5]), 
            .O(\Inst_MPU6500_Controller/n4426 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2346.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__2347 (.I0(\Inst_MPU6500_Controller/raw_data[5] [2]), .I1(\Inst_MPU6500_Controller/raw_data[5] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[5] [4]), .I3(\Inst_MPU6500_Controller/raw_data[5] [5]), 
            .O(n1192)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2347.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2348 (.I0(\Inst_MPU6500_Controller/raw_data[5] [6]), .I1(n1192), 
            .O(\Inst_MPU6500_Controller/n4431 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2348.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2349 (.I0(\Inst_MPU6500_Controller/raw_data[5] [6]), .I1(n1192), 
            .I2(\Inst_MPU6500_Controller/raw_data[5] [7]), .O(\Inst_MPU6500_Controller/n4436 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2349.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2350 (.I0(\Inst_MPU6500_Controller/raw_data[5] [6]), .I1(\Inst_MPU6500_Controller/raw_data[5] [7]), 
            .I2(n1192), .I3(\Inst_MPU6500_Controller/raw_data[4] [0]), .O(\Inst_MPU6500_Controller/n4441 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2350.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2351 (.I0(\Inst_MPU6500_Controller/raw_data[4] [0]), .I1(\Inst_MPU6500_Controller/raw_data[5] [6]), 
            .I2(\Inst_MPU6500_Controller/raw_data[5] [7]), .I3(n1192), .O(n1193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2351.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2352 (.I0(\Inst_MPU6500_Controller/raw_data[4] [1]), .I1(n1193), 
            .O(\Inst_MPU6500_Controller/n4446 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2352.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2353 (.I0(\Inst_MPU6500_Controller/raw_data[4] [1]), .I1(n1193), 
            .I2(\Inst_MPU6500_Controller/raw_data[4] [2]), .O(\Inst_MPU6500_Controller/n4451 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2353.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2354 (.I0(\Inst_MPU6500_Controller/raw_data[4] [1]), .I1(\Inst_MPU6500_Controller/raw_data[4] [2]), 
            .I2(n1193), .I3(\Inst_MPU6500_Controller/raw_data[4] [3]), .O(\Inst_MPU6500_Controller/n4456 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2354.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__2355 (.I0(\Inst_MPU6500_Controller/raw_data[4] [1]), .I1(\Inst_MPU6500_Controller/raw_data[4] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[4] [3]), .I3(n1193), .O(n1194)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2355.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2356 (.I0(\Inst_MPU6500_Controller/raw_data[4] [4]), .I1(n1194), 
            .O(\Inst_MPU6500_Controller/n4461 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2356.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2357 (.I0(\Inst_MPU6500_Controller/raw_data[4] [4]), .I1(n1194), 
            .I2(\Inst_MPU6500_Controller/raw_data[4] [5]), .O(\Inst_MPU6500_Controller/n4466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2357.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2358 (.I0(\Inst_MPU6500_Controller/raw_data[4] [4]), .I1(\Inst_MPU6500_Controller/raw_data[4] [5]), 
            .I2(n1194), .I3(\Inst_MPU6500_Controller/raw_data[4] [6]), .O(\Inst_MPU6500_Controller/n4471 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2358.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2359 (.I0(\Inst_MPU6500_Controller/raw_data[4] [4]), .I1(\Inst_MPU6500_Controller/raw_data[4] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[4] [6]), .O(n1195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2359.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2360 (.I0(n1194), .I1(n1195), .I2(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .O(\Inst_MPU6500_Controller/n4476 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2360.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2361 (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), .I1(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .O(\Inst_MPU6500_Controller/n4491 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2361.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2362 (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), .I1(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [3]), .O(\Inst_MPU6500_Controller/n4496 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2362.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__2363 (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), .I1(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [3]), .I3(\Inst_MPU6500_Controller/raw_data[9] [4]), 
            .O(\Inst_MPU6500_Controller/n4501 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf807 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2363.LUTMASK = 16'hf807;
    EFX_LUT4 LUT__2364 (.I0(\Inst_MPU6500_Controller/raw_data[9] [2]), .I1(\Inst_MPU6500_Controller/raw_data[9] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [3]), .I3(\Inst_MPU6500_Controller/raw_data[9] [4]), 
            .O(n1196)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__2364.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__2365 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1196), 
            .O(\Inst_MPU6500_Controller/n4506 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2365.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2366 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1196), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [6]), .O(\Inst_MPU6500_Controller/n4511 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2366.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__2367 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1196), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [6]), .I3(\Inst_MPU6500_Controller/raw_data[9] [7]), 
            .O(\Inst_MPU6500_Controller/n4516 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2367.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__2368 (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), .I1(n1196), 
            .I2(\Inst_MPU6500_Controller/raw_data[9] [6]), .I3(\Inst_MPU6500_Controller/raw_data[9] [7]), 
            .O(n1197)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2368.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2369 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(n1197), 
            .O(\Inst_MPU6500_Controller/n4521 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2369.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2370 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(n1197), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [1]), .O(\Inst_MPU6500_Controller/n4526 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2370.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2371 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(\Inst_MPU6500_Controller/raw_data[8] [1]), 
            .I2(n1197), .I3(\Inst_MPU6500_Controller/raw_data[8] [2]), .O(\Inst_MPU6500_Controller/n4531 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2371.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2372 (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), .I1(\Inst_MPU6500_Controller/raw_data[8] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [2]), .I3(n1197), .O(n1198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2372.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2373 (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), .I1(n1198), 
            .O(\Inst_MPU6500_Controller/n4536 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2373.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2374 (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), .I1(n1198), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [4]), .O(\Inst_MPU6500_Controller/n4541 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2374.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2375 (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), .I1(\Inst_MPU6500_Controller/raw_data[8] [4]), 
            .I2(n1198), .O(n1199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2375.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2376 (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), .I1(n1199), 
            .O(\Inst_MPU6500_Controller/n4546 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2376.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2377 (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), .I1(n1199), 
            .I2(\Inst_MPU6500_Controller/raw_data[8] [6]), .O(\Inst_MPU6500_Controller/n4551 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2377.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2378 (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), .I1(\Inst_MPU6500_Controller/raw_data[8] [6]), 
            .I2(n1199), .I3(\Inst_MPU6500_Controller/raw_data[8] [7]), .O(\Inst_MPU6500_Controller/n4556 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2378.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2379 (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), .I1(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .O(\Inst_MPU6500_Controller/n4571 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2379.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2380 (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), .I1(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [3]), .O(\Inst_MPU6500_Controller/n4576 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2380.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__2381 (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), .I1(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [3]), .I3(\Inst_MPU6500_Controller/raw_data[11] [4]), 
            .O(\Inst_MPU6500_Controller/n4581 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2381.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__2382 (.I0(\Inst_MPU6500_Controller/raw_data[11] [2]), .I1(\Inst_MPU6500_Controller/raw_data[11] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [3]), .I3(\Inst_MPU6500_Controller/raw_data[11] [4]), 
            .O(n1200)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__2382.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__2383 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(n1200), 
            .O(\Inst_MPU6500_Controller/n4586 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2383.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2384 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(n1200), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [6]), .O(\Inst_MPU6500_Controller/n4591 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2384.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2385 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(\Inst_MPU6500_Controller/raw_data[11] [6]), 
            .I2(n1200), .I3(\Inst_MPU6500_Controller/raw_data[11] [7]), 
            .O(\Inst_MPU6500_Controller/n4596 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2385.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__2386 (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), .I1(\Inst_MPU6500_Controller/raw_data[11] [6]), 
            .I2(\Inst_MPU6500_Controller/raw_data[11] [7]), .I3(n1200), 
            .O(n1201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2386.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2387 (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), .I1(n1201), 
            .O(\Inst_MPU6500_Controller/n4601 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2387.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2388 (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), .I1(n1201), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [1]), .O(\Inst_MPU6500_Controller/n4606 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2388.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2389 (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), .I1(\Inst_MPU6500_Controller/raw_data[10] [1]), 
            .I2(n1201), .O(n1202)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2389.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2390 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(n1202), 
            .O(\Inst_MPU6500_Controller/n4611 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2390.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2391 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(n1202), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [3]), .O(\Inst_MPU6500_Controller/n4616 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2391.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2392 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(\Inst_MPU6500_Controller/raw_data[10] [3]), 
            .I2(n1202), .I3(\Inst_MPU6500_Controller/raw_data[10] [4]), 
            .O(\Inst_MPU6500_Controller/n4621 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2392.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2393 (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), .I1(\Inst_MPU6500_Controller/raw_data[10] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [4]), .I3(n1202), 
            .O(n1203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2393.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2394 (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), .I1(n1203), 
            .O(\Inst_MPU6500_Controller/n4626 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2394.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2395 (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), .I1(n1203), 
            .I2(\Inst_MPU6500_Controller/raw_data[10] [6]), .O(\Inst_MPU6500_Controller/n4631 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2395.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__2396 (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), .I1(\Inst_MPU6500_Controller/raw_data[10] [6]), 
            .I2(n1203), .I3(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .O(\Inst_MPU6500_Controller/n4636 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2396.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__2397 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .O(\Inst_MPU6500_Controller/n1834 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2397.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__2398 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .O(\Inst_MPU6500_Controller/n1839 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2398.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2399 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(\Inst_MPU6500_Controller/n1844 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2399.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__2400 (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [2]), .I3(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .O(n1204)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2400.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2401 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(n1204), 
            .O(\Inst_MPU6500_Controller/n1849 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2401.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2402 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(n1204), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [5]), .O(\Inst_MPU6500_Controller/n1854 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2402.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2403 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I2(n1204), .I3(\Inst_MPU6500_Controller/raw_data[13] [6]), 
            .O(\Inst_MPU6500_Controller/n1859 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2403.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2404 (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), .I1(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [6]), .I3(n1204), 
            .O(n1205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2404.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2405 (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), .I1(n1205), 
            .O(\Inst_MPU6500_Controller/n1864 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2405.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2406 (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), .I1(n1205), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [0]), .O(\Inst_MPU6500_Controller/n1869 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2406.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2407 (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), .I1(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .I2(n1205), .I3(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .O(\Inst_MPU6500_Controller/n1874 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2407.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2408 (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), .I1(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .I2(\Inst_MPU6500_Controller/raw_data[13] [7]), .I3(n1205), 
            .O(n1206)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2408.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2409 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(n1206), 
            .O(\Inst_MPU6500_Controller/n1879 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2409.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2410 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(n1206), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [3]), .O(\Inst_MPU6500_Controller/n1884 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2410.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2411 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(\Inst_MPU6500_Controller/raw_data[12] [3]), 
            .I2(n1206), .I3(\Inst_MPU6500_Controller/raw_data[12] [4]), 
            .O(\Inst_MPU6500_Controller/n1889 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2411.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__2412 (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), .I1(\Inst_MPU6500_Controller/raw_data[12] [3]), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [4]), .O(n1207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2412.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2413 (.I0(n1206), .I1(n1207), .I2(\Inst_MPU6500_Controller/raw_data[12] [5]), 
            .O(\Inst_MPU6500_Controller/n1894 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2413.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2414 (.I0(\Inst_MPU6500_Controller/raw_data[12] [5]), .I1(n1206), 
            .I2(n1207), .O(n1208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2414.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2415 (.I0(\Inst_MPU6500_Controller/raw_data[12] [6]), .I1(n1208), 
            .O(\Inst_MPU6500_Controller/n1899 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2415.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2416 (.I0(\Inst_MPU6500_Controller/raw_data[12] [6]), .I1(n1208), 
            .I2(\Inst_MPU6500_Controller/raw_data[12] [7]), .O(\Inst_MPU6500_Controller/n1904 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(310)
    defparam LUT__2416.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2417 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(n1209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2417.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2418 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[1]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2418.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2419 (.I0(n1209), .I1(n1062), .I2(n1210), .O(\Inst_MPU6500_Controller/n769 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2419.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__2420 (.I0(n1209), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n769 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2420.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__2421 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc154 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(25)
    defparam LUT__2421.LUTMASK = 16'hc154;
    EFX_LUT4 LUT__2422 (.I0(n1209), .I1(mpu_to_spi_data[3]), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2422.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2423 (.I0(n1211), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n769 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2423.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2424 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(n1212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2424.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2425 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n732 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2425.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__2426 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[4]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2426.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2427 (.I0(n1212), .I1(n1062), .I2(\Inst_MPU6500_Controller/n732 [1]), 
            .I3(n1213), .O(\Inst_MPU6500_Controller/n769 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2427.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__2428 (.I0(n1062), .I1(n1212), .O(\Inst_MPU6500_Controller/n769 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2428.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2429 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[5]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2429.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2430 (.I0(\Inst_MPU6500_Controller/n769 [6]), .I1(n1214), 
            .O(\Inst_MPU6500_Controller/n769 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2430.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2431 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1105), 
            .O(\Inst_MPU6500_Controller/n769 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2431.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2432 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(n1109), 
            .I2(n1110), .O(\Inst_MPU6500_Controller/n736 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2432.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2433 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(n1108), 
            .O(n1215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2433.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2434 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1215), 
            .I2(n1110), .O(\Inst_MPU6500_Controller/n736 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2434.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2435 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1215), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(n1110), .O(\Inst_MPU6500_Controller/n736 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2435.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2436 (.I0(n1125), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n1216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2436.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2437 (.I0(n1085), .I1(n1216), .I2(n1114), .I3(n1065), 
            .O(n1217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2437.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2438 (.I0(n1064), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n1218)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ff0 */ ;
    defparam LUT__2438.LUTMASK = 16'h4ff0;
    EFX_LUT4 LUT__2439 (.I0(n1218), .I1(n1217), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n764 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2439.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__2440 (.I0(n1084), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__2440.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__2441 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(n1114), .I3(\Inst_MPU6500_Controller/state [3]), .O(n1220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f77 */ ;
    defparam LUT__2441.LUTMASK = 16'h1f77;
    EFX_LUT4 LUT__2442 (.I0(n1219), .I1(n1080), .I2(n1220), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n764 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf044 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2442.LUTMASK = 16'hf044;
    EFX_LUT4 LUT__2443 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n1094), 
            .O(n1221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2443.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2444 (.I0(n1221), .I1(n1119), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__2444.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__2445 (.I0(n1080), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1064), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n764 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2445.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__2446 (.I0(n1114), .I1(n1118), .I2(n1103), .O(n1222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__2446.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__2447 (.I0(n1221), .I1(n1119), .I2(n1222), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2447.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2448 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n1209), .I3(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n732 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2448.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__2449 (.I0(\Inst_SquareRoot/q_reg [0]), .I1(\Inst_SquareRoot/r_reg [0]), 
            .I2(\Inst_SquareRoot/a_reg [32]), .I3(\Inst_SquareRoot/a_reg [33]), 
            .O(n1223)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hddd4 */ ;
    defparam LUT__2449.LUTMASK = 16'hddd4;
    EFX_LUT4 LUT__2450 (.I0(\Inst_SquareRoot/r_reg [1]), .I1(n1223), .I2(\Inst_SquareRoot/q_reg [1]), 
            .O(n1224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7171 */ ;
    defparam LUT__2450.LUTMASK = 16'h7171;
    EFX_LUT4 LUT__2451 (.I0(\Inst_SquareRoot/r_reg [4]), .I1(\Inst_SquareRoot/q_reg [4]), 
            .I2(\Inst_SquareRoot/r_reg [3]), .I3(\Inst_SquareRoot/q_reg [3]), 
            .O(n1225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2451.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2452 (.I0(\Inst_SquareRoot/q_reg [2]), .I1(\Inst_SquareRoot/r_reg [2]), 
            .I2(n1225), .O(n1226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2452.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2453 (.I0(\Inst_SquareRoot/r_reg [3]), .I1(\Inst_SquareRoot/q_reg [3]), 
            .I2(\Inst_SquareRoot/q_reg [2]), .I3(\Inst_SquareRoot/r_reg [2]), 
            .O(n1227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2453.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2454 (.I0(\Inst_SquareRoot/r_reg [4]), .I1(\Inst_SquareRoot/q_reg [4]), 
            .I2(n1227), .O(n1228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2b2b */ ;
    defparam LUT__2454.LUTMASK = 16'h2b2b;
    EFX_LUT4 LUT__2455 (.I0(\Inst_SquareRoot/r_reg [7]), .I1(\Inst_SquareRoot/q_reg [7]), 
            .O(n1229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2455.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2456 (.I0(\Inst_SquareRoot/r_reg [8]), .I1(\Inst_SquareRoot/q_reg [8]), 
            .I2(\Inst_SquareRoot/r_reg [5]), .I3(\Inst_SquareRoot/q_reg [5]), 
            .O(n1230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2456.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2457 (.I0(\Inst_SquareRoot/q_reg [6]), .I1(\Inst_SquareRoot/r_reg [6]), 
            .I2(n1229), .I3(n1230), .O(n1231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__2457.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__2458 (.I0(n1224), .I1(n1226), .I2(n1228), .I3(n1231), 
            .O(n1232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2458.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2459 (.I0(\Inst_SquareRoot/r_reg [6]), .I1(\Inst_SquareRoot/q_reg [6]), 
            .I2(\Inst_SquareRoot/q_reg [5]), .I3(\Inst_SquareRoot/r_reg [5]), 
            .O(n1233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__2459.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__2460 (.I0(\Inst_SquareRoot/r_reg [7]), .I1(\Inst_SquareRoot/q_reg [7]), 
            .I2(n1233), .O(n1234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4d4 */ ;
    defparam LUT__2460.LUTMASK = 16'hd4d4;
    EFX_LUT4 LUT__2461 (.I0(\Inst_SquareRoot/q_reg [9]), .I1(\Inst_SquareRoot/r_reg [9]), 
            .O(n1235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2461.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2462 (.I0(\Inst_SquareRoot/r_reg [8]), .I1(n1234), .I2(\Inst_SquareRoot/q_reg [8]), 
            .I3(n1235), .O(n1236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00d4 */ ;
    defparam LUT__2462.LUTMASK = 16'h00d4;
    EFX_LUT4 LUT__2463 (.I0(\Inst_SquareRoot/r_reg [15]), .I1(\Inst_SquareRoot/r_reg [14]), 
            .I2(\Inst_SquareRoot/q_reg [15]), .I3(\Inst_SquareRoot/q_reg [14]), 
            .O(n1237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__2463.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__2464 (.I0(\Inst_SquareRoot/r_reg [16]), .I1(\Inst_SquareRoot/q_reg [16]), 
            .I2(n1237), .O(n1238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2464.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2465 (.I0(\Inst_SquareRoot/r_reg [13]), .I1(\Inst_SquareRoot/q_reg [13]), 
            .I2(\Inst_SquareRoot/r_reg [12]), .I3(\Inst_SquareRoot/q_reg [12]), 
            .O(n1239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2465.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2466 (.I0(\Inst_SquareRoot/r_reg [11]), .I1(\Inst_SquareRoot/q_reg [11]), 
            .I2(n1239), .O(n1240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__2466.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__2467 (.I0(\Inst_SquareRoot/r_reg [10]), .I1(\Inst_SquareRoot/q_reg [10]), 
            .I2(\Inst_SquareRoot/r_reg [9]), .I3(\Inst_SquareRoot/q_reg [9]), 
            .O(n1241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2467.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2468 (.I0(n1238), .I1(n1240), .I2(n1241), .O(n1242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2468.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2469 (.I0(\Inst_SquareRoot/q_reg [10]), .I1(\Inst_SquareRoot/r_reg [10]), 
            .O(n1243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2469.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2470 (.I0(\Inst_SquareRoot/q_reg [12]), .I1(\Inst_SquareRoot/r_reg [12]), 
            .I2(\Inst_SquareRoot/q_reg [11]), .I3(\Inst_SquareRoot/r_reg [11]), 
            .O(n1244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2470.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2471 (.I0(\Inst_SquareRoot/q_reg [16]), .I1(\Inst_SquareRoot/r_reg [16]), 
            .I2(\Inst_SquareRoot/q_reg [13]), .I3(\Inst_SquareRoot/r_reg [13]), 
            .O(n1245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2471.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2472 (.I0(\Inst_SquareRoot/q_reg [15]), .I1(\Inst_SquareRoot/r_reg [15]), 
            .I2(\Inst_SquareRoot/q_reg [14]), .I3(\Inst_SquareRoot/r_reg [14]), 
            .O(n1246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__2472.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2473 (.I0(n1244), .I1(n1239), .I2(n1245), .I3(n1246), 
            .O(n1247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__2473.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__2474 (.I0(n1240), .I1(n1243), .I2(n1247), .I3(n1238), 
            .O(n1248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__2474.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__2475 (.I0(n1232), .I1(n1236), .I2(n1242), .I3(n1248), 
            .O(n1249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2475.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2476 (.I0(n1249), .I1(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n453 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2476.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2477 (.I0(\Inst_SquareRoot/count [1]), .I1(\Inst_SquareRoot/count [2]), 
            .I2(\Inst_SquareRoot/count [3]), .I3(\Inst_SquareRoot/count [4]), 
            .O(n1250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2477.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2478 (.I0(\Inst_SquareRoot/count [0]), .I1(n1250), .O(n1251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2478.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2479 (.I0(\Inst_SquareRoot/state [0]), .I1(n1251), .O(ceg_net64)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2479.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2480 (.I0(\Inst_SquareRoot/state [1]), .I1(ceg_net64), 
            .O(ceg_net136)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(20)
    defparam LUT__2480.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2481 (.I0(\Inst_SquareRoot/count [0]), .I1(\Inst_SquareRoot/state [0]), 
            .O(\Inst_SquareRoot/n446 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2481.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__2482 (.I0(\Inst_SquareRoot/state [0]), .I1(data_in[0]), 
            .O(\Inst_SquareRoot/n444 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2482.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2483 (.I0(n1251), .I1(\Inst_SquareRoot/state [0]), .O(\~ceg_net65 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__2483.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2484 (.I0(\Inst_SquareRoot/a_reg [32]), .I1(n1249), .I2(\Inst_SquareRoot/state [0]), 
            .O(\Inst_SquareRoot/n448 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2484.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__2485 (.I0(\Inst_SquareRoot/state [0]), .I1(data_in[1]), 
            .O(\Inst_SquareRoot/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2485.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2486 (.I0(data_in[2]), .I1(\Inst_SquareRoot/a_reg [0]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n440 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2486.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2487 (.I0(data_in[3]), .I1(\Inst_SquareRoot/a_reg [1]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n455 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2487.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2488 (.I0(data_in[4]), .I1(\Inst_SquareRoot/a_reg [2]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n457 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2488.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2489 (.I0(data_in[5]), .I1(\Inst_SquareRoot/a_reg [3]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n459 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2489.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2490 (.I0(data_in[6]), .I1(\Inst_SquareRoot/a_reg [4]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n461 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2490.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2491 (.I0(data_in[7]), .I1(\Inst_SquareRoot/a_reg [5]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n463 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2491.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2492 (.I0(data_in[8]), .I1(\Inst_SquareRoot/a_reg [6]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n465 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2492.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2493 (.I0(data_in[9]), .I1(\Inst_SquareRoot/a_reg [7]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n467 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2493.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2494 (.I0(data_in[10]), .I1(\Inst_SquareRoot/a_reg [8]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n469 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2494.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2495 (.I0(data_in[11]), .I1(\Inst_SquareRoot/a_reg [9]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n471 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2495.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2496 (.I0(data_in[12]), .I1(\Inst_SquareRoot/a_reg [10]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n473 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2496.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2497 (.I0(data_in[13]), .I1(\Inst_SquareRoot/a_reg [11]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n475 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2497.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2498 (.I0(data_in[14]), .I1(\Inst_SquareRoot/a_reg [12]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n477 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2498.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2499 (.I0(data_in[15]), .I1(\Inst_SquareRoot/a_reg [13]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n479 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2499.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2500 (.I0(data_in[16]), .I1(\Inst_SquareRoot/a_reg [14]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n481 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2500.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2501 (.I0(data_in[17]), .I1(\Inst_SquareRoot/a_reg [15]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n483 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2501.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2502 (.I0(data_in[18]), .I1(\Inst_SquareRoot/a_reg [16]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n485 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2502.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2503 (.I0(data_in[19]), .I1(\Inst_SquareRoot/a_reg [17]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n487 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2503.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2504 (.I0(data_in[20]), .I1(\Inst_SquareRoot/a_reg [18]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n489 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2504.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2505 (.I0(data_in[21]), .I1(\Inst_SquareRoot/a_reg [19]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n491 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2505.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2506 (.I0(data_in[22]), .I1(\Inst_SquareRoot/a_reg [20]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n493 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2506.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2507 (.I0(data_in[23]), .I1(\Inst_SquareRoot/a_reg [21]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2507.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2508 (.I0(data_in[24]), .I1(\Inst_SquareRoot/a_reg [22]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n497 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2508.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2509 (.I0(data_in[25]), .I1(\Inst_SquareRoot/a_reg [23]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n499 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2509.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2510 (.I0(data_in[26]), .I1(\Inst_SquareRoot/a_reg [24]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n501 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2510.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2511 (.I0(data_in[27]), .I1(\Inst_SquareRoot/a_reg [25]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n503 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2511.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2512 (.I0(data_in[28]), .I1(\Inst_SquareRoot/a_reg [26]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n505 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2512.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2513 (.I0(data_in[29]), .I1(\Inst_SquareRoot/a_reg [27]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n507 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2513.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2514 (.I0(data_in[30]), .I1(\Inst_SquareRoot/a_reg [28]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n509 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2514.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2515 (.I0(data_in[32]), .I1(\Inst_SquareRoot/a_reg [29]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n511 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2515.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2516 (.I0(data_in[32]), .I1(\Inst_SquareRoot/a_reg [30]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n513 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2516.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2517 (.I0(data_in[32]), .I1(\Inst_SquareRoot/a_reg [31]), 
            .I2(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n515 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2517.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2518 (.I0(\Inst_SquareRoot/n7 [1]), .I1(\Inst_SquareRoot/a_reg [33]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n517 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2518.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2519 (.I0(\Inst_SquareRoot/n7 [2]), .I1(\Inst_SquareRoot/r_reg [0]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n519 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2519.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2520 (.I0(\Inst_SquareRoot/n7 [3]), .I1(\Inst_SquareRoot/r_reg [1]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n521 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2520.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2521 (.I0(\Inst_SquareRoot/n7 [4]), .I1(\Inst_SquareRoot/r_reg [2]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n523 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2521.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2522 (.I0(\Inst_SquareRoot/n7 [5]), .I1(\Inst_SquareRoot/r_reg [3]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n525 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2522.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2523 (.I0(\Inst_SquareRoot/n7 [6]), .I1(\Inst_SquareRoot/r_reg [4]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n527 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2523.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2524 (.I0(\Inst_SquareRoot/n7 [7]), .I1(\Inst_SquareRoot/r_reg [5]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n529 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2524.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2525 (.I0(\Inst_SquareRoot/n7 [8]), .I1(\Inst_SquareRoot/r_reg [6]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n531 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2525.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2526 (.I0(\Inst_SquareRoot/n7 [9]), .I1(\Inst_SquareRoot/r_reg [7]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n533 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2526.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2527 (.I0(\Inst_SquareRoot/n7 [10]), .I1(\Inst_SquareRoot/r_reg [8]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n535 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2527.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2528 (.I0(\Inst_SquareRoot/n7 [11]), .I1(\Inst_SquareRoot/r_reg [9]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n537 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2528.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2529 (.I0(\Inst_SquareRoot/n7 [12]), .I1(\Inst_SquareRoot/r_reg [10]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n539 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2529.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2530 (.I0(\Inst_SquareRoot/n7 [13]), .I1(\Inst_SquareRoot/r_reg [11]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n541 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2530.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2531 (.I0(\Inst_SquareRoot/n7 [14]), .I1(\Inst_SquareRoot/r_reg [12]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n543 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2531.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2532 (.I0(\Inst_SquareRoot/n7 [15]), .I1(\Inst_SquareRoot/r_reg [13]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n545 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2532.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2533 (.I0(\Inst_SquareRoot/n7 [16]), .I1(\Inst_SquareRoot/r_reg [14]), 
            .I2(n1249), .I3(\Inst_SquareRoot/state [0]), .O(\Inst_SquareRoot/n547 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2533.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2534 (.I0(\Inst_SquareRoot/q_reg [0]), .I1(\Inst_SquareRoot/state [0]), 
            .O(\Inst_SquareRoot/n553 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2534.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2535 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [1]), 
            .O(\Inst_SquareRoot/n555 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2535.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2536 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [2]), 
            .O(\Inst_SquareRoot/n557 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2536.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2537 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [3]), 
            .O(\Inst_SquareRoot/n559 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2537.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2538 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [4]), 
            .O(\Inst_SquareRoot/n561 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2538.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2539 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [5]), 
            .O(\Inst_SquareRoot/n563 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2539.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2540 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [6]), 
            .O(\Inst_SquareRoot/n565 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2540.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2541 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [7]), 
            .O(\Inst_SquareRoot/n567 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2541.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2542 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [8]), 
            .O(\Inst_SquareRoot/n569 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2542.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2543 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [9]), 
            .O(\Inst_SquareRoot/n571 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2543.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2544 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [10]), 
            .O(\Inst_SquareRoot/n573 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2544.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2545 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [11]), 
            .O(\Inst_SquareRoot/n575 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2545.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2546 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [12]), 
            .O(\Inst_SquareRoot/n577 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2546.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2547 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [13]), 
            .O(\Inst_SquareRoot/n579 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2547.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2548 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [14]), 
            .O(\Inst_SquareRoot/n581 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2548.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2549 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/q_reg [15]), 
            .O(\Inst_SquareRoot/n583 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2549.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2550 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/n49 [1]), 
            .O(\Inst_SquareRoot/n601 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2550.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2551 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/n49 [2]), 
            .O(\Inst_SquareRoot/n603 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2551.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2552 (.I0(\Inst_SquareRoot/state [0]), .I1(\Inst_SquareRoot/n49 [3]), 
            .O(\Inst_SquareRoot/n605 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2552.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2553 (.I0(\Inst_SquareRoot/n49 [4]), .I1(\Inst_SquareRoot/state [0]), 
            .O(\Inst_SquareRoot/n607 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(85)
    defparam LUT__2553.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2554 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(n1252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2554.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2555 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(n1252), 
            .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2555.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2556 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n1253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2556.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2557 (.I0(\Inst_Spi_Mode_3/bitcounter [3]), .I1(n1253), 
            .O(n1254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2557.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2558 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n1254), .O(ceg_net75)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2558.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2559 (.I0(spi_start), .I1(n1252), .O(n1255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2559.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2560 (.I0(n1254), .I1(n1252), .I2(n1255), .O(ceg_net367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(178)
    defparam LUT__2560.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__2561 (.I0(mpu_to_spi_data[0]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2561.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2562 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1254), .O(n1256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2562.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2563 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2563.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2564 (.I0(n1257), .I1(n1256), .I2(n1255), .O(ceg_net236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2564.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2565 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2565.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__2566 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n1257), .O(n1258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2566.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2567 (.I0(n1258), .I1(n1254), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__2567.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__2568 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net83 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__2568.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2569 (.I0(n1252), .I1(n1254), .O(ceg_net238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2569.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2570 (.I0(\Inst_Spi_Mode_3/data_buffer [7]), .I1(\Inst_Spi_Mode_3/data_buffer [5]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2570.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2571 (.I0(\Inst_Spi_Mode_3/data_buffer [6]), .I1(\Inst_Spi_Mode_3/data_buffer [4]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1259), .O(n1260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2571.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2572 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2572.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2573 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1261), .O(n1262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2573.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2574 (.I0(n1262), .I1(n1260), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__2574.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2575 (.I0(\~ceg_net83 ), .I1(n1254), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(292)
    defparam LUT__2575.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__2576 (.I0(mpu_to_spi_data[1]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2576.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2577 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1256), .I3(n1255), .O(ceg_net239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2577.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2578 (.I0(mpu_to_spi_data[2]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2578.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2579 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1256), .I3(n1255), .O(ceg_net240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2579.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2580 (.I0(mpu_to_spi_data[3]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2580.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2581 (.I0(n1256), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1255), .O(ceg_net241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2581.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2582 (.I0(mpu_to_spi_data[4]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2582.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2583 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1254), .O(n1263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2583.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2584 (.I0(n1263), .I1(n1257), .I2(n1255), .O(ceg_net242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__2584.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2585 (.I0(mpu_to_spi_data[5]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2585.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2586 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1263), .I3(n1255), .O(ceg_net243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2586.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2587 (.I0(mpu_to_spi_data[6]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2587.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2588 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1263), .I3(n1255), .O(ceg_net244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__2588.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__2589 (.I0(mpu_to_spi_data[7]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2589.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2590 (.I0(n1263), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1255), .O(ceg_net245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__2590.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2591 (.I0(n1252), .I1(\Inst_Spi_Mode_3/bitcounter [0]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2591.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2592 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(n1252), .I3(\Inst_Spi_Mode_3/bitcounter [2]), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2592.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__2593 (.I0(n1252), .I1(\Inst_Spi_Mode_3/bitcounter [3]), 
            .I2(n1253), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2593.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__2594 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2594.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__2595 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n1257), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6f6f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2595.LUTMASK = 16'h6f6f;
    EFX_LUT4 LUT__2596 (.I0(n1258), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__2596.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__2597 (.I0(\Inst_pwm_servo_0/counter [2]), .I1(\Inst_pwm_servo_0/counter [1]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .I3(\Inst_pwm_servo_0/counter [4]), 
            .O(n1264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__2597.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__2598 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n1265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2598.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2599 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .O(n1266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2599.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2600 (.I0(n1264), .I1(\Inst_pwm_servo_0/counter [5]), 
            .I2(n1265), .I3(n1266), .O(n1267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__2600.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__2601 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .O(n1268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__2601.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2602 (.I0(\Inst_pwm_servo_0/counter [12]), .I1(n1267), 
            .I2(\Inst_pwm_servo_0/counter [13]), .I3(n1268), .O(n1269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__2602.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__2603 (.I0(n1269), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(\Inst_pwm_servo_0/counter [18]), .I3(\Inst_pwm_servo_0/counter [19]), 
            .O(n1270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__2603.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2604 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2604.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2605 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2605.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2606 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2606.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2607 (.I0(\Inst_pwm_servo_0/counter [0]), .I1(n1270), 
            .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2607.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2608 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [1]), .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2608.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2609 (.I0(\Inst_pwm_servo_0/counter [1]), .I1(\Inst_pwm_servo_0/counter [2]), 
            .I2(\Inst_pwm_servo_0/counter [4]), .I3(\Inst_pwm_servo_0/counter [3]), 
            .O(n1271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__2609.LUTMASK = 16'he000;
    EFX_LUT4 LUT__2610 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/counter [6]), 
            .I2(\Inst_pwm_servo_0/counter [7]), .I3(n1271), .O(n1272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2610.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2611 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .I2(\Inst_pwm_servo_0/counter [12]), .I3(\Inst_pwm_servo_0/counter [13]), 
            .O(n1273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2611.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2612 (.I0(n1272), .I1(\Inst_pwm_servo_0/counter [8]), 
            .I2(\Inst_pwm_servo_0/counter [9]), .I3(n1273), .O(n1274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__2612.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__2613 (.I0(\Inst_pwm_servo_0/counter [15]), .I1(\Inst_pwm_servo_0/counter [16]), 
            .I2(\Inst_pwm_servo_0/counter [18]), .I3(\Inst_pwm_servo_0/counter [19]), 
            .O(n1275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2613.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2614 (.I0(n1274), .I1(\Inst_pwm_servo_0/counter [14]), 
            .I2(\Inst_pwm_servo_0/counter [17]), .I3(n1275), .O(\Inst_pwm_servo_0/n85 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(48)
    defparam LUT__2614.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__2615 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2615.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2616 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2616.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2617 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2617.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2618 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2618.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2619 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2619.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2620 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2620.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2621 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2621.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2622 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2622.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2623 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2623.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2624 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2624.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2625 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2625.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2626 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2626.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2627 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [17]), .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2627.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2628 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [18]), .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2628.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2629 (.I0(n1270), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(46)
    defparam LUT__2629.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2630 (.I0(\Inst_uart_tx/state [1]), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/bitcounter [5]), .O(n1276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2630.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2631 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n1276), .O(\Inst_uart_tx/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2631.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2632 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(171)
    defparam LUT__2632.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__2633 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(n1277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__2633.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__2634 (.I0(n1277), .I1(\Inst_uart_tx/state [0]), .I2(ceg_net106), 
            .I3(n1276), .O(ceg_net368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff2 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(171)
    defparam LUT__2634.LUTMASK = 16'hfff2;
    EFX_LUT4 LUT__2635 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2635.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2636 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2636.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2637 (.I0(\Inst_uart_tx/bitcounter [5]), .I1(n1277), .I2(\Inst_uart_tx/n118 ), 
            .I3(\Inst_uart_tx/state [0]), .O(ceg_net251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff07 */ ;
    defparam LUT__2637.LUTMASK = 16'hff07;
    EFX_LUT4 LUT__2638 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n118 ), 
            .O(\Inst_uart_tx/n335 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(253)
    defparam LUT__2638.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2639 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n115 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2639.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2640 (.I0(n1276), .I1(\Inst_uart_tx/n115 [1]), .O(ceg_net248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    defparam LUT__2640.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__2641 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n1278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2641.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2642 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/data_buffer [4]), 
            .I2(n1278), .I3(\Inst_uart_tx/bit_idx [1]), .O(n1279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__2642.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__2643 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [3]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n1280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2643.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2644 (.I0(\Inst_uart_tx/data_buffer [5]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(n1280), .O(n1281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2644.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2645 (.I0(n1281), .I1(n1279), .I2(\Inst_uart_tx/bit_idx [0]), 
            .O(n1282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__2645.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__2646 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n1283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__2646.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__2647 (.I0(n1283), .I1(n1282), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n119 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2647.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__2648 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__2648.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__2649 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n1276), .O(\Inst_uart_tx/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2649.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2650 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n1284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2650.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2651 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1284), .I2(n1276), 
            .O(\Inst_uart_tx/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2651.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2652 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1284), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n1276), .O(\Inst_uart_tx/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2652.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2653 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n1284), .O(n1285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__2653.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2654 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1285), .I2(n1276), 
            .O(\Inst_uart_tx/n129 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2654.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2655 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1276), .I2(n1285), 
            .O(\Inst_uart_tx/n129 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__2655.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__2656 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2656.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2657 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__2657.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2658 (.I0(\Inst_debounce/count_reg [6]), .I1(\Inst_debounce/count_reg [7]), 
            .I2(\Inst_debounce/count_reg [8]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n1286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__2658.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__2659 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n1287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__2659.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__2660 (.I0(n1286), .I1(n1287), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n1288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__2660.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__2661 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n1289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__2661.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__2662 (.I0(n1288), .I1(n1289), .O(n1290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2662.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2663 (.I0(n1290), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(269)
    defparam LUT__2663.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__2664 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n1290), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(269)
    defparam LUT__2664.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__2665 (.I0(data_out[1]), .I1(data_out[9]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n1291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05f3 */ ;
    defparam LUT__2665.LUTMASK = 16'h05f3;
    EFX_LUT4 LUT__2666 (.I0(byte_idx[0]), .I1(byte_idx[1]), .O(n1292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2666.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2667 (.I0(gyro_z[9]), .I1(gyro_y[9]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2667.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2668 (.I0(gyro_y[1]), .I1(gyro_x[1]), .I2(byte_idx[0]), 
            .I3(n1293), .O(n1294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2668.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2669 (.I0(n1292), .I1(gyro_z[1]), .I2(n1294), .I3(byte_idx[2]), 
            .O(n1295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2669.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2670 (.I0(gyro_x[9]), .I1(accel_z[9]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2670.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2671 (.I0(accel_z[1]), .I1(accel_y[1]), .I2(byte_idx[0]), 
            .I3(n1296), .O(n1297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2671.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2672 (.I0(accel_y[9]), .I1(accel_x[9]), .I2(byte_idx[1]), 
            .O(n1298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2672.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2673 (.I0(accel_x[1]), .I1(byte_idx[1]), .I2(n1298), 
            .I3(byte_idx[0]), .O(n1299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2673.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2674 (.I0(n1299), .I1(n1297), .I2(byte_idx[2]), .O(n1300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2674.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2675 (.I0(n1300), .I1(n1295), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__2675.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__2676 (.I0(n1291), .I1(n1067), .I2(n1301), .I3(uart_state[1]), 
            .O(n934)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2676.LUTMASK = 16'hf4ff;
    EFX_LUT4 LUT__2677 (.I0(data_out[10]), .I1(data_out[2]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n1302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2677.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2678 (.I0(gyro_z[10]), .I1(gyro_y[10]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2678.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2679 (.I0(gyro_y[2]), .I1(gyro_x[2]), .I2(byte_idx[0]), 
            .I3(n1303), .O(n1304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2679.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2680 (.I0(n1292), .I1(gyro_z[2]), .I2(n1304), .I3(byte_idx[2]), 
            .O(n1305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2680.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2681 (.I0(gyro_x[10]), .I1(accel_z[10]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2681.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2682 (.I0(accel_z[2]), .I1(accel_y[2]), .I2(byte_idx[0]), 
            .I3(n1306), .O(n1307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2682.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2683 (.I0(accel_y[10]), .I1(accel_x[10]), .I2(byte_idx[1]), 
            .O(n1308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2683.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2684 (.I0(accel_x[2]), .I1(byte_idx[1]), .I2(n1308), 
            .I3(byte_idx[0]), .O(n1309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__2684.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__2685 (.I0(n1309), .I1(n1307), .I2(byte_idx[2]), .O(n1310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2685.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2686 (.I0(n1310), .I1(n1305), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;
    defparam LUT__2686.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__2687 (.I0(n1302), .I1(n1067), .I2(n1311), .I3(uart_state[1]), 
            .O(n938)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2687.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__2688 (.I0(data_out[11]), .I1(data_out[3]), .I2(byte_idx[1]), 
            .I3(byte_idx[0]), .O(n1312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__2688.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__2689 (.I0(gyro_z[11]), .I1(gyro_y[11]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2689.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2690 (.I0(gyro_y[3]), .I1(gyro_x[3]), .I2(byte_idx[0]), 
            .I3(n1313), .O(n1314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2690.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2691 (.I0(n1292), .I1(gyro_z[3]), .I2(n1314), .I3(byte_idx[2]), 
            .O(n1315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2691.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2692 (.I0(gyro_x[11]), .I1(accel_z[11]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2692.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2693 (.I0(accel_z[3]), .I1(accel_y[3]), .I2(byte_idx[0]), 
            .I3(n1316), .O(n1317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2693.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2694 (.I0(accel_y[11]), .I1(accel_x[11]), .I2(byte_idx[1]), 
            .O(n1318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2694.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2695 (.I0(accel_x[3]), .I1(byte_idx[1]), .I2(n1318), 
            .I3(byte_idx[0]), .O(n1319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2695.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2696 (.I0(n1319), .I1(n1317), .I2(byte_idx[2]), .O(n1320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2696.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2697 (.I0(n1320), .I1(n1315), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__2697.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__2698 (.I0(n1312), .I1(n1067), .I2(n1321), .I3(uart_state[1]), 
            .O(n942)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4ff */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2698.LUTMASK = 16'hf4ff;
    EFX_LUT4 LUT__2699 (.I0(gyro_z[12]), .I1(gyro_y[12]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2699.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2700 (.I0(gyro_y[4]), .I1(gyro_x[4]), .I2(byte_idx[0]), 
            .I3(n1322), .O(n1323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2700.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2701 (.I0(n1292), .I1(gyro_z[4]), .I2(n1323), .I3(byte_idx[2]), 
            .O(n1324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2701.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2702 (.I0(gyro_x[12]), .I1(accel_z[12]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2702.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2703 (.I0(accel_z[4]), .I1(accel_y[4]), .I2(byte_idx[0]), 
            .I3(n1325), .O(n1326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2703.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2704 (.I0(accel_y[12]), .I1(accel_x[12]), .I2(byte_idx[1]), 
            .O(n1327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2704.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2705 (.I0(accel_x[4]), .I1(byte_idx[1]), .I2(n1327), 
            .I3(byte_idx[0]), .O(n1328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__2705.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__2706 (.I0(n1328), .I1(n1326), .I2(byte_idx[2]), .O(n1329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2706.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2707 (.I0(n1329), .I1(n1324), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;
    defparam LUT__2707.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__2708 (.I0(byte_idx[1]), .I1(n1067), .O(n1331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2708.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2709 (.I0(data_out[12]), .I1(data_out[4]), .I2(byte_idx[0]), 
            .I3(n1331), .O(n1332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2709.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2710 (.I0(n1332), .I1(n1330), .I2(uart_state[1]), .O(n946)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2710.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2711 (.I0(data_out[13]), .I1(data_out[5]), .I2(byte_idx[0]), 
            .I3(n1331), .O(n1333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2711.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2712 (.I0(gyro_z[13]), .I1(gyro_y[13]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2712.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2713 (.I0(gyro_y[5]), .I1(gyro_x[5]), .I2(byte_idx[0]), 
            .I3(n1334), .O(n1335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2713.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2714 (.I0(n1292), .I1(gyro_z[5]), .I2(n1335), .I3(byte_idx[2]), 
            .O(n1336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2714.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2715 (.I0(gyro_x[13]), .I1(accel_z[13]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2715.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2716 (.I0(accel_z[5]), .I1(accel_y[5]), .I2(byte_idx[0]), 
            .I3(n1337), .O(n1338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2716.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2717 (.I0(accel_y[13]), .I1(accel_x[13]), .I2(byte_idx[1]), 
            .O(n1339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2717.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2718 (.I0(accel_x[5]), .I1(byte_idx[1]), .I2(n1339), 
            .I3(byte_idx[0]), .O(n1340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2718.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2719 (.I0(n1340), .I1(n1338), .I2(byte_idx[2]), .O(n1341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2719.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2720 (.I0(n1341), .I1(n1336), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__2720.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__2721 (.I0(n1333), .I1(n1342), .I2(uart_state[1]), .O(n950)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2721.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__2722 (.I0(gyro_z[14]), .I1(gyro_y[14]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2722.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2723 (.I0(gyro_y[6]), .I1(gyro_x[6]), .I2(byte_idx[0]), 
            .I3(n1343), .O(n1344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2723.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2724 (.I0(n1292), .I1(gyro_z[6]), .I2(n1344), .I3(byte_idx[2]), 
            .O(n1345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2724.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2725 (.I0(gyro_x[14]), .I1(accel_z[14]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2725.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2726 (.I0(accel_z[6]), .I1(accel_y[6]), .I2(byte_idx[0]), 
            .I3(n1346), .O(n1347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2726.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2727 (.I0(accel_y[14]), .I1(accel_x[14]), .I2(byte_idx[1]), 
            .O(n1348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2727.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2728 (.I0(accel_x[6]), .I1(byte_idx[1]), .I2(n1348), 
            .I3(byte_idx[0]), .O(n1349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__2728.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__2729 (.I0(n1349), .I1(n1347), .I2(byte_idx[2]), .O(n1350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2729.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2730 (.I0(n1350), .I1(n1345), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;
    defparam LUT__2730.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__2731 (.I0(data_out[14]), .I1(data_out[6]), .I2(byte_idx[0]), 
            .I3(n1331), .O(n1352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2731.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2732 (.I0(n1352), .I1(n1351), .I2(uart_state[1]), .O(n954)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2732.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__2733 (.I0(data_out[15]), .I1(data_out[7]), .I2(byte_idx[0]), 
            .I3(n1331), .O(n1353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__2733.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__2734 (.I0(gyro_z[15]), .I1(gyro_y[15]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2734.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2735 (.I0(gyro_y[7]), .I1(gyro_x[7]), .I2(byte_idx[0]), 
            .I3(n1354), .O(n1355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2735.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2736 (.I0(n1292), .I1(gyro_z[7]), .I2(n1355), .I3(byte_idx[2]), 
            .O(n1356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h77f0 */ ;
    defparam LUT__2736.LUTMASK = 16'h77f0;
    EFX_LUT4 LUT__2737 (.I0(gyro_x[15]), .I1(accel_z[15]), .I2(byte_idx[0]), 
            .I3(byte_idx[1]), .O(n1357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2737.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2738 (.I0(accel_z[7]), .I1(accel_y[7]), .I2(byte_idx[0]), 
            .I3(n1357), .O(n1358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2738.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2739 (.I0(accel_y[15]), .I1(accel_x[15]), .I2(byte_idx[1]), 
            .O(n1359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2739.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2740 (.I0(accel_x[7]), .I1(byte_idx[1]), .I2(n1359), 
            .I3(byte_idx[0]), .O(n1360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2740.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2741 (.I0(n1360), .I1(n1358), .I2(byte_idx[2]), .O(n1361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2741.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2742 (.I0(n1361), .I1(n1356), .I2(byte_idx[4]), .I3(byte_idx[3]), 
            .O(n1362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__2742.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__2743 (.I0(n1353), .I1(n1362), .I2(uart_state[1]), .O(n958)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2743.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__2744 (.I0(byte_idx[0]), .I1(byte_idx[1]), .I2(uart_state[2]), 
            .O(n480[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(594)
    defparam LUT__2744.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2745 (.I0(byte_idx[0]), .I1(byte_idx[1]), .O(n1363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2745.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2746 (.I0(n1067), .I1(byte_idx[2]), .I2(n1363), .I3(uart_state[2]), 
            .O(n480[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(594)
    defparam LUT__2746.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__2747 (.I0(byte_idx[2]), .I1(n1363), .I2(byte_idx[3]), 
            .I3(uart_state[2]), .O(n480[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(594)
    defparam LUT__2747.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2748 (.I0(n1363), .I1(byte_idx[2]), .I2(byte_idx[3]), 
            .I3(byte_idx[4]), .O(n1364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h827f */ ;
    defparam LUT__2748.LUTMASK = 16'h827f;
    EFX_LUT4 LUT__2749 (.I0(n1364), .I1(uart_state[2]), .O(n480[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(594)
    defparam LUT__2749.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2750 (.I0(uart_state[0]), .I1(uart_state[1]), .I2(uart_state[2]), 
            .O(n476[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1818 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2750.LUTMASK = 16'h1818;
    EFX_LUT4 LUT__2751 (.I0(uart_state[2]), .I1(n1067), .I2(n1363), .I3(n476[2]), 
            .O(n476[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(598)
    defparam LUT__2751.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__2131 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n732 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(286)
    defparam LUT__2131.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2132 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1062)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2132.LUTMASK = 16'h1111;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_6/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), 
            .CI(1'b0), .CO(n1366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(62)
    defparam \Inst_SquareRoot/sub_6/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_6/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_SquareRoot/sub_9/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), 
            .CI(1'b0), .CO(n1365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/SQRT.vhd(73)
    defparam \Inst_SquareRoot/sub_9/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \Inst_SquareRoot/sub_9/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF_ff111829_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ff111829_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_ff111829_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_ff111829_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_MULT_ff111829_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ff111829_140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_ff111829_0
// module not written out since it is a black box. 
//

