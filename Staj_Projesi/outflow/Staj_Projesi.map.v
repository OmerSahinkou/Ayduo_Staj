
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
    
    wire fifo_rst_busys /* verific async_reg="true" */ ;
    wire n408;
    wire [8:0]\u_FIFO/u_efx_fifo_top/waddr ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(377)
    wire [1:0]uart_read_state;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(263)
    wire [7:0]tx_data_sig;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(219)
    
    wire rd_en_i, tx_start_sig;
    wire [18:0]\Inst_MPU6500_Controller/n643 ;
    
    wire \Inst_MPU6500_Controller/add_257/n4 , \Inst_MPU6500_Controller/add_82/n2 ;
    wire [18:0]\Inst_MPU6500_Controller/n717 ;
    
    wire \Inst_MPU6500_Controller/add_258/n4 , \Inst_MPU6500_Controller/add_87/n2 ;
    wire [18:0]\Inst_MPU6500_Controller/n791 ;
    
    wire \Inst_MPU6500_Controller/add_259/n4 , \Inst_MPU6500_Controller/add_92/n2 ;
    wire [18:0]\Inst_MPU6500_Controller/n865 ;
    
    wire \Inst_MPU6500_Controller/add_260/n4 , \Inst_MPU6500_Controller/add_97/n2 ;
    wire [18:0]\Inst_MPU6500_Controller/n939 ;
    
    wire \Inst_MPU6500_Controller/add_261/n4 , \Inst_MPU6500_Controller/add_102/n2 , 
        \Inst_MPU6500_Controller/add_107/n2 ;
    wire [7:0]rdata;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(297)
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(69)
    wire [15:0]accel_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(231)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[0] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(76)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(96)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[1] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[2] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[3] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[4] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[5] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[8] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[9] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[10] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[11] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[12] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]\Inst_MPU6500_Controller/raw_data[13] ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(227)
    
    wire data_valid_out;
    wire [15:0]accel_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(231)
    wire [15:0]accel_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(231)
    wire [15:0]gyro_x;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(232)
    wire [15:0]gyro_y;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(232)
    wire [15:0]gyro_z;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(232)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(99)
    
    wire n1826;
    wire [31:0]\Inst_MPU6500_Controller/prod_sum_x_a ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(78)
    wire [31:0]\Inst_MPU6500_Controller/prod_sum_y_a ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(79)
    wire [31:0]\Inst_MPU6500_Controller/prod_sum_z_a ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(80)
    wire [31:0]\Inst_MPU6500_Controller/prod_sum_x_g ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(81)
    wire [31:0]\Inst_MPU6500_Controller/prod_sum_y_g ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(82)
    wire [31:0]\Inst_MPU6500_Controller/prod_sum_z_g ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(83)
    wire [15:0]\Inst_FIFO_CONTROLLER/reg_accel_x ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(48)
    wire [7:0]fifo_wr_data_o;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(293)
    wire [4:0]\Inst_FIFO_CONTROLLER/FIFO_state ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(71)
    
    wire fifo_wr_en_o;
    wire [15:0]\Inst_FIFO_CONTROLLER/reg_accel_y ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(49)
    wire [15:0]\Inst_FIFO_CONTROLLER/reg_accel_z ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(50)
    wire [15:0]\Inst_FIFO_CONTROLLER/reg_gyro_x ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(51)
    wire [15:0]\Inst_FIFO_CONTROLLER/reg_gyro_y ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(52)
    wire [15:0]\Inst_FIFO_CONTROLLER/reg_gyro_z ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(53)
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n36 , \Inst_debounce/add_30/n34 , \Inst_debounce/add_30/n32 , 
        \Inst_debounce/add_30/n30 , \Inst_debounce/add_30/n28 , \Inst_debounce/add_30/n26 , 
        \Inst_debounce/add_30/n24 , \Inst_debounce/add_30/n22 , \Inst_debounce/add_30/n20 , 
        \Inst_debounce/add_30/n18 , \Inst_debounce/add_30/n16 , \Inst_debounce/add_30/n14 , 
        \Inst_debounce/add_30/n12 , \Inst_debounce/add_30/n10 , \Inst_debounce/add_30/n8 , 
        \Inst_debounce/add_30/n6 , \Inst_debounce/add_30/n4 ;
    wire [19:0]\Inst_pwm_servo_0/n42 ;
    
    wire \Inst_pwm_servo_0/add_24/n36 , \Inst_pwm_servo_0/add_24/n34 , \Inst_pwm_servo_0/add_24/n32 , 
        \Inst_pwm_servo_0/add_24/n30 , \Inst_pwm_servo_0/add_24/n28 , \Inst_pwm_servo_0/add_24/n26 , 
        \Inst_pwm_servo_0/add_24/n24 , \Inst_pwm_servo_0/add_24/n22 , \Inst_pwm_servo_0/add_24/n20 , 
        \Inst_pwm_servo_0/add_24/n18 , \Inst_pwm_servo_0/add_24/n16 , \Inst_pwm_servo_0/add_24/n14 , 
        \Inst_pwm_servo_0/add_24/n12 , \Inst_pwm_servo_0/add_24/n10 , \Inst_pwm_servo_0/add_24/n8 , 
        \Inst_pwm_servo_0/add_24/n6 , \Inst_pwm_servo_0/add_24/n4 ;
    wire [9:0]\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(995)
    
    wire \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n18 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n16 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n14 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n12 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n10 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n8 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n6 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n4 ;
    wire [9:0]\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 ;
    
    wire \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n16 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n14 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n12 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n10 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n8 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n6 ;
    wire [31:0]\Inst_MPU6500_Controller/n962 ;
    
    wire \Inst_MPU6500_Controller/add_107/n62 , \Inst_MPU6500_Controller/add_107/n60 , 
        \Inst_MPU6500_Controller/add_107/n58 , \Inst_MPU6500_Controller/add_107/n56 , 
        \Inst_MPU6500_Controller/add_107/n54 , \Inst_MPU6500_Controller/add_107/n52 , 
        \Inst_MPU6500_Controller/add_107/n50 , \Inst_MPU6500_Controller/add_107/n48 , 
        \Inst_MPU6500_Controller/add_107/n46 , \Inst_MPU6500_Controller/add_107/n44 , 
        \Inst_MPU6500_Controller/add_107/n42 , \Inst_MPU6500_Controller/add_107/n40 , 
        \Inst_MPU6500_Controller/add_107/n38 , \Inst_MPU6500_Controller/add_107/n36 , 
        \Inst_MPU6500_Controller/add_107/n34 , \Inst_MPU6500_Controller/add_107/n32 , 
        \Inst_MPU6500_Controller/add_107/n30 , \Inst_MPU6500_Controller/add_107/n28 , 
        \Inst_MPU6500_Controller/add_107/n26 , \Inst_MPU6500_Controller/add_107/n24 , 
        \Inst_MPU6500_Controller/add_107/n22 , \Inst_MPU6500_Controller/add_107/n20 , 
        \Inst_MPU6500_Controller/add_107/n18 , \Inst_MPU6500_Controller/add_107/n16 , 
        \Inst_MPU6500_Controller/add_107/n14 , \Inst_MPU6500_Controller/add_107/n12 , 
        \Inst_MPU6500_Controller/add_107/n10 , \Inst_MPU6500_Controller/add_107/n8 , 
        \Inst_MPU6500_Controller/add_107/n6 , \Inst_MPU6500_Controller/add_107/n4 ;
    wire [31:0]\Inst_MPU6500_Controller/n888 ;
    
    wire \Inst_MPU6500_Controller/add_102/n62 , \Inst_MPU6500_Controller/add_102/n60 , 
        \Inst_MPU6500_Controller/add_102/n58 , \Inst_MPU6500_Controller/add_102/n56 , 
        \Inst_MPU6500_Controller/add_102/n54 , \Inst_MPU6500_Controller/add_102/n52 , 
        \Inst_MPU6500_Controller/add_102/n50 , \Inst_MPU6500_Controller/add_102/n48 , 
        \Inst_MPU6500_Controller/add_102/n46 , \Inst_MPU6500_Controller/add_102/n44 , 
        \Inst_MPU6500_Controller/add_102/n42 , \Inst_MPU6500_Controller/add_102/n40 , 
        \Inst_MPU6500_Controller/add_102/n38 , \Inst_MPU6500_Controller/add_102/n36 , 
        \Inst_MPU6500_Controller/add_102/n34 , \Inst_MPU6500_Controller/add_102/n32 , 
        \Inst_MPU6500_Controller/add_102/n30 , \Inst_MPU6500_Controller/add_102/n28 , 
        \Inst_MPU6500_Controller/add_102/n26 , \Inst_MPU6500_Controller/add_102/n24 , 
        \Inst_MPU6500_Controller/add_102/n22 , \Inst_MPU6500_Controller/add_102/n20 , 
        \Inst_MPU6500_Controller/add_102/n18 , \Inst_MPU6500_Controller/add_102/n16 , 
        \Inst_MPU6500_Controller/add_102/n14 , \Inst_MPU6500_Controller/add_102/n12 , 
        \Inst_MPU6500_Controller/add_102/n10 , \Inst_MPU6500_Controller/add_102/n8 , 
        \Inst_MPU6500_Controller/add_102/n6 , \Inst_MPU6500_Controller/add_102/n4 , 
        \Inst_MPU6500_Controller/add_261/n30 , \Inst_MPU6500_Controller/add_261/n28 , 
        \Inst_MPU6500_Controller/add_261/n26 , \Inst_MPU6500_Controller/add_261/n24 , 
        \Inst_MPU6500_Controller/add_261/n22 , \Inst_MPU6500_Controller/add_261/n20 , 
        \Inst_MPU6500_Controller/add_261/n18 , \Inst_MPU6500_Controller/add_261/n16 , 
        \Inst_MPU6500_Controller/add_261/n14 , \Inst_MPU6500_Controller/add_261/n12 , 
        \Inst_MPU6500_Controller/add_261/n10 , \Inst_MPU6500_Controller/add_261/n8 , 
        \Inst_MPU6500_Controller/add_261/n6 ;
    wire [31:0]\Inst_MPU6500_Controller/n814 ;
    
    wire \Inst_MPU6500_Controller/add_97/n62 , \Inst_MPU6500_Controller/add_97/n60 , 
        \Inst_MPU6500_Controller/add_97/n58 , \Inst_MPU6500_Controller/add_97/n56 , 
        \Inst_MPU6500_Controller/add_97/n54 , \Inst_MPU6500_Controller/add_97/n52 , 
        \Inst_MPU6500_Controller/add_97/n50 , \Inst_MPU6500_Controller/add_97/n48 , 
        \Inst_MPU6500_Controller/add_97/n46 , \Inst_MPU6500_Controller/add_97/n44 , 
        \Inst_MPU6500_Controller/add_97/n42 , \Inst_MPU6500_Controller/add_97/n40 , 
        \Inst_MPU6500_Controller/add_97/n38 , \Inst_MPU6500_Controller/add_97/n36 , 
        \Inst_MPU6500_Controller/add_97/n34 , \Inst_MPU6500_Controller/add_97/n32 , 
        \Inst_MPU6500_Controller/add_97/n30 , \Inst_MPU6500_Controller/add_97/n28 , 
        \Inst_MPU6500_Controller/add_97/n26 , \Inst_MPU6500_Controller/add_97/n24 , 
        \Inst_MPU6500_Controller/add_97/n22 , \Inst_MPU6500_Controller/add_97/n20 , 
        \Inst_MPU6500_Controller/add_97/n18 , \Inst_MPU6500_Controller/add_97/n16 , 
        \Inst_MPU6500_Controller/add_97/n14 , \Inst_MPU6500_Controller/add_97/n12 , 
        \Inst_MPU6500_Controller/add_97/n10 , \Inst_MPU6500_Controller/add_97/n8 , 
        \Inst_MPU6500_Controller/add_97/n6 , \Inst_MPU6500_Controller/add_97/n4 , 
        \Inst_MPU6500_Controller/add_260/n30 , \Inst_MPU6500_Controller/add_260/n28 , 
        \Inst_MPU6500_Controller/add_260/n26 , \Inst_MPU6500_Controller/add_260/n24 , 
        \Inst_MPU6500_Controller/add_260/n22 , \Inst_MPU6500_Controller/add_260/n20 , 
        \Inst_MPU6500_Controller/add_260/n18 , \Inst_MPU6500_Controller/add_260/n16 , 
        \Inst_MPU6500_Controller/add_260/n14 , \Inst_MPU6500_Controller/add_260/n12 , 
        \Inst_MPU6500_Controller/add_260/n10 , \Inst_MPU6500_Controller/add_260/n8 , 
        \Inst_MPU6500_Controller/add_260/n6 ;
    wire [31:0]\Inst_MPU6500_Controller/n740 ;
    
    wire \Inst_MPU6500_Controller/add_92/n62 , \Inst_MPU6500_Controller/add_92/n60 , 
        \Inst_MPU6500_Controller/add_92/n58 , \Inst_MPU6500_Controller/add_92/n56 , 
        \Inst_MPU6500_Controller/add_92/n54 , \Inst_MPU6500_Controller/add_92/n52 , 
        \Inst_MPU6500_Controller/add_92/n50 ;
    wire [18:0]\Inst_MPU6500_Controller/n569 ;
    
    wire \Inst_MPU6500_Controller/add_256/n4 , \Inst_MPU6500_Controller/add_92/n48 , 
        \Inst_MPU6500_Controller/add_92/n46 , \Inst_MPU6500_Controller/add_92/n44 , 
        \Inst_MPU6500_Controller/add_92/n42 , \Inst_MPU6500_Controller/add_92/n40 , 
        \Inst_MPU6500_Controller/add_92/n38 , \Inst_MPU6500_Controller/add_92/n36 , 
        \Inst_MPU6500_Controller/add_92/n34 , \Inst_MPU6500_Controller/add_92/n32 , 
        \Inst_MPU6500_Controller/add_92/n30 , \Inst_MPU6500_Controller/add_92/n28 , 
        \Inst_MPU6500_Controller/add_92/n26 , \Inst_MPU6500_Controller/add_92/n24 , 
        \Inst_MPU6500_Controller/add_92/n22 , \Inst_MPU6500_Controller/add_92/n20 , 
        \Inst_MPU6500_Controller/add_92/n18 , \Inst_MPU6500_Controller/add_92/n16 , 
        \Inst_MPU6500_Controller/add_92/n14 , \Inst_MPU6500_Controller/add_92/n12 , 
        \Inst_MPU6500_Controller/add_92/n10 , \Inst_MPU6500_Controller/add_92/n8 , 
        \Inst_MPU6500_Controller/add_92/n6 , \Inst_MPU6500_Controller/add_92/n4 , 
        \Inst_MPU6500_Controller/add_259/n30 , \Inst_MPU6500_Controller/add_259/n28 , 
        \Inst_MPU6500_Controller/add_259/n26 , \Inst_MPU6500_Controller/add_259/n24 , 
        \Inst_MPU6500_Controller/add_259/n22 , \Inst_MPU6500_Controller/add_259/n20 , 
        \Inst_MPU6500_Controller/add_259/n18 , \Inst_MPU6500_Controller/add_259/n16 , 
        \Inst_MPU6500_Controller/add_259/n14 , \Inst_MPU6500_Controller/add_259/n12 , 
        \Inst_MPU6500_Controller/add_259/n10 , \Inst_MPU6500_Controller/add_259/n8 , 
        \Inst_MPU6500_Controller/add_259/n6 ;
    wire [31:0]\Inst_MPU6500_Controller/n666 ;
    
    wire \Inst_MPU6500_Controller/add_87/n62 , \Inst_MPU6500_Controller/add_256/n6 , 
        \Inst_MPU6500_Controller/add_87/n60 , \Inst_MPU6500_Controller/add_87/n58 , 
        \Inst_MPU6500_Controller/add_87/n56 , \Inst_MPU6500_Controller/add_87/n54 ;
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    
    wire \Inst_MPU6500_Controller/add_87/n52 , \Inst_MPU6500_Controller/add_87/n50 , 
        \Inst_MPU6500_Controller/add_87/n48 , \Inst_MPU6500_Controller/add_87/n46 , 
        \Inst_MPU6500_Controller/add_87/n44 , \Inst_MPU6500_Controller/add_87/n42 , 
        \Inst_MPU6500_Controller/add_87/n40 , \Inst_MPU6500_Controller/add_87/n38 , 
        \Inst_MPU6500_Controller/add_87/n36 , \Inst_MPU6500_Controller/add_87/n34 , 
        \Inst_MPU6500_Controller/add_87/n32 , \Inst_MPU6500_Controller/add_87/n30 , 
        \Inst_MPU6500_Controller/add_87/n28 , \Inst_MPU6500_Controller/add_87/n26 , 
        \Inst_MPU6500_Controller/add_87/n24 ;
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [7:0]spi_to_mpu_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(228)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid, n1824, n1825, \Inst_MPU6500_Controller/add_87/n22 , 
        \Inst_MPU6500_Controller/add_87/n20 , \Inst_MPU6500_Controller/add_87/n18 , 
        \Inst_MPU6500_Controller/add_87/n16 , \Inst_MPU6500_Controller/add_87/n14 , 
        \Inst_MPU6500_Controller/add_87/n12 , \Inst_MPU6500_Controller/add_87/n10 , 
        \Inst_MPU6500_Controller/add_87/n8 , \Inst_MPU6500_Controller/add_87/n6 , 
        \Inst_MPU6500_Controller/add_87/n4 , \Inst_MPU6500_Controller/add_258/n30 , 
        \Inst_MPU6500_Controller/add_258/n28 , \Inst_MPU6500_Controller/add_258/n26 , 
        \Inst_MPU6500_Controller/add_258/n24 , \Inst_MPU6500_Controller/add_258/n22 , 
        \Inst_MPU6500_Controller/add_258/n20 , \Inst_MPU6500_Controller/add_258/n18 , 
        \Inst_MPU6500_Controller/add_258/n16 , \Inst_MPU6500_Controller/add_258/n14 , 
        \Inst_MPU6500_Controller/add_258/n12 , \Inst_MPU6500_Controller/add_258/n10 , 
        \Inst_MPU6500_Controller/add_258/n8 , \Inst_MPU6500_Controller/add_258/n6 ;
    wire [31:0]\Inst_MPU6500_Controller/n592 ;
    
    wire \Inst_MPU6500_Controller/add_82/n62 , \Inst_MPU6500_Controller/add_82/n60 ;
    wire [8:0]\u_FIFO/u_efx_fifo_top/raddr ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(378)
    
    wire \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9] , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n4 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n2 , \Inst_MPU6500_Controller/add_82/n58 , 
        \Inst_pwm_servo_0/add_24/n2 , \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9] , 
        \Inst_MPU6500_Controller/add_82/n56 , \Inst_MPU6500_Controller/add_82/n54 , 
        \Inst_MPU6500_Controller/add_82/n52 , \Inst_MPU6500_Controller/add_82/n50 , 
        \Inst_MPU6500_Controller/add_82/n48 , \Inst_MPU6500_Controller/add_82/n46 , 
        \Inst_MPU6500_Controller/add_82/n44 , \Inst_MPU6500_Controller/add_82/n42 , 
        \Inst_MPU6500_Controller/add_82/n40 , \Inst_MPU6500_Controller/add_82/n38 , 
        \Inst_MPU6500_Controller/add_82/n36 , \Inst_MPU6500_Controller/add_82/n34 , 
        \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n2 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    
    wire \Inst_debounce/add_30/n2 , \Inst_MPU6500_Controller/add_82/n32 , 
        \Inst_MPU6500_Controller/add_256/n8 ;
    wire [7:0]\Inst_uart_tx/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(49)
    
    wire \Inst_MPU6500_Controller/add_82/n30 ;
    wire [5:0]\Inst_uart_tx/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(47)
    
    wire \Inst_MPU6500_Controller/add_82/n28 , \Inst_MPU6500_Controller/add_82/n26 , 
        \Inst_MPU6500_Controller/add_82/n24 , \Inst_MPU6500_Controller/add_82/n22 , 
        \Inst_MPU6500_Controller/add_82/n20 , \Inst_MPU6500_Controller/add_82/n18 , 
        \Inst_MPU6500_Controller/add_82/n16 , \Inst_MPU6500_Controller/add_82/n14 , 
        \Inst_MPU6500_Controller/add_82/n12 , \Inst_MPU6500_Controller/add_82/n10 ;
    wire [1:0]\Inst_uart_tx/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    
    wire \Inst_MPU6500_Controller/add_82/n8 , \Inst_MPU6500_Controller/add_82/n6 ;
    wire [2:0]\Inst_uart_tx/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(48)
    
    wire tx_busy_sig, \Inst_MPU6500_Controller/add_82/n4 , \clk_i~O , 
        \Inst_MPU6500_Controller/add_257/n30 , \Inst_MPU6500_Controller/add_257/n28 , 
        \Inst_MPU6500_Controller/add_257/n26 , \Inst_MPU6500_Controller/add_257/n24 , 
        \Inst_MPU6500_Controller/add_257/n22 , \Inst_MPU6500_Controller/add_257/n20 , 
        \Inst_MPU6500_Controller/add_257/n18 , \Inst_MPU6500_Controller/add_257/n16 , 
        \Inst_MPU6500_Controller/add_257/n14 , \Inst_MPU6500_Controller/add_257/n12 , 
        \Inst_MPU6500_Controller/add_257/n10 , \Inst_MPU6500_Controller/add_257/n8 , 
        \Inst_MPU6500_Controller/add_257/n6 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \Inst_MPU6500_Controller/add_256/n30 , \Inst_MPU6500_Controller/add_256/n28 , 
        \Inst_debounce/sync_1 , switch_out, \Inst_debounce/sync_0 , \Inst_MPU6500_Controller/add_256/n26 , 
        \Inst_MPU6500_Controller/add_256/n24 , \Inst_MPU6500_Controller/add_256/n22 , 
        \Inst_MPU6500_Controller/add_256/n20 , \Inst_MPU6500_Controller/add_256/n18 , 
        \Inst_MPU6500_Controller/add_256/n16 , \Inst_MPU6500_Controller/add_256/n14 , 
        \Inst_MPU6500_Controller/add_256/n12 , \Inst_MPU6500_Controller/add_256/n10 , 
        n1823, \u_FIFO/u_efx_fifo_top/wr_en_int , ceg_net539, n1822, 
        ceg_net332, \u_FIFO/u_efx_fifo_top/rd_en_int ;
    wire [2:0]\Inst_MPU6500_Controller/n1067 ;
    
    wire ceg_net757, \Inst_MPU6500_Controller/n10021 ;
    wire [3:0]\Inst_MPU6500_Controller/n1071 ;
    
    wire ceg_net812, \Inst_MPU6500_Controller/n1113 ;
    wire [3:0]\Inst_MPU6500_Controller/n1099 ;
    
    wire ceg_net798, \Inst_MPU6500_Controller/n10022 , \Inst_MPU6500_Controller/n10023 , 
        \Inst_MPU6500_Controller/n10024 , \Inst_MPU6500_Controller/n10025 , 
        \Inst_MPU6500_Controller/n10026 , \Inst_MPU6500_Controller/n10029 , 
        \Inst_MPU6500_Controller/n10030 , \Inst_MPU6500_Controller/n10031 , 
        \Inst_MPU6500_Controller/n10032 , \Inst_MPU6500_Controller/n10033 , 
        \Inst_MPU6500_Controller/n10034 ;
    wire [7:0]\Inst_MPU6500_Controller/n1104 ;
    
    wire ceg_net799, \~Inst_MPU6500_Controller/n7949 ;
    wire [21:0]\Inst_MPU6500_Controller/n1076 ;
    
    wire ceg_net800, \Inst_MPU6500_Controller/n1066 , ceg_net801, \Inst_MPU6500_Controller/n6468 , 
        \Inst_MPU6500_Controller/n6473 , \Inst_MPU6500_Controller/n6478 , 
        \Inst_MPU6500_Controller/n6483 , \Inst_MPU6500_Controller/n6488 , 
        \Inst_MPU6500_Controller/n6493 , \Inst_MPU6500_Controller/n6498 , 
        \Inst_MPU6500_Controller/n6503 , \Inst_MPU6500_Controller/n6508 , 
        \Inst_MPU6500_Controller/n6513 , \Inst_MPU6500_Controller/n6518 , 
        \Inst_MPU6500_Controller/n6523 , \Inst_MPU6500_Controller/n6528 , 
        \Inst_MPU6500_Controller/n6618 , \Inst_MPU6500_Controller/n6623 , 
        \Inst_MPU6500_Controller/n6628 , \Inst_MPU6500_Controller/n6633 , 
        \Inst_MPU6500_Controller/n6638 , \Inst_MPU6500_Controller/n6643 , 
        \Inst_MPU6500_Controller/n6648 , \Inst_MPU6500_Controller/n6653 , 
        \Inst_MPU6500_Controller/n6658 , \Inst_MPU6500_Controller/n6663 , 
        \Inst_MPU6500_Controller/n6668 , \Inst_MPU6500_Controller/n6673 , 
        \Inst_MPU6500_Controller/n6678 , \Inst_MPU6500_Controller/n6683 , 
        \Inst_MPU6500_Controller/n6688 , \Inst_MPU6500_Controller/n6703 , 
        \Inst_MPU6500_Controller/n6708 , \Inst_MPU6500_Controller/n6713 , 
        \Inst_MPU6500_Controller/n6718 , \Inst_MPU6500_Controller/n6723 , 
        \Inst_MPU6500_Controller/n6728 , \Inst_MPU6500_Controller/n6733 , 
        \Inst_MPU6500_Controller/n6738 , \Inst_MPU6500_Controller/n6743 , 
        \Inst_MPU6500_Controller/n6748 , \Inst_MPU6500_Controller/n6753 , 
        \Inst_MPU6500_Controller/n6758 , \Inst_MPU6500_Controller/n6763 , 
        \Inst_MPU6500_Controller/n6768 , \Inst_MPU6500_Controller/n6783 , 
        \Inst_MPU6500_Controller/n6788 , \Inst_MPU6500_Controller/n6793 , 
        \Inst_MPU6500_Controller/n6798 , \Inst_MPU6500_Controller/n6803 , 
        \Inst_MPU6500_Controller/n6808 , \Inst_MPU6500_Controller/n6813 , 
        \Inst_MPU6500_Controller/n6818 , \Inst_MPU6500_Controller/n6823 , 
        \Inst_MPU6500_Controller/n6828 , \Inst_MPU6500_Controller/n6833 , 
        \Inst_MPU6500_Controller/n6838 , \Inst_MPU6500_Controller/n6843 , 
        \Inst_MPU6500_Controller/n6848 , \Inst_MPU6500_Controller/n6858 , 
        \Inst_MPU6500_Controller/n6863 , \Inst_MPU6500_Controller/n6868 , 
        \Inst_MPU6500_Controller/n6873 , \Inst_MPU6500_Controller/n6878 , 
        \Inst_MPU6500_Controller/n6883 , \Inst_MPU6500_Controller/n6888 , 
        \Inst_MPU6500_Controller/n6893 , \Inst_MPU6500_Controller/n6898 , 
        \Inst_MPU6500_Controller/n6903 , \Inst_MPU6500_Controller/n6908 , 
        \Inst_MPU6500_Controller/n6913 , \Inst_MPU6500_Controller/n6918 , 
        \Inst_MPU6500_Controller/n6923 , \Inst_MPU6500_Controller/n6928 , 
        ceg_net804, ceg_net813, ceg_net814;
    wire [15:0]\Inst_FIFO_CONTROLLER/n439 ;
    
    wire ceg_net569;
    wire [7:0]\Inst_FIFO_CONTROLLER/n547 ;
    
    wire ceg_net815;
    wire [4:0]\Inst_FIFO_CONTROLLER/n557 ;
    
    wire ceg_net816, \Inst_FIFO_CONTROLLER/n674 ;
    wire [15:0]\Inst_FIFO_CONTROLLER/n456 ;
    wire [15:0]\Inst_FIFO_CONTROLLER/n473 ;
    wire [15:0]\Inst_FIFO_CONTROLLER/n490 ;
    wire [15:0]\Inst_FIFO_CONTROLLER/n507 ;
    wire [15:0]\Inst_FIFO_CONTROLLER/n524 ;
    
    wire ceg_net817, ceg_net818, ceg_net819;
    wire [3:0]\Inst_Spi_Mode_3/n129 ;
    
    wire ceg_net291, ceg_net822;
    wire [7:0]\Inst_Spi_Mode_3/n135 ;
    
    wire ceg_net670;
    wire [3:0]\Inst_Spi_Mode_3/n124 ;
    
    wire ceg_net671, \~ceg_net299 , ceg_net672, \Inst_Spi_Mode_3/n25 , 
        \Inst_Spi_Mode_3/n466 , ceg_net673, ceg_net674, ceg_net675, 
        ceg_net676, ceg_net677, ceg_net678, ceg_net679;
    wire [1:0]\Inst_Spi_Mode_3/n144 ;
    wire [19:0]\Inst_pwm_servo_0/n63 ;
    
    wire \Inst_pwm_servo_0/n86 , \Inst_uart_tx/n333 ;
    wire [5:0]\Inst_uart_tx/n129 ;
    
    wire ceg_net322, ceg_net823;
    wire [2:0]\Inst_uart_tx/n136 ;
    
    wire ceg_net685, \Inst_uart_tx/n118 , ceg_net682, \Inst_uart_tx/n119 , 
        ceg_net683;
    wire [1:0]\Inst_uart_tx/n115 ;
    
    wire \Inst_debounce/n151 , \Inst_debounce/n149 , n1821;
    wire [1:0]n409;
    
    wire n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, 
        n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, 
        n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, 
        n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, 
        n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, 
        n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, 
        n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, 
        n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, 
        n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, 
        n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, 
        n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, 
        n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, 
        n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, 
        n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, 
        n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, 
        n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, 
        n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, 
        n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, 
        n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, 
        n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, 
        n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666, 
        n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, 
        n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, 
        n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, 
        n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698, 
        n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, 
        n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, 
        n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, 
        n1723, n1724, n1725, n1726, n1727, n1728, n1729, n1730, 
        n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738, 
        n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, 
        n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, 
        n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762, 
        n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770, 
        n1771, n1772, n1773, n1774, n1775, n1776, n1777, n1778, 
        n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786, 
        n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, 
        n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802, 
        n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810, 
        n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, 
        n1819, n1820;
    
    assign pwm_out_0 = pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    assign pwm_out_1 = pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(30)
    EFX_LUT4 LUT__3531 (.I0(\u_FIFO/u_efx_fifo_top/raddr [2]), .I1(\u_FIFO/u_efx_fifo_top/waddr [2]), 
            .I2(\u_FIFO/u_efx_fifo_top/raddr [0]), .I3(\u_FIFO/u_efx_fifo_top/waddr [0]), 
            .O(n1500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__3531.LUTMASK = 16'h9009;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[7]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [7]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_read_state[0]~FF  (.D(uart_read_state[0]), .CE(ceg_net539), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(uart_read_state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \uart_read_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_read_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_read_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \uart_read_state[0]~FF .D_POLARITY = 1'b0;
    defparam \uart_read_state[0]~FF .SR_SYNC = 1'b0;
    defparam \uart_read_state[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_read_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[0]~FF  (.D(rdata[0]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[0]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rd_en_i~FF  (.D(n408), .CE(rst_n_i), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(rd_en_i)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \rd_en_i~FF .CLK_POLARITY = 1'b1;
    defparam \rd_en_i~FF .CE_POLARITY = 1'b1;
    defparam \rd_en_i~FF .SR_POLARITY = 1'b1;
    defparam \rd_en_i~FF .D_POLARITY = 1'b1;
    defparam \rd_en_i~FF .SR_SYNC = 1'b1;
    defparam \rd_en_i~FF .SR_VALUE = 1'b0;
    defparam \rd_en_i~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_start_sig~FF  (.D(ceg_net332), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_start_sig)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_start_sig~FF .CLK_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .CE_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_POLARITY = 1'b0;
    defparam \tx_start_sig~FF .D_POLARITY = 1'b1;
    defparam \tx_start_sig~FF .SR_SYNC = 1'b0;
    defparam \tx_start_sig~FF .SR_VALUE = 1'b0;
    defparam \tx_start_sig~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n1067 [0]), 
           .CE(ceg_net757), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[0]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_x_a [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n1071 [0]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_start~FF  (.D(\Inst_MPU6500_Controller/n1113 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_start)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \spi_start~FF .CLK_POLARITY = 1'b1;
    defparam \spi_start~FF .CE_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_POLARITY = 1'b0;
    defparam \spi_start~FF .D_POLARITY = 1'b1;
    defparam \spi_start~FF .SR_SYNC = 1'b0;
    defparam \spi_start~FF .SR_VALUE = 1'b0;
    defparam \spi_start~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[0]~FF  (.D(\Inst_MPU6500_Controller/n1099 [0]), 
           .CE(ceg_net798), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][0]~FF  (.D(spi_to_mpu_data[0]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[0]~FF  (.D(\Inst_MPU6500_Controller/n1104 [0]), 
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_valid_out~FF  (.D(\~Inst_MPU6500_Controller/n7949 ), .CE(rst_n_i), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(data_valid_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \data_valid_out~FF .CLK_POLARITY = 1'b1;
    defparam \data_valid_out~FF .CE_POLARITY = 1'b1;
    defparam \data_valid_out~FF .SR_POLARITY = 1'b1;
    defparam \data_valid_out~FF .D_POLARITY = 1'b1;
    defparam \data_valid_out~FF .SR_SYNC = 1'b1;
    defparam \data_valid_out~FF .SR_VALUE = 1'b0;
    defparam \data_valid_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[0]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[0]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_z_a [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[0]~FF .D_POLARITY = 1'b0;
    defparam \accel_z[0]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[0]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[0]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_x_g [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[0]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_g [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[0]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_z_g [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_z[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[0]~FF .D_POLARITY = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[0]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n1076 [0]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_cs_n_o~FF  (.D(\Inst_MPU6500_Controller/n1066 ), .CE(ceg_net801), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_cs_n_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \spi_cs_n_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .CE_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .SR_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .D_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC = 1'b0;
    defparam \spi_cs_n_o~FF .SR_VALUE = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF  (.D(\Inst_MPU6500_Controller/n592 [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF  (.D(\Inst_MPU6500_Controller/n592 [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF  (.D(\Inst_MPU6500_Controller/n592 [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF  (.D(\Inst_MPU6500_Controller/n592 [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF  (.D(\Inst_MPU6500_Controller/n592 [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF  (.D(\Inst_MPU6500_Controller/n592 [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF  (.D(\Inst_MPU6500_Controller/n592 [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF  (.D(\Inst_MPU6500_Controller/n592 [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF  (.D(\Inst_MPU6500_Controller/n592 [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF  (.D(\Inst_MPU6500_Controller/n592 [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF  (.D(\Inst_MPU6500_Controller/n592 [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF  (.D(\Inst_MPU6500_Controller/n592 [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF  (.D(\Inst_MPU6500_Controller/n592 [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF  (.D(\Inst_MPU6500_Controller/n592 [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF  (.D(\Inst_MPU6500_Controller/n592 [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF  (.D(\Inst_MPU6500_Controller/n592 [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_a [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_a[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF  (.D(\Inst_MPU6500_Controller/n666 [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF  (.D(\Inst_MPU6500_Controller/n666 [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF  (.D(\Inst_MPU6500_Controller/n666 [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF  (.D(\Inst_MPU6500_Controller/n666 [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF  (.D(\Inst_MPU6500_Controller/n666 [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF  (.D(\Inst_MPU6500_Controller/n666 [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF  (.D(\Inst_MPU6500_Controller/n666 [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF  (.D(\Inst_MPU6500_Controller/n666 [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF  (.D(\Inst_MPU6500_Controller/n666 [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF  (.D(\Inst_MPU6500_Controller/n666 [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF  (.D(\Inst_MPU6500_Controller/n666 [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF  (.D(\Inst_MPU6500_Controller/n666 [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF  (.D(\Inst_MPU6500_Controller/n666 [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF  (.D(\Inst_MPU6500_Controller/n666 [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF  (.D(\Inst_MPU6500_Controller/n666 [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF  (.D(\Inst_MPU6500_Controller/n666 [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_a [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_a[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF  (.D(\Inst_MPU6500_Controller/n740 [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF  (.D(\Inst_MPU6500_Controller/n740 [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF  (.D(\Inst_MPU6500_Controller/n740 [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF  (.D(\Inst_MPU6500_Controller/n740 [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF  (.D(\Inst_MPU6500_Controller/n740 [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF  (.D(\Inst_MPU6500_Controller/n740 [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF  (.D(\Inst_MPU6500_Controller/n740 [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF  (.D(\Inst_MPU6500_Controller/n740 [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF  (.D(\Inst_MPU6500_Controller/n740 [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF  (.D(\Inst_MPU6500_Controller/n740 [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF  (.D(\Inst_MPU6500_Controller/n740 [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF  (.D(\Inst_MPU6500_Controller/n740 [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF  (.D(\Inst_MPU6500_Controller/n740 [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF  (.D(\Inst_MPU6500_Controller/n740 [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF  (.D(\Inst_MPU6500_Controller/n740 [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF  (.D(\Inst_MPU6500_Controller/n740 [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_a [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_a[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF  (.D(\Inst_MPU6500_Controller/n814 [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF  (.D(\Inst_MPU6500_Controller/n814 [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF  (.D(\Inst_MPU6500_Controller/n814 [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF  (.D(\Inst_MPU6500_Controller/n814 [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF  (.D(\Inst_MPU6500_Controller/n814 [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF  (.D(\Inst_MPU6500_Controller/n814 [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF  (.D(\Inst_MPU6500_Controller/n814 [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF  (.D(\Inst_MPU6500_Controller/n814 [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF  (.D(\Inst_MPU6500_Controller/n814 [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF  (.D(\Inst_MPU6500_Controller/n814 [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF  (.D(\Inst_MPU6500_Controller/n814 [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF  (.D(\Inst_MPU6500_Controller/n814 [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF  (.D(\Inst_MPU6500_Controller/n814 [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF  (.D(\Inst_MPU6500_Controller/n814 [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF  (.D(\Inst_MPU6500_Controller/n814 [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF  (.D(\Inst_MPU6500_Controller/n814 [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_x_g [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_x_g[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF  (.D(\Inst_MPU6500_Controller/n888 [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF  (.D(\Inst_MPU6500_Controller/n888 [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF  (.D(\Inst_MPU6500_Controller/n888 [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF  (.D(\Inst_MPU6500_Controller/n888 [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF  (.D(\Inst_MPU6500_Controller/n888 [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF  (.D(\Inst_MPU6500_Controller/n888 [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF  (.D(\Inst_MPU6500_Controller/n888 [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF  (.D(\Inst_MPU6500_Controller/n888 [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF  (.D(\Inst_MPU6500_Controller/n888 [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF  (.D(\Inst_MPU6500_Controller/n888 [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF  (.D(\Inst_MPU6500_Controller/n888 [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF  (.D(\Inst_MPU6500_Controller/n888 [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF  (.D(\Inst_MPU6500_Controller/n888 [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF  (.D(\Inst_MPU6500_Controller/n888 [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF  (.D(\Inst_MPU6500_Controller/n888 [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF  (.D(\Inst_MPU6500_Controller/n888 [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_y_g [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_y_g[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF  (.D(\Inst_MPU6500_Controller/n962 [2]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF  (.D(\Inst_MPU6500_Controller/n962 [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF  (.D(\Inst_MPU6500_Controller/n962 [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF  (.D(\Inst_MPU6500_Controller/n962 [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF  (.D(\Inst_MPU6500_Controller/n962 [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF  (.D(\Inst_MPU6500_Controller/n962 [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF  (.D(\Inst_MPU6500_Controller/n962 [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF  (.D(\Inst_MPU6500_Controller/n962 [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF  (.D(\Inst_MPU6500_Controller/n962 [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF  (.D(\Inst_MPU6500_Controller/n962 [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF  (.D(\Inst_MPU6500_Controller/n962 [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF  (.D(\Inst_MPU6500_Controller/n962 [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF  (.D(\Inst_MPU6500_Controller/n962 [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF  (.D(\Inst_MPU6500_Controller/n962 [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF  (.D(\Inst_MPU6500_Controller/n962 [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF  (.D(\Inst_MPU6500_Controller/n962 [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(\Inst_MPU6500_Controller/prod_sum_z_g [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .SR_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .SR_SYNC = 1'b1;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/prod_sum_z_g[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n1076 [1]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n1076 [2]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n1076 [3]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n1076 [4]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n1076 [5]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n1076 [6]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n1076 [7]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n1076 [8]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n1076 [9]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n1076 [10]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n1076 [11]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n1076 [12]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n1076 [13]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n1076 [14]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n1076 [15]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n1076 [16]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n1076 [17]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n1076 [18]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n1076 [19]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n1076 [20]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n1076 [21]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[1]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_x_a [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[2]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_x_a [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[2]~FF .D_POLARITY = 1'b0;
    defparam \accel_x[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[3]~FF  (.D(\Inst_MPU6500_Controller/n6468 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[4]~FF  (.D(\Inst_MPU6500_Controller/n6473 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[5]~FF  (.D(\Inst_MPU6500_Controller/n6478 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[6]~FF  (.D(\Inst_MPU6500_Controller/n6483 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[7]~FF  (.D(\Inst_MPU6500_Controller/n6488 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[8]~FF  (.D(\Inst_MPU6500_Controller/n6493 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[9]~FF  (.D(\Inst_MPU6500_Controller/n6498 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[10]~FF  (.D(\Inst_MPU6500_Controller/n6503 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[11]~FF  (.D(\Inst_MPU6500_Controller/n6508 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[12]~FF  (.D(\Inst_MPU6500_Controller/n6513 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[13]~FF  (.D(\Inst_MPU6500_Controller/n6518 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[14]~FF  (.D(\Inst_MPU6500_Controller/n6523 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_x[15]~FF  (.D(\Inst_MPU6500_Controller/n6528 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_x[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[1]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[2]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [4]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[3]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [5]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[4]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [6]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[5]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [7]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[6]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [8]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[7]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [9]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[8]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [10]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[9]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [11]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[10]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [12]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[11]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [13]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[12]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [14]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[13]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [15]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[14]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [16]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_y[15]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_a [31]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(accel_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_y[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[1]~FF  (.D(\Inst_MPU6500_Controller/n6618 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[1]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[1]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[2]~FF  (.D(\Inst_MPU6500_Controller/n6623 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[2]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[2]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[3]~FF  (.D(\Inst_MPU6500_Controller/n6628 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[3]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[3]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[4]~FF  (.D(\Inst_MPU6500_Controller/n6633 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[4]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[4]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[5]~FF  (.D(\Inst_MPU6500_Controller/n6638 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[5]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[5]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[6]~FF  (.D(\Inst_MPU6500_Controller/n6643 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[6]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[6]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[7]~FF  (.D(\Inst_MPU6500_Controller/n6648 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[7]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[7]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[8]~FF  (.D(\Inst_MPU6500_Controller/n6653 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[8]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[8]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[9]~FF  (.D(\Inst_MPU6500_Controller/n6658 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[9]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[9]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[10]~FF  (.D(\Inst_MPU6500_Controller/n6663 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[10]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[10]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[11]~FF  (.D(\Inst_MPU6500_Controller/n6668 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[11]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[11]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[12]~FF  (.D(\Inst_MPU6500_Controller/n6673 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[12]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[12]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[13]~FF  (.D(\Inst_MPU6500_Controller/n6678 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[13]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[13]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[14]~FF  (.D(\Inst_MPU6500_Controller/n6683 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[14]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[14]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \accel_z[15]~FF  (.D(\Inst_MPU6500_Controller/n6688 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(accel_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \accel_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .CE_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .D_POLARITY = 1'b1;
    defparam \accel_z[15]~FF .SR_SYNC = 1'b1;
    defparam \accel_z[15]~FF .SR_VALUE = 1'b0;
    defparam \accel_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[1]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_x_g [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_x[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[1]~FF .D_POLARITY = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[2]~FF  (.D(\Inst_MPU6500_Controller/n6703 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[3]~FF  (.D(\Inst_MPU6500_Controller/n6708 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[4]~FF  (.D(\Inst_MPU6500_Controller/n6713 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[5]~FF  (.D(\Inst_MPU6500_Controller/n6718 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[6]~FF  (.D(\Inst_MPU6500_Controller/n6723 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[7]~FF  (.D(\Inst_MPU6500_Controller/n6728 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[8]~FF  (.D(\Inst_MPU6500_Controller/n6733 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[9]~FF  (.D(\Inst_MPU6500_Controller/n6738 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[10]~FF  (.D(\Inst_MPU6500_Controller/n6743 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[11]~FF  (.D(\Inst_MPU6500_Controller/n6748 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[12]~FF  (.D(\Inst_MPU6500_Controller/n6753 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[13]~FF  (.D(\Inst_MPU6500_Controller/n6758 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[14]~FF  (.D(\Inst_MPU6500_Controller/n6763 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_x[15]~FF  (.D(\Inst_MPU6500_Controller/n6768 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_x[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_x[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_x[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[1]~FF  (.D(\Inst_MPU6500_Controller/prod_sum_y_g [3]), 
           .CE(\~Inst_MPU6500_Controller/n7949 ), .CLK(\clk_i~O ), .SR(1'b0), 
           .Q(gyro_y[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[1]~FF .D_POLARITY = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[2]~FF  (.D(\Inst_MPU6500_Controller/n6783 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[3]~FF  (.D(\Inst_MPU6500_Controller/n6788 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[4]~FF  (.D(\Inst_MPU6500_Controller/n6793 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[5]~FF  (.D(\Inst_MPU6500_Controller/n6798 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[6]~FF  (.D(\Inst_MPU6500_Controller/n6803 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[7]~FF  (.D(\Inst_MPU6500_Controller/n6808 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[8]~FF  (.D(\Inst_MPU6500_Controller/n6813 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[9]~FF  (.D(\Inst_MPU6500_Controller/n6818 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[10]~FF  (.D(\Inst_MPU6500_Controller/n6823 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[11]~FF  (.D(\Inst_MPU6500_Controller/n6828 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[12]~FF  (.D(\Inst_MPU6500_Controller/n6833 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[13]~FF  (.D(\Inst_MPU6500_Controller/n6838 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[14]~FF  (.D(\Inst_MPU6500_Controller/n6843 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_y[15]~FF  (.D(\Inst_MPU6500_Controller/n6848 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_y[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_y[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_y[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[1]~FF  (.D(\Inst_MPU6500_Controller/n6858 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[1]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[2]~FF  (.D(\Inst_MPU6500_Controller/n6863 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[2]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[3]~FF  (.D(\Inst_MPU6500_Controller/n6868 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[3]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[4]~FF  (.D(\Inst_MPU6500_Controller/n6873 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[4]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[5]~FF  (.D(\Inst_MPU6500_Controller/n6878 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[5]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[6]~FF  (.D(\Inst_MPU6500_Controller/n6883 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[6]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[7]~FF  (.D(\Inst_MPU6500_Controller/n6888 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[7]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[8]~FF  (.D(\Inst_MPU6500_Controller/n6893 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[8]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[9]~FF  (.D(\Inst_MPU6500_Controller/n6898 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[9]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[10]~FF  (.D(\Inst_MPU6500_Controller/n6903 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[10]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[11]~FF  (.D(\Inst_MPU6500_Controller/n6908 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[11]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[12]~FF  (.D(\Inst_MPU6500_Controller/n6913 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[12]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[13]~FF  (.D(\Inst_MPU6500_Controller/n6918 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[13]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[14]~FF  (.D(\Inst_MPU6500_Controller/n6923 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[14]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gyro_z[15]~FF  (.D(\Inst_MPU6500_Controller/n6928 ), .CE(\~Inst_MPU6500_Controller/n7949 ), 
           .CLK(\clk_i~O ), .SR(1'b0), .Q(gyro_z[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .CE_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .SR_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .D_POLARITY = 1'b1;
    defparam \gyro_z[15]~FF .SR_SYNC = 1'b1;
    defparam \gyro_z[15]~FF .SR_VALUE = 1'b0;
    defparam \gyro_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[0][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10021 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[1][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10022 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[2][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10023 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[3][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10024 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[3] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[3][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[4][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10025 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[4] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[4][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[5][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10026 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[5] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[5][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[8][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10029 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[8] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[8][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[9][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10030 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[9] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[9][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[10][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10031 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[10] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[10][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[11][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10032 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[11] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[11][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[12][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10033 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[12] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[12][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][1]~FF  (.D(spi_to_mpu_data[1]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][2]~FF  (.D(spi_to_mpu_data[2]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][3]~FF  (.D(spi_to_mpu_data[3]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][4]~FF  (.D(spi_to_mpu_data[4]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][5]~FF  (.D(spi_to_mpu_data[5]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][6]~FF  (.D(spi_to_mpu_data[6]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/raw_data[13][7]~FF  (.D(spi_to_mpu_data[7]), 
           .CE(\Inst_MPU6500_Controller/n10034 ), .CLK(\clk_i~O ), .SR(rst_n_i), 
           .Q(\Inst_MPU6500_Controller/raw_data[13] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/raw_data[13][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[1]~FF  (.D(\Inst_MPU6500_Controller/n1104 [1]), 
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[2]~FF  (.D(\Inst_MPU6500_Controller/n1104 [2]), 
           .CE(ceg_net804), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[3]~FF  (.D(\Inst_MPU6500_Controller/n1104 [3]), 
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n1104 [4]), 
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n1104 [5]), 
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[6]~FF  (.D(\Inst_MPU6500_Controller/n1104 [6]), 
           .CE(ceg_net804), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[7]~FF  (.D(\Inst_MPU6500_Controller/n1104 [7]), 
           .CE(ceg_net804), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \mpu_to_spi_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n1071 [1]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n1071 [2]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n1071 [3]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[1]~FF  (.D(\Inst_MPU6500_Controller/n1099 [1]), 
           .CE(ceg_net798), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[2]~FF  (.D(\Inst_MPU6500_Controller/n1099 [2]), 
           .CE(ceg_net813), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[3]~FF  (.D(\Inst_MPU6500_Controller/n1099 [3]), 
           .CE(ceg_net814), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[1]~FF  (.D(\Inst_MPU6500_Controller/n1067 [1]), 
           .CE(ceg_net757), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[2]~FF  (.D(\Inst_MPU6500_Controller/n1067 [2]), 
           .CE(ceg_net757), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(267)
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [0]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [0]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[0]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[0]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[0]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[0]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[0]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n557 [0]), 
           .CE(ceg_net816), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/FIFO_state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_en_o~FF  (.D(\Inst_FIFO_CONTROLLER/n674 ), .CE(1'b1), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_en_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_en_o~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_en_o~FF .CE_POLARITY = 1'b1;
    defparam \fifo_wr_en_o~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_en_o~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_en_o~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_en_o~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_en_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [0]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [0]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [0]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [0]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [0]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [1]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [2]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [3]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [4]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [5]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [6]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [7]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [8]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [9]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [10]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [11]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [12]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [13]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [14]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF  (.D(\Inst_FIFO_CONTROLLER/n439 [15]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_x [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [1]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [2]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [3]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [4]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [5]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [6]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [7]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [8]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [9]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [10]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [11]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [12]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [13]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [14]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF  (.D(\Inst_FIFO_CONTROLLER/n456 [15]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_y [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [1]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [2]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [3]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [4]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [5]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [6]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [7]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [8]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [9]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [10]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [11]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [12]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [13]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [14]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF  (.D(\Inst_FIFO_CONTROLLER/n473 [15]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_accel_z [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_accel_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [1]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [2]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [3]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [4]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [5]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [6]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [7]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [8]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [9]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [10]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [11]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [12]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [13]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [14]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF  (.D(\Inst_FIFO_CONTROLLER/n490 [15]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_x [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [1]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [2]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [3]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [4]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [5]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [6]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [7]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [8]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [9]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [10]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [11]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [12]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [13]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [14]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF  (.D(\Inst_FIFO_CONTROLLER/n507 [15]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_y [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [1]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [2]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [3]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [4]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [5]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [6]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [7]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [8]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [9]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [10]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [11]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [12]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [13]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [14]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF  (.D(\Inst_FIFO_CONTROLLER/n524 [15]), 
           .CE(ceg_net569), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/reg_gyro_z [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/reg_gyro_z[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [1]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[1]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[1]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[1]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[1]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[1]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[1]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [2]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[2]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[2]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[2]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[2]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[2]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[2]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [3]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[3]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[3]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[3]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[3]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[3]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[3]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [4]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[4]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[4]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[4]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[4]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[4]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[4]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[5]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [5]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[5]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[5]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[5]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[5]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[5]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[5]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[6]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [6]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[6]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[6]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[6]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[6]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[6]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[6]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_wr_data_o[7]~FF  (.D(\Inst_FIFO_CONTROLLER/n547 [7]), .CE(ceg_net815), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(fifo_wr_data_o[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \fifo_wr_data_o[7]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[7]~FF .CE_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[7]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_wr_data_o[7]~FF .D_POLARITY = 1'b1;
    defparam \fifo_wr_data_o[7]~FF .SR_SYNC = 1'b0;
    defparam \fifo_wr_data_o[7]~FF .SR_VALUE = 1'b0;
    defparam \fifo_wr_data_o[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF  (.D(\Inst_FIFO_CONTROLLER/n557 [1]), 
           .CE(ceg_net816), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/FIFO_state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF  (.D(\Inst_FIFO_CONTROLLER/n557 [2]), 
           .CE(ceg_net817), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/FIFO_state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF  (.D(\Inst_FIFO_CONTROLLER/n557 [3]), 
           .CE(ceg_net818), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/FIFO_state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF  (.D(\Inst_FIFO_CONTROLLER/n557 [4]), 
           .CE(ceg_net819), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_FIFO_CONTROLLER/FIFO_state [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(247)
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_FIFO_CONTROLLER/FIFO_state[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[0]~FF  (.D(\Inst_Spi_Mode_3/n129 [0]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[0]~FF  (.D(\Inst_Spi_Mode_3/state [0]), 
           .CE(ceg_net822), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .D_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[0]~FF  (.D(\Inst_Spi_Mode_3/n135 [0]), 
           .CE(ceg_net670), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[0]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [0]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[0]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[0]~FF  (.D(\Inst_Spi_Mode_3/n124 [0]), 
           .CE(ceg_net671), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_data_valid~FF  (.D(ceg_net291), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(spi_data_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_data_valid~FF .CLK_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .CE_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_POLARITY = 1'b0;
    defparam \spi_data_valid~FF .D_POLARITY = 1'b1;
    defparam \spi_data_valid~FF .SR_SYNC = 1'b0;
    defparam \spi_data_valid~FF .SR_VALUE = 1'b0;
    defparam \spi_data_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_o~FF  (.D(\~ceg_net299 ), .CE(ceg_net672), .CLK(\clk_i~O ), 
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
           .CE(ceg_net673), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[2]~FF  (.D(\Inst_Spi_Mode_3/n135 [2]), 
           .CE(ceg_net674), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[3]~FF  (.D(\Inst_Spi_Mode_3/n135 [3]), 
           .CE(ceg_net675), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[4]~FF  (.D(\Inst_Spi_Mode_3/n135 [4]), 
           .CE(ceg_net676), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[5]~FF  (.D(\Inst_Spi_Mode_3/n135 [5]), 
           .CE(ceg_net677), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[6]~FF  (.D(\Inst_Spi_Mode_3/n135 [6]), 
           .CE(ceg_net678), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/data_buffer[7]~FF  (.D(\Inst_Spi_Mode_3/n135 [7]), 
           .CE(ceg_net679), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/data_buffer [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/data_buffer[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[1]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [1]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[1]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[2]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [2]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[2]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[3]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [3]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[3]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[4]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [4]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[4]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[5]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [5]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[5]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[6]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [6]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[6]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_to_mpu_data[7]~FF  (.D(\Inst_Spi_Mode_3/data_buffer [7]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(1'b0), .Q(spi_to_mpu_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \spi_to_mpu_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .D_POLARITY = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC = 1'b1;
    defparam \spi_to_mpu_data[7]~FF .SR_VALUE = 1'b0;
    defparam \spi_to_mpu_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[1]~FF  (.D(\Inst_Spi_Mode_3/n129 [1]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[2]~FF  (.D(\Inst_Spi_Mode_3/n129 [2]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bitcounter[3]~FF  (.D(\Inst_Spi_Mode_3/n129 [3]), 
           .CE(ceg_net291), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[1]~FF  (.D(\Inst_Spi_Mode_3/n124 [1]), 
           .CE(ceg_net671), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/bit_idx[2]~FF  (.D(\Inst_Spi_Mode_3/n124 [2]), 
           .CE(ceg_net671), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_VALUE = 1'b1;
    defparam \Inst_Spi_Mode_3/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_Spi_Mode_3/state[1]~FF  (.D(\Inst_Spi_Mode_3/n144 [1]), .CE(ceg_net822), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_Spi_Mode_3/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(120)
    defparam \Inst_Spi_Mode_3/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_Spi_Mode_3/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[2]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[8]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [8]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [9]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[3]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[4]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[6]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [6]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[5]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [5]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[4]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [4]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[1]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[3]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [3]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[0]~FF  (.D(\u_FIFO/u_efx_fifo_top/waddr [0]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .D_POLARITY = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[0]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[5]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[2]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [2]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/waddr[1]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [1]), 
           .CE(\u_FIFO/u_efx_fifo_top/wr_en_int ), .CLK(\clk_i~O ), .SR(fifo_rst_busys), 
           .Q(\u_FIFO/u_efx_fifo_top/waddr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1250)
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/waddr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[6]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[7]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/raddr[8]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/raddr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/raddr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF  (.D(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(fifo_rst_busys), .Q(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1272)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .CE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .SR_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[5]~FF  (.D(\Inst_pwm_servo_0/n63 [5]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[4]~FF  (.D(\Inst_pwm_servo_0/n63 [4]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[3]~FF  (.D(\Inst_pwm_servo_0/n63 [3]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[0]~FF  (.D(\Inst_pwm_servo_0/n63 [0]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[2]~FF  (.D(\Inst_pwm_servo_0/n63 [2]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[1]~FF  (.D(\Inst_pwm_servo_0/n63 [1]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pwm_out_1~FF  (.D(\Inst_pwm_servo_0/n86 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_1~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_1~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_1~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_1~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[6]~FF  (.D(\Inst_pwm_servo_0/n63 [6]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[7]~FF  (.D(\Inst_pwm_servo_0/n63 [7]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[8]~FF  (.D(\Inst_pwm_servo_0/n63 [8]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[9]~FF  (.D(\Inst_pwm_servo_0/n63 [9]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[10]~FF  (.D(\Inst_pwm_servo_0/n63 [10]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[11]~FF  (.D(\Inst_pwm_servo_0/n63 [11]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[12]~FF  (.D(\Inst_pwm_servo_0/n63 [12]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[13]~FF  (.D(\Inst_pwm_servo_0/n63 [13]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[14]~FF  (.D(\Inst_pwm_servo_0/n63 [14]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[15]~FF  (.D(\Inst_pwm_servo_0/n63 [15]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[16]~FF  (.D(\Inst_pwm_servo_0/n63 [16]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[17]~FF  (.D(\Inst_pwm_servo_0/n63 [17]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[18]~FF  (.D(\Inst_pwm_servo_0/n63 [18]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_pwm_servo_0/counter[19]~FF  (.D(\Inst_pwm_servo_0/n63 [19]), 
           .CE(1'b1), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_pwm_servo_0/counter [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \Inst_pwm_servo_0/counter[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .CE_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_pwm_servo_0/counter[19]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \Inst_uart_tx/bitcounter[0]~FF  (.D(\Inst_uart_tx/n129 [0]), .CE(ceg_net322), 
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
    EFX_FF \Inst_uart_tx/state[0]~FF  (.D(\Inst_uart_tx/state [0]), .CE(ceg_net823), 
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
    EFX_FF \Inst_uart_tx/bit_idx[0]~FF  (.D(\Inst_uart_tx/n136 [0]), .CE(ceg_net685), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_busy_sig~FF  (.D(\Inst_uart_tx/n118 ), .CE(ceg_net682), .CLK(\clk_i~O ), 
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
    EFX_FF \tx~FF  (.D(\Inst_uart_tx/n119 ), .CE(ceg_net683), .CLK(\clk_i~O ), 
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
    EFX_FF \Inst_uart_tx/bitcounter[1]~FF  (.D(\Inst_uart_tx/n129 [1]), .CE(ceg_net322), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[2]~FF  (.D(\Inst_uart_tx/n129 [2]), .CE(ceg_net322), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[3]~FF  (.D(\Inst_uart_tx/n129 [3]), .CE(ceg_net322), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[4]~FF  (.D(\Inst_uart_tx/n129 [4]), .CE(ceg_net322), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bitcounter[5]~FF  (.D(\Inst_uart_tx/n129 [5]), .CE(ceg_net322), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bitcounter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bitcounter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bitcounter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[1]~FF  (.D(\Inst_uart_tx/n136 [1]), .CE(ceg_net685), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/bit_idx[2]~FF  (.D(\Inst_uart_tx/n136 [2]), .CE(ceg_net685), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_uart_tx/bit_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(115)
    defparam \Inst_uart_tx/bit_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_uart_tx/bit_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_uart_tx/state[1]~FF  (.D(\Inst_uart_tx/n115 [1]), .CE(ceg_net823), 
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
    EFX_FF \tx_data_sig[1]~FF  (.D(rdata[1]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[2]~FF  (.D(rdata[2]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[3]~FF  (.D(rdata[3]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[3]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[4]~FF  (.D(rdata[4]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[4]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[5]~FF  (.D(rdata[5]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[5]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[6]~FF  (.D(rdata[6]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[6]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_data_sig[7]~FF  (.D(rdata[7]), .CE(ceg_net332), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(tx_data_sig[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \tx_data_sig[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_POLARITY = 1'b0;
    defparam \tx_data_sig[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_data_sig[7]~FF .SR_SYNC = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_data_sig[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_read_state[1]~FF  (.D(n409[1]), .CE(ceg_net539), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(uart_read_state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(878)
    defparam \uart_read_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_read_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_read_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \uart_read_state[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_read_state[1]~FF .SR_SYNC = 1'b0;
    defparam \uart_read_state[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_read_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i2  (.I0(accel_y[1]), .I1(accel_y[0]), 
            .CI(1'b0), .O(\Inst_MPU6500_Controller/n643 [1]), .CO(\Inst_MPU6500_Controller/add_257/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i1  (.I0(\Inst_MPU6500_Controller/raw_data[1] [0]), 
            .I1(accel_x[0]), .CI(1'b0), .CO(\Inst_MPU6500_Controller/add_82/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i2  (.I0(accel_z[1]), .I1(accel_z[0]), 
            .CI(1'b0), .O(\Inst_MPU6500_Controller/n717 [1]), .CO(\Inst_MPU6500_Controller/add_258/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i1  (.I0(\Inst_MPU6500_Controller/raw_data[3] [0]), 
            .I1(accel_y[0]), .CI(1'b0), .CO(\Inst_MPU6500_Controller/add_87/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i2  (.I0(gyro_x[1]), .I1(gyro_x[0]), 
            .CI(1'b0), .O(\Inst_MPU6500_Controller/n791 [1]), .CO(\Inst_MPU6500_Controller/add_259/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i1  (.I0(\Inst_MPU6500_Controller/raw_data[5] [0]), 
            .I1(accel_z[0]), .CI(1'b0), .CO(\Inst_MPU6500_Controller/add_92/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i2  (.I0(gyro_y[1]), .I1(gyro_y[0]), 
            .CI(1'b0), .O(\Inst_MPU6500_Controller/n865 [1]), .CO(\Inst_MPU6500_Controller/add_260/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i1  (.I0(\Inst_MPU6500_Controller/raw_data[9] [0]), 
            .I1(gyro_x[0]), .CI(1'b0), .CO(\Inst_MPU6500_Controller/add_97/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i2  (.I0(gyro_z[1]), .I1(gyro_z[0]), 
            .CI(1'b0), .O(\Inst_MPU6500_Controller/n939 [1]), .CO(\Inst_MPU6500_Controller/add_261/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i1  (.I0(\Inst_MPU6500_Controller/raw_data[11] [0]), 
            .I1(gyro_y[0]), .CI(1'b0), .CO(\Inst_MPU6500_Controller/add_102/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i1  (.I0(\Inst_MPU6500_Controller/raw_data[13] [0]), 
            .I1(gyro_z[0]), .CI(1'b0), .CO(\Inst_MPU6500_Controller/add_107/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i1 .I1_POLARITY = 1'b1;
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
    EFX_ADD \Inst_pwm_servo_0/add_24/i19  (.I0(\Inst_pwm_servo_0/counter [19]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n36 ), .O(\Inst_pwm_servo_0/n42 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i18  (.I0(\Inst_pwm_servo_0/counter [18]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n34 ), .O(\Inst_pwm_servo_0/n42 [18]), 
            .CO(\Inst_pwm_servo_0/add_24/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i17  (.I0(\Inst_pwm_servo_0/counter [17]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n32 ), .O(\Inst_pwm_servo_0/n42 [17]), 
            .CO(\Inst_pwm_servo_0/add_24/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i16  (.I0(\Inst_pwm_servo_0/counter [16]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n30 ), .O(\Inst_pwm_servo_0/n42 [16]), 
            .CO(\Inst_pwm_servo_0/add_24/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i15  (.I0(\Inst_pwm_servo_0/counter [15]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n28 ), .O(\Inst_pwm_servo_0/n42 [15]), 
            .CO(\Inst_pwm_servo_0/add_24/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i14  (.I0(\Inst_pwm_servo_0/counter [14]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n26 ), .O(\Inst_pwm_servo_0/n42 [14]), 
            .CO(\Inst_pwm_servo_0/add_24/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i13  (.I0(\Inst_pwm_servo_0/counter [13]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n24 ), .O(\Inst_pwm_servo_0/n42 [13]), 
            .CO(\Inst_pwm_servo_0/add_24/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i12  (.I0(\Inst_pwm_servo_0/counter [12]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n22 ), .O(\Inst_pwm_servo_0/n42 [12]), 
            .CO(\Inst_pwm_servo_0/add_24/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i11  (.I0(\Inst_pwm_servo_0/counter [11]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n20 ), .O(\Inst_pwm_servo_0/n42 [11]), 
            .CO(\Inst_pwm_servo_0/add_24/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i10  (.I0(\Inst_pwm_servo_0/counter [10]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n18 ), .O(\Inst_pwm_servo_0/n42 [10]), 
            .CO(\Inst_pwm_servo_0/add_24/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i9  (.I0(\Inst_pwm_servo_0/counter [9]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n16 ), .O(\Inst_pwm_servo_0/n42 [9]), 
            .CO(\Inst_pwm_servo_0/add_24/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i8  (.I0(\Inst_pwm_servo_0/counter [8]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n14 ), .O(\Inst_pwm_servo_0/n42 [8]), 
            .CO(\Inst_pwm_servo_0/add_24/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i7  (.I0(\Inst_pwm_servo_0/counter [7]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n12 ), .O(\Inst_pwm_servo_0/n42 [7]), 
            .CO(\Inst_pwm_servo_0/add_24/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i6  (.I0(\Inst_pwm_servo_0/counter [6]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n10 ), .O(\Inst_pwm_servo_0/n42 [6]), 
            .CO(\Inst_pwm_servo_0/add_24/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i5  (.I0(\Inst_pwm_servo_0/counter [5]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n8 ), .O(\Inst_pwm_servo_0/n42 [5]), 
            .CO(\Inst_pwm_servo_0/add_24/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i4  (.I0(\Inst_pwm_servo_0/counter [4]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n6 ), .O(\Inst_pwm_servo_0/n42 [4]), 
            .CO(\Inst_pwm_servo_0/add_24/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i3  (.I0(\Inst_pwm_servo_0/counter [3]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n4 ), .O(\Inst_pwm_servo_0/n42 [3]), 
            .CO(\Inst_pwm_servo_0/add_24/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i2  (.I0(\Inst_pwm_servo_0/counter [2]), 
            .I1(1'b0), .CI(\Inst_pwm_servo_0/add_24/n2 ), .O(\Inst_pwm_servo_0/n42 [2]), 
            .CO(\Inst_pwm_servo_0/add_24/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i10  (.I0(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9] ), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n18 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i10 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i9  (.I0(\u_FIFO/u_efx_fifo_top/raddr [8]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n16 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [8]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i9 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i8  (.I0(\u_FIFO/u_efx_fifo_top/raddr [7]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n14 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [7]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i8 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i7  (.I0(\u_FIFO/u_efx_fifo_top/raddr [6]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n12 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [6]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i7 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i6  (.I0(\u_FIFO/u_efx_fifo_top/raddr [5]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n10 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [5]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i6 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i5  (.I0(\u_FIFO/u_efx_fifo_top/raddr [4]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n8 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [4]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i5 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i4  (.I0(\u_FIFO/u_efx_fifo_top/raddr [3]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n6 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [3]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i4 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i3  (.I0(\u_FIFO/u_efx_fifo_top/raddr [2]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n4 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [2]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i3 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i2  (.I0(\u_FIFO/u_efx_fifo_top/raddr [1]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n2 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [1]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i2 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i9  (.I0(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9] ), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n16 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i9 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i8  (.I0(\u_FIFO/u_efx_fifo_top/waddr [8]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n14 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [8]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i8 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i7  (.I0(\u_FIFO/u_efx_fifo_top/waddr [7]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n12 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [7]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i7 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i6  (.I0(\u_FIFO/u_efx_fifo_top/waddr [6]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n10 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [6]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i6 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i5  (.I0(\u_FIFO/u_efx_fifo_top/waddr [5]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n8 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [5]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i5 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i4  (.I0(\u_FIFO/u_efx_fifo_top/waddr [4]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n6 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [4]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i4 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i3  (.I0(\u_FIFO/u_efx_fifo_top/waddr [3]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n4 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [3]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i3 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i32  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n62 ), 
            .O(\Inst_MPU6500_Controller/n962 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i32 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i31  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n60 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i31 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i30  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n58 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i30 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i29  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n56 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i29 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i28  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n54 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i28 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i27  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n52 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i27 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i26  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n50 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i26 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i25  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n48 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i25 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i24  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n46 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i24 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i23  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n44 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i23 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i22  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n42 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i22 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i21  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n40 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i21 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i20  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n38 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i20 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i19  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n36 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i18  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(gyro_z[15]), .CI(\Inst_MPU6500_Controller/add_107/n34 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i17  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(\Inst_MPU6500_Controller/n939 [16]), .CI(\Inst_MPU6500_Controller/add_107/n32 ), 
            .O(\Inst_MPU6500_Controller/n962 [16]), .CO(\Inst_MPU6500_Controller/add_107/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i16  (.I0(\Inst_MPU6500_Controller/raw_data[12] [7]), 
            .I1(\Inst_MPU6500_Controller/n939 [15]), .CI(\Inst_MPU6500_Controller/add_107/n30 ), 
            .O(\Inst_MPU6500_Controller/n962 [15]), .CO(\Inst_MPU6500_Controller/add_107/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i15  (.I0(\Inst_MPU6500_Controller/raw_data[12] [6]), 
            .I1(\Inst_MPU6500_Controller/n939 [14]), .CI(\Inst_MPU6500_Controller/add_107/n28 ), 
            .O(\Inst_MPU6500_Controller/n962 [14]), .CO(\Inst_MPU6500_Controller/add_107/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i14  (.I0(\Inst_MPU6500_Controller/raw_data[12] [5]), 
            .I1(\Inst_MPU6500_Controller/n939 [13]), .CI(\Inst_MPU6500_Controller/add_107/n26 ), 
            .O(\Inst_MPU6500_Controller/n962 [13]), .CO(\Inst_MPU6500_Controller/add_107/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i13  (.I0(\Inst_MPU6500_Controller/raw_data[12] [4]), 
            .I1(\Inst_MPU6500_Controller/n939 [12]), .CI(\Inst_MPU6500_Controller/add_107/n24 ), 
            .O(\Inst_MPU6500_Controller/n962 [12]), .CO(\Inst_MPU6500_Controller/add_107/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i12  (.I0(\Inst_MPU6500_Controller/raw_data[12] [3]), 
            .I1(\Inst_MPU6500_Controller/n939 [11]), .CI(\Inst_MPU6500_Controller/add_107/n22 ), 
            .O(\Inst_MPU6500_Controller/n962 [11]), .CO(\Inst_MPU6500_Controller/add_107/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i11  (.I0(\Inst_MPU6500_Controller/raw_data[12] [2]), 
            .I1(\Inst_MPU6500_Controller/n939 [10]), .CI(\Inst_MPU6500_Controller/add_107/n20 ), 
            .O(\Inst_MPU6500_Controller/n962 [10]), .CO(\Inst_MPU6500_Controller/add_107/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i10  (.I0(\Inst_MPU6500_Controller/raw_data[12] [1]), 
            .I1(\Inst_MPU6500_Controller/n939 [9]), .CI(\Inst_MPU6500_Controller/add_107/n18 ), 
            .O(\Inst_MPU6500_Controller/n962 [9]), .CO(\Inst_MPU6500_Controller/add_107/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i9  (.I0(\Inst_MPU6500_Controller/raw_data[12] [0]), 
            .I1(\Inst_MPU6500_Controller/n939 [8]), .CI(\Inst_MPU6500_Controller/add_107/n16 ), 
            .O(\Inst_MPU6500_Controller/n962 [8]), .CO(\Inst_MPU6500_Controller/add_107/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i8  (.I0(\Inst_MPU6500_Controller/raw_data[13] [7]), 
            .I1(\Inst_MPU6500_Controller/n939 [7]), .CI(\Inst_MPU6500_Controller/add_107/n14 ), 
            .O(\Inst_MPU6500_Controller/n962 [7]), .CO(\Inst_MPU6500_Controller/add_107/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i7  (.I0(\Inst_MPU6500_Controller/raw_data[13] [6]), 
            .I1(\Inst_MPU6500_Controller/n939 [6]), .CI(\Inst_MPU6500_Controller/add_107/n12 ), 
            .O(\Inst_MPU6500_Controller/n962 [6]), .CO(\Inst_MPU6500_Controller/add_107/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i6  (.I0(\Inst_MPU6500_Controller/raw_data[13] [5]), 
            .I1(\Inst_MPU6500_Controller/n939 [5]), .CI(\Inst_MPU6500_Controller/add_107/n10 ), 
            .O(\Inst_MPU6500_Controller/n962 [5]), .CO(\Inst_MPU6500_Controller/add_107/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i5  (.I0(\Inst_MPU6500_Controller/raw_data[13] [4]), 
            .I1(\Inst_MPU6500_Controller/n939 [4]), .CI(\Inst_MPU6500_Controller/add_107/n8 ), 
            .O(\Inst_MPU6500_Controller/n962 [4]), .CO(\Inst_MPU6500_Controller/add_107/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i4  (.I0(\Inst_MPU6500_Controller/raw_data[13] [3]), 
            .I1(\Inst_MPU6500_Controller/n939 [3]), .CI(\Inst_MPU6500_Controller/add_107/n6 ), 
            .O(\Inst_MPU6500_Controller/n962 [3]), .CO(\Inst_MPU6500_Controller/add_107/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i3  (.I0(\Inst_MPU6500_Controller/raw_data[13] [2]), 
            .I1(\Inst_MPU6500_Controller/n939 [2]), .CI(\Inst_MPU6500_Controller/add_107/n4 ), 
            .O(\Inst_MPU6500_Controller/n962 [2]), .CO(\Inst_MPU6500_Controller/add_107/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_107/i2  (.I0(\Inst_MPU6500_Controller/raw_data[13] [1]), 
            .I1(\Inst_MPU6500_Controller/n939 [1]), .CI(\Inst_MPU6500_Controller/add_107/n2 ), 
            .CO(\Inst_MPU6500_Controller/add_107/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(250)
    defparam \Inst_MPU6500_Controller/add_107/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_107/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i32  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n62 ), 
            .O(\Inst_MPU6500_Controller/n888 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i32 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i31  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n60 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i31 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i30  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n58 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i30 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i29  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n56 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i29 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i28  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n54 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i28 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i27  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n52 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i27 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i26  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n50 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i26 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i25  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n48 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i25 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i24  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n46 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i24 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i23  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n44 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i23 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i22  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n42 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i22 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i21  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n40 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i21 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i20  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n38 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i20 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i19  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n36 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i18  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(gyro_y[15]), .CI(\Inst_MPU6500_Controller/add_102/n34 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i17  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(\Inst_MPU6500_Controller/n865 [16]), .CI(\Inst_MPU6500_Controller/add_102/n32 ), 
            .O(\Inst_MPU6500_Controller/n888 [16]), .CO(\Inst_MPU6500_Controller/add_102/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i16  (.I0(\Inst_MPU6500_Controller/raw_data[10] [7]), 
            .I1(\Inst_MPU6500_Controller/n865 [15]), .CI(\Inst_MPU6500_Controller/add_102/n30 ), 
            .O(\Inst_MPU6500_Controller/n888 [15]), .CO(\Inst_MPU6500_Controller/add_102/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i15  (.I0(\Inst_MPU6500_Controller/raw_data[10] [6]), 
            .I1(\Inst_MPU6500_Controller/n865 [14]), .CI(\Inst_MPU6500_Controller/add_102/n28 ), 
            .O(\Inst_MPU6500_Controller/n888 [14]), .CO(\Inst_MPU6500_Controller/add_102/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i14  (.I0(\Inst_MPU6500_Controller/raw_data[10] [5]), 
            .I1(\Inst_MPU6500_Controller/n865 [13]), .CI(\Inst_MPU6500_Controller/add_102/n26 ), 
            .O(\Inst_MPU6500_Controller/n888 [13]), .CO(\Inst_MPU6500_Controller/add_102/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i13  (.I0(\Inst_MPU6500_Controller/raw_data[10] [4]), 
            .I1(\Inst_MPU6500_Controller/n865 [12]), .CI(\Inst_MPU6500_Controller/add_102/n24 ), 
            .O(\Inst_MPU6500_Controller/n888 [12]), .CO(\Inst_MPU6500_Controller/add_102/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i12  (.I0(\Inst_MPU6500_Controller/raw_data[10] [3]), 
            .I1(\Inst_MPU6500_Controller/n865 [11]), .CI(\Inst_MPU6500_Controller/add_102/n22 ), 
            .O(\Inst_MPU6500_Controller/n888 [11]), .CO(\Inst_MPU6500_Controller/add_102/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i11  (.I0(\Inst_MPU6500_Controller/raw_data[10] [2]), 
            .I1(\Inst_MPU6500_Controller/n865 [10]), .CI(\Inst_MPU6500_Controller/add_102/n20 ), 
            .O(\Inst_MPU6500_Controller/n888 [10]), .CO(\Inst_MPU6500_Controller/add_102/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i10  (.I0(\Inst_MPU6500_Controller/raw_data[10] [1]), 
            .I1(\Inst_MPU6500_Controller/n865 [9]), .CI(\Inst_MPU6500_Controller/add_102/n18 ), 
            .O(\Inst_MPU6500_Controller/n888 [9]), .CO(\Inst_MPU6500_Controller/add_102/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i9  (.I0(\Inst_MPU6500_Controller/raw_data[10] [0]), 
            .I1(\Inst_MPU6500_Controller/n865 [8]), .CI(\Inst_MPU6500_Controller/add_102/n16 ), 
            .O(\Inst_MPU6500_Controller/n888 [8]), .CO(\Inst_MPU6500_Controller/add_102/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i8  (.I0(\Inst_MPU6500_Controller/raw_data[11] [7]), 
            .I1(\Inst_MPU6500_Controller/n865 [7]), .CI(\Inst_MPU6500_Controller/add_102/n14 ), 
            .O(\Inst_MPU6500_Controller/n888 [7]), .CO(\Inst_MPU6500_Controller/add_102/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i7  (.I0(\Inst_MPU6500_Controller/raw_data[11] [6]), 
            .I1(\Inst_MPU6500_Controller/n865 [6]), .CI(\Inst_MPU6500_Controller/add_102/n12 ), 
            .O(\Inst_MPU6500_Controller/n888 [6]), .CO(\Inst_MPU6500_Controller/add_102/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i6  (.I0(\Inst_MPU6500_Controller/raw_data[11] [5]), 
            .I1(\Inst_MPU6500_Controller/n865 [5]), .CI(\Inst_MPU6500_Controller/add_102/n10 ), 
            .O(\Inst_MPU6500_Controller/n888 [5]), .CO(\Inst_MPU6500_Controller/add_102/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i5  (.I0(\Inst_MPU6500_Controller/raw_data[11] [4]), 
            .I1(\Inst_MPU6500_Controller/n865 [4]), .CI(\Inst_MPU6500_Controller/add_102/n8 ), 
            .O(\Inst_MPU6500_Controller/n888 [4]), .CO(\Inst_MPU6500_Controller/add_102/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i4  (.I0(\Inst_MPU6500_Controller/raw_data[11] [3]), 
            .I1(\Inst_MPU6500_Controller/n865 [3]), .CI(\Inst_MPU6500_Controller/add_102/n6 ), 
            .O(\Inst_MPU6500_Controller/n888 [3]), .CO(\Inst_MPU6500_Controller/add_102/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i3  (.I0(\Inst_MPU6500_Controller/raw_data[11] [2]), 
            .I1(\Inst_MPU6500_Controller/n865 [2]), .CI(\Inst_MPU6500_Controller/add_102/n4 ), 
            .O(\Inst_MPU6500_Controller/n888 [2]), .CO(\Inst_MPU6500_Controller/add_102/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_102/i2  (.I0(\Inst_MPU6500_Controller/raw_data[11] [1]), 
            .I1(\Inst_MPU6500_Controller/n865 [1]), .CI(\Inst_MPU6500_Controller/add_102/n2 ), 
            .CO(\Inst_MPU6500_Controller/add_102/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(246)
    defparam \Inst_MPU6500_Controller/add_102/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_102/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i16  (.I0(gyro_z[15]), .I1(gyro_z[14]), 
            .CI(\Inst_MPU6500_Controller/add_261/n30 ), .O(\Inst_MPU6500_Controller/n939 [15]), 
            .CO(n1821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i15  (.I0(gyro_z[14]), .I1(gyro_z[13]), 
            .CI(\Inst_MPU6500_Controller/add_261/n28 ), .O(\Inst_MPU6500_Controller/n939 [14]), 
            .CO(\Inst_MPU6500_Controller/add_261/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i14  (.I0(gyro_z[13]), .I1(gyro_z[12]), 
            .CI(\Inst_MPU6500_Controller/add_261/n26 ), .O(\Inst_MPU6500_Controller/n939 [13]), 
            .CO(\Inst_MPU6500_Controller/add_261/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i13  (.I0(gyro_z[12]), .I1(gyro_z[11]), 
            .CI(\Inst_MPU6500_Controller/add_261/n24 ), .O(\Inst_MPU6500_Controller/n939 [12]), 
            .CO(\Inst_MPU6500_Controller/add_261/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i12  (.I0(gyro_z[11]), .I1(gyro_z[10]), 
            .CI(\Inst_MPU6500_Controller/add_261/n22 ), .O(\Inst_MPU6500_Controller/n939 [11]), 
            .CO(\Inst_MPU6500_Controller/add_261/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i11  (.I0(gyro_z[10]), .I1(gyro_z[9]), 
            .CI(\Inst_MPU6500_Controller/add_261/n20 ), .O(\Inst_MPU6500_Controller/n939 [10]), 
            .CO(\Inst_MPU6500_Controller/add_261/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i10  (.I0(gyro_z[9]), .I1(gyro_z[8]), 
            .CI(\Inst_MPU6500_Controller/add_261/n18 ), .O(\Inst_MPU6500_Controller/n939 [9]), 
            .CO(\Inst_MPU6500_Controller/add_261/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i9  (.I0(gyro_z[8]), .I1(gyro_z[7]), 
            .CI(\Inst_MPU6500_Controller/add_261/n16 ), .O(\Inst_MPU6500_Controller/n939 [8]), 
            .CO(\Inst_MPU6500_Controller/add_261/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i8  (.I0(gyro_z[7]), .I1(gyro_z[6]), 
            .CI(\Inst_MPU6500_Controller/add_261/n14 ), .O(\Inst_MPU6500_Controller/n939 [7]), 
            .CO(\Inst_MPU6500_Controller/add_261/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i7  (.I0(gyro_z[6]), .I1(gyro_z[5]), 
            .CI(\Inst_MPU6500_Controller/add_261/n12 ), .O(\Inst_MPU6500_Controller/n939 [6]), 
            .CO(\Inst_MPU6500_Controller/add_261/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i6  (.I0(gyro_z[5]), .I1(gyro_z[4]), 
            .CI(\Inst_MPU6500_Controller/add_261/n10 ), .O(\Inst_MPU6500_Controller/n939 [5]), 
            .CO(\Inst_MPU6500_Controller/add_261/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i5  (.I0(gyro_z[4]), .I1(gyro_z[3]), 
            .CI(\Inst_MPU6500_Controller/add_261/n8 ), .O(\Inst_MPU6500_Controller/n939 [4]), 
            .CO(\Inst_MPU6500_Controller/add_261/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i4  (.I0(gyro_z[3]), .I1(gyro_z[2]), 
            .CI(\Inst_MPU6500_Controller/add_261/n6 ), .O(\Inst_MPU6500_Controller/n939 [3]), 
            .CO(\Inst_MPU6500_Controller/add_261/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i3  (.I0(gyro_z[2]), .I1(gyro_z[1]), 
            .CI(\Inst_MPU6500_Controller/add_261/n4 ), .O(\Inst_MPU6500_Controller/n939 [2]), 
            .CO(\Inst_MPU6500_Controller/add_261/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i32  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n62 ), 
            .O(\Inst_MPU6500_Controller/n814 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i32 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i31  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n60 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i31 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i30  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n58 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i30 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i29  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n56 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i29 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i28  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n54 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i28 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i27  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n52 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i27 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i26  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n50 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i26 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i25  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n48 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i25 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i24  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n46 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i24 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i23  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n44 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i23 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i22  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n42 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i22 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i21  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n40 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i21 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i20  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n38 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i20 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i19  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n36 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i18  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(gyro_x[15]), .CI(\Inst_MPU6500_Controller/add_97/n34 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i17  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(\Inst_MPU6500_Controller/n791 [16]), .CI(\Inst_MPU6500_Controller/add_97/n32 ), 
            .O(\Inst_MPU6500_Controller/n814 [16]), .CO(\Inst_MPU6500_Controller/add_97/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i16  (.I0(\Inst_MPU6500_Controller/raw_data[8] [7]), 
            .I1(\Inst_MPU6500_Controller/n791 [15]), .CI(\Inst_MPU6500_Controller/add_97/n30 ), 
            .O(\Inst_MPU6500_Controller/n814 [15]), .CO(\Inst_MPU6500_Controller/add_97/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i15  (.I0(\Inst_MPU6500_Controller/raw_data[8] [6]), 
            .I1(\Inst_MPU6500_Controller/n791 [14]), .CI(\Inst_MPU6500_Controller/add_97/n28 ), 
            .O(\Inst_MPU6500_Controller/n814 [14]), .CO(\Inst_MPU6500_Controller/add_97/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i14  (.I0(\Inst_MPU6500_Controller/raw_data[8] [5]), 
            .I1(\Inst_MPU6500_Controller/n791 [13]), .CI(\Inst_MPU6500_Controller/add_97/n26 ), 
            .O(\Inst_MPU6500_Controller/n814 [13]), .CO(\Inst_MPU6500_Controller/add_97/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i13  (.I0(\Inst_MPU6500_Controller/raw_data[8] [4]), 
            .I1(\Inst_MPU6500_Controller/n791 [12]), .CI(\Inst_MPU6500_Controller/add_97/n24 ), 
            .O(\Inst_MPU6500_Controller/n814 [12]), .CO(\Inst_MPU6500_Controller/add_97/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i12  (.I0(\Inst_MPU6500_Controller/raw_data[8] [3]), 
            .I1(\Inst_MPU6500_Controller/n791 [11]), .CI(\Inst_MPU6500_Controller/add_97/n22 ), 
            .O(\Inst_MPU6500_Controller/n814 [11]), .CO(\Inst_MPU6500_Controller/add_97/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i11  (.I0(\Inst_MPU6500_Controller/raw_data[8] [2]), 
            .I1(\Inst_MPU6500_Controller/n791 [10]), .CI(\Inst_MPU6500_Controller/add_97/n20 ), 
            .O(\Inst_MPU6500_Controller/n814 [10]), .CO(\Inst_MPU6500_Controller/add_97/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i10  (.I0(\Inst_MPU6500_Controller/raw_data[8] [1]), 
            .I1(\Inst_MPU6500_Controller/n791 [9]), .CI(\Inst_MPU6500_Controller/add_97/n18 ), 
            .O(\Inst_MPU6500_Controller/n814 [9]), .CO(\Inst_MPU6500_Controller/add_97/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i9  (.I0(\Inst_MPU6500_Controller/raw_data[8] [0]), 
            .I1(\Inst_MPU6500_Controller/n791 [8]), .CI(\Inst_MPU6500_Controller/add_97/n16 ), 
            .O(\Inst_MPU6500_Controller/n814 [8]), .CO(\Inst_MPU6500_Controller/add_97/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i8  (.I0(\Inst_MPU6500_Controller/raw_data[9] [7]), 
            .I1(\Inst_MPU6500_Controller/n791 [7]), .CI(\Inst_MPU6500_Controller/add_97/n14 ), 
            .O(\Inst_MPU6500_Controller/n814 [7]), .CO(\Inst_MPU6500_Controller/add_97/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i7  (.I0(\Inst_MPU6500_Controller/raw_data[9] [6]), 
            .I1(\Inst_MPU6500_Controller/n791 [6]), .CI(\Inst_MPU6500_Controller/add_97/n12 ), 
            .O(\Inst_MPU6500_Controller/n814 [6]), .CO(\Inst_MPU6500_Controller/add_97/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i6  (.I0(\Inst_MPU6500_Controller/raw_data[9] [5]), 
            .I1(\Inst_MPU6500_Controller/n791 [5]), .CI(\Inst_MPU6500_Controller/add_97/n10 ), 
            .O(\Inst_MPU6500_Controller/n814 [5]), .CO(\Inst_MPU6500_Controller/add_97/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i5  (.I0(\Inst_MPU6500_Controller/raw_data[9] [4]), 
            .I1(\Inst_MPU6500_Controller/n791 [4]), .CI(\Inst_MPU6500_Controller/add_97/n8 ), 
            .O(\Inst_MPU6500_Controller/n814 [4]), .CO(\Inst_MPU6500_Controller/add_97/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i4  (.I0(\Inst_MPU6500_Controller/raw_data[9] [3]), 
            .I1(\Inst_MPU6500_Controller/n791 [3]), .CI(\Inst_MPU6500_Controller/add_97/n6 ), 
            .O(\Inst_MPU6500_Controller/n814 [3]), .CO(\Inst_MPU6500_Controller/add_97/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i3  (.I0(\Inst_MPU6500_Controller/raw_data[9] [2]), 
            .I1(\Inst_MPU6500_Controller/n791 [2]), .CI(\Inst_MPU6500_Controller/add_97/n4 ), 
            .O(\Inst_MPU6500_Controller/n814 [2]), .CO(\Inst_MPU6500_Controller/add_97/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_97/i2  (.I0(\Inst_MPU6500_Controller/raw_data[9] [1]), 
            .I1(\Inst_MPU6500_Controller/n791 [1]), .CI(\Inst_MPU6500_Controller/add_97/n2 ), 
            .CO(\Inst_MPU6500_Controller/add_97/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(242)
    defparam \Inst_MPU6500_Controller/add_97/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_97/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i16  (.I0(gyro_y[15]), .I1(gyro_y[14]), 
            .CI(\Inst_MPU6500_Controller/add_260/n30 ), .O(\Inst_MPU6500_Controller/n865 [15]), 
            .CO(n1822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i15  (.I0(gyro_y[14]), .I1(gyro_y[13]), 
            .CI(\Inst_MPU6500_Controller/add_260/n28 ), .O(\Inst_MPU6500_Controller/n865 [14]), 
            .CO(\Inst_MPU6500_Controller/add_260/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i14  (.I0(gyro_y[13]), .I1(gyro_y[12]), 
            .CI(\Inst_MPU6500_Controller/add_260/n26 ), .O(\Inst_MPU6500_Controller/n865 [13]), 
            .CO(\Inst_MPU6500_Controller/add_260/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i13  (.I0(gyro_y[12]), .I1(gyro_y[11]), 
            .CI(\Inst_MPU6500_Controller/add_260/n24 ), .O(\Inst_MPU6500_Controller/n865 [12]), 
            .CO(\Inst_MPU6500_Controller/add_260/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i12  (.I0(gyro_y[11]), .I1(gyro_y[10]), 
            .CI(\Inst_MPU6500_Controller/add_260/n22 ), .O(\Inst_MPU6500_Controller/n865 [11]), 
            .CO(\Inst_MPU6500_Controller/add_260/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i11  (.I0(gyro_y[10]), .I1(gyro_y[9]), 
            .CI(\Inst_MPU6500_Controller/add_260/n20 ), .O(\Inst_MPU6500_Controller/n865 [10]), 
            .CO(\Inst_MPU6500_Controller/add_260/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i10  (.I0(gyro_y[9]), .I1(gyro_y[8]), 
            .CI(\Inst_MPU6500_Controller/add_260/n18 ), .O(\Inst_MPU6500_Controller/n865 [9]), 
            .CO(\Inst_MPU6500_Controller/add_260/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i9  (.I0(gyro_y[8]), .I1(gyro_y[7]), 
            .CI(\Inst_MPU6500_Controller/add_260/n16 ), .O(\Inst_MPU6500_Controller/n865 [8]), 
            .CO(\Inst_MPU6500_Controller/add_260/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i8  (.I0(gyro_y[7]), .I1(gyro_y[6]), 
            .CI(\Inst_MPU6500_Controller/add_260/n14 ), .O(\Inst_MPU6500_Controller/n865 [7]), 
            .CO(\Inst_MPU6500_Controller/add_260/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i7  (.I0(gyro_y[6]), .I1(gyro_y[5]), 
            .CI(\Inst_MPU6500_Controller/add_260/n12 ), .O(\Inst_MPU6500_Controller/n865 [6]), 
            .CO(\Inst_MPU6500_Controller/add_260/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i6  (.I0(gyro_y[5]), .I1(gyro_y[4]), 
            .CI(\Inst_MPU6500_Controller/add_260/n10 ), .O(\Inst_MPU6500_Controller/n865 [5]), 
            .CO(\Inst_MPU6500_Controller/add_260/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i5  (.I0(gyro_y[4]), .I1(gyro_y[3]), 
            .CI(\Inst_MPU6500_Controller/add_260/n8 ), .O(\Inst_MPU6500_Controller/n865 [4]), 
            .CO(\Inst_MPU6500_Controller/add_260/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i4  (.I0(gyro_y[3]), .I1(gyro_y[2]), 
            .CI(\Inst_MPU6500_Controller/add_260/n6 ), .O(\Inst_MPU6500_Controller/n865 [3]), 
            .CO(\Inst_MPU6500_Controller/add_260/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i3  (.I0(gyro_y[2]), .I1(gyro_y[1]), 
            .CI(\Inst_MPU6500_Controller/add_260/n4 ), .O(\Inst_MPU6500_Controller/n865 [2]), 
            .CO(\Inst_MPU6500_Controller/add_260/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i32  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n62 ), 
            .O(\Inst_MPU6500_Controller/n740 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i32 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i31  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n60 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i31 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i30  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n58 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i30 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i29  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n56 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i29 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i28  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n54 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i28 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i27  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n52 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i27 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i26  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n50 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i26 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i25  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n48 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i25 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i2  (.I0(accel_x[1]), .I1(accel_x[0]), 
            .CI(1'b0), .O(\Inst_MPU6500_Controller/n569 [1]), .CO(\Inst_MPU6500_Controller/add_256/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i24  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n46 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i24 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i23  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n44 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i23 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i22  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n42 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i22 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i21  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n40 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i21 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i20  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n38 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i20 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i19  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n36 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i18  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(accel_z[15]), .CI(\Inst_MPU6500_Controller/add_92/n34 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i17  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(\Inst_MPU6500_Controller/n717 [16]), .CI(\Inst_MPU6500_Controller/add_92/n32 ), 
            .O(\Inst_MPU6500_Controller/n740 [16]), .CO(\Inst_MPU6500_Controller/add_92/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i16  (.I0(\Inst_MPU6500_Controller/raw_data[4] [7]), 
            .I1(\Inst_MPU6500_Controller/n717 [15]), .CI(\Inst_MPU6500_Controller/add_92/n30 ), 
            .O(\Inst_MPU6500_Controller/n740 [15]), .CO(\Inst_MPU6500_Controller/add_92/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i15  (.I0(\Inst_MPU6500_Controller/raw_data[4] [6]), 
            .I1(\Inst_MPU6500_Controller/n717 [14]), .CI(\Inst_MPU6500_Controller/add_92/n28 ), 
            .O(\Inst_MPU6500_Controller/n740 [14]), .CO(\Inst_MPU6500_Controller/add_92/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i14  (.I0(\Inst_MPU6500_Controller/raw_data[4] [5]), 
            .I1(\Inst_MPU6500_Controller/n717 [13]), .CI(\Inst_MPU6500_Controller/add_92/n26 ), 
            .O(\Inst_MPU6500_Controller/n740 [13]), .CO(\Inst_MPU6500_Controller/add_92/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i13  (.I0(\Inst_MPU6500_Controller/raw_data[4] [4]), 
            .I1(\Inst_MPU6500_Controller/n717 [12]), .CI(\Inst_MPU6500_Controller/add_92/n24 ), 
            .O(\Inst_MPU6500_Controller/n740 [12]), .CO(\Inst_MPU6500_Controller/add_92/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i12  (.I0(\Inst_MPU6500_Controller/raw_data[4] [3]), 
            .I1(\Inst_MPU6500_Controller/n717 [11]), .CI(\Inst_MPU6500_Controller/add_92/n22 ), 
            .O(\Inst_MPU6500_Controller/n740 [11]), .CO(\Inst_MPU6500_Controller/add_92/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i11  (.I0(\Inst_MPU6500_Controller/raw_data[4] [2]), 
            .I1(\Inst_MPU6500_Controller/n717 [10]), .CI(\Inst_MPU6500_Controller/add_92/n20 ), 
            .O(\Inst_MPU6500_Controller/n740 [10]), .CO(\Inst_MPU6500_Controller/add_92/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i10  (.I0(\Inst_MPU6500_Controller/raw_data[4] [1]), 
            .I1(\Inst_MPU6500_Controller/n717 [9]), .CI(\Inst_MPU6500_Controller/add_92/n18 ), 
            .O(\Inst_MPU6500_Controller/n740 [9]), .CO(\Inst_MPU6500_Controller/add_92/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i9  (.I0(\Inst_MPU6500_Controller/raw_data[4] [0]), 
            .I1(\Inst_MPU6500_Controller/n717 [8]), .CI(\Inst_MPU6500_Controller/add_92/n16 ), 
            .O(\Inst_MPU6500_Controller/n740 [8]), .CO(\Inst_MPU6500_Controller/add_92/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i8  (.I0(\Inst_MPU6500_Controller/raw_data[5] [7]), 
            .I1(\Inst_MPU6500_Controller/n717 [7]), .CI(\Inst_MPU6500_Controller/add_92/n14 ), 
            .O(\Inst_MPU6500_Controller/n740 [7]), .CO(\Inst_MPU6500_Controller/add_92/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i7  (.I0(\Inst_MPU6500_Controller/raw_data[5] [6]), 
            .I1(\Inst_MPU6500_Controller/n717 [6]), .CI(\Inst_MPU6500_Controller/add_92/n12 ), 
            .O(\Inst_MPU6500_Controller/n740 [6]), .CO(\Inst_MPU6500_Controller/add_92/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i6  (.I0(\Inst_MPU6500_Controller/raw_data[5] [5]), 
            .I1(\Inst_MPU6500_Controller/n717 [5]), .CI(\Inst_MPU6500_Controller/add_92/n10 ), 
            .O(\Inst_MPU6500_Controller/n740 [5]), .CO(\Inst_MPU6500_Controller/add_92/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i5  (.I0(\Inst_MPU6500_Controller/raw_data[5] [4]), 
            .I1(\Inst_MPU6500_Controller/n717 [4]), .CI(\Inst_MPU6500_Controller/add_92/n8 ), 
            .O(\Inst_MPU6500_Controller/n740 [4]), .CO(\Inst_MPU6500_Controller/add_92/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i4  (.I0(\Inst_MPU6500_Controller/raw_data[5] [3]), 
            .I1(\Inst_MPU6500_Controller/n717 [3]), .CI(\Inst_MPU6500_Controller/add_92/n6 ), 
            .O(\Inst_MPU6500_Controller/n740 [3]), .CO(\Inst_MPU6500_Controller/add_92/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i3  (.I0(\Inst_MPU6500_Controller/raw_data[5] [2]), 
            .I1(\Inst_MPU6500_Controller/n717 [2]), .CI(\Inst_MPU6500_Controller/add_92/n4 ), 
            .O(\Inst_MPU6500_Controller/n740 [2]), .CO(\Inst_MPU6500_Controller/add_92/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_92/i2  (.I0(\Inst_MPU6500_Controller/raw_data[5] [1]), 
            .I1(\Inst_MPU6500_Controller/n717 [1]), .CI(\Inst_MPU6500_Controller/add_92/n2 ), 
            .CO(\Inst_MPU6500_Controller/add_92/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(238)
    defparam \Inst_MPU6500_Controller/add_92/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_92/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i16  (.I0(gyro_x[15]), .I1(gyro_x[14]), 
            .CI(\Inst_MPU6500_Controller/add_259/n30 ), .O(\Inst_MPU6500_Controller/n791 [15]), 
            .CO(n1823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i15  (.I0(gyro_x[14]), .I1(gyro_x[13]), 
            .CI(\Inst_MPU6500_Controller/add_259/n28 ), .O(\Inst_MPU6500_Controller/n791 [14]), 
            .CO(\Inst_MPU6500_Controller/add_259/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i14  (.I0(gyro_x[13]), .I1(gyro_x[12]), 
            .CI(\Inst_MPU6500_Controller/add_259/n26 ), .O(\Inst_MPU6500_Controller/n791 [13]), 
            .CO(\Inst_MPU6500_Controller/add_259/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i13  (.I0(gyro_x[12]), .I1(gyro_x[11]), 
            .CI(\Inst_MPU6500_Controller/add_259/n24 ), .O(\Inst_MPU6500_Controller/n791 [12]), 
            .CO(\Inst_MPU6500_Controller/add_259/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i12  (.I0(gyro_x[11]), .I1(gyro_x[10]), 
            .CI(\Inst_MPU6500_Controller/add_259/n22 ), .O(\Inst_MPU6500_Controller/n791 [11]), 
            .CO(\Inst_MPU6500_Controller/add_259/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i11  (.I0(gyro_x[10]), .I1(gyro_x[9]), 
            .CI(\Inst_MPU6500_Controller/add_259/n20 ), .O(\Inst_MPU6500_Controller/n791 [10]), 
            .CO(\Inst_MPU6500_Controller/add_259/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i10  (.I0(gyro_x[9]), .I1(gyro_x[8]), 
            .CI(\Inst_MPU6500_Controller/add_259/n18 ), .O(\Inst_MPU6500_Controller/n791 [9]), 
            .CO(\Inst_MPU6500_Controller/add_259/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i9  (.I0(gyro_x[8]), .I1(gyro_x[7]), 
            .CI(\Inst_MPU6500_Controller/add_259/n16 ), .O(\Inst_MPU6500_Controller/n791 [8]), 
            .CO(\Inst_MPU6500_Controller/add_259/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i8  (.I0(gyro_x[7]), .I1(gyro_x[6]), 
            .CI(\Inst_MPU6500_Controller/add_259/n14 ), .O(\Inst_MPU6500_Controller/n791 [7]), 
            .CO(\Inst_MPU6500_Controller/add_259/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i7  (.I0(gyro_x[6]), .I1(gyro_x[5]), 
            .CI(\Inst_MPU6500_Controller/add_259/n12 ), .O(\Inst_MPU6500_Controller/n791 [6]), 
            .CO(\Inst_MPU6500_Controller/add_259/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i6  (.I0(gyro_x[5]), .I1(gyro_x[4]), 
            .CI(\Inst_MPU6500_Controller/add_259/n10 ), .O(\Inst_MPU6500_Controller/n791 [5]), 
            .CO(\Inst_MPU6500_Controller/add_259/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i5  (.I0(gyro_x[4]), .I1(gyro_x[3]), 
            .CI(\Inst_MPU6500_Controller/add_259/n8 ), .O(\Inst_MPU6500_Controller/n791 [4]), 
            .CO(\Inst_MPU6500_Controller/add_259/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i4  (.I0(gyro_x[3]), .I1(gyro_x[2]), 
            .CI(\Inst_MPU6500_Controller/add_259/n6 ), .O(\Inst_MPU6500_Controller/n791 [3]), 
            .CO(\Inst_MPU6500_Controller/add_259/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i3  (.I0(gyro_x[2]), .I1(gyro_x[1]), 
            .CI(\Inst_MPU6500_Controller/add_259/n4 ), .O(\Inst_MPU6500_Controller/n791 [2]), 
            .CO(\Inst_MPU6500_Controller/add_259/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i32  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n62 ), 
            .O(\Inst_MPU6500_Controller/n666 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i32 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i31  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n60 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i31 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i3  (.I0(accel_x[2]), .I1(accel_x[1]), 
            .CI(\Inst_MPU6500_Controller/add_256/n4 ), .O(\Inst_MPU6500_Controller/n569 [2]), 
            .CO(\Inst_MPU6500_Controller/add_256/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i30  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n58 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i30 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i29  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n56 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i29 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i28  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n54 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i28 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i27  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n52 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i27 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i26  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n50 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i26 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i25  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n48 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i25 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i24  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n46 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i24 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i23  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n44 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i23 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i22  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n42 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i22 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i21  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n40 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i21 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i20  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n38 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i20 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i19  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n36 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i18  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(accel_y[15]), .CI(\Inst_MPU6500_Controller/add_87/n34 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i17  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(\Inst_MPU6500_Controller/n643 [16]), .CI(\Inst_MPU6500_Controller/add_87/n32 ), 
            .O(\Inst_MPU6500_Controller/n666 [16]), .CO(\Inst_MPU6500_Controller/add_87/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i16  (.I0(\Inst_MPU6500_Controller/raw_data[2] [7]), 
            .I1(\Inst_MPU6500_Controller/n643 [15]), .CI(\Inst_MPU6500_Controller/add_87/n30 ), 
            .O(\Inst_MPU6500_Controller/n666 [15]), .CO(\Inst_MPU6500_Controller/add_87/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i15  (.I0(\Inst_MPU6500_Controller/raw_data[2] [6]), 
            .I1(\Inst_MPU6500_Controller/n643 [14]), .CI(\Inst_MPU6500_Controller/add_87/n28 ), 
            .O(\Inst_MPU6500_Controller/n666 [14]), .CO(\Inst_MPU6500_Controller/add_87/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i14  (.I0(\Inst_MPU6500_Controller/raw_data[2] [5]), 
            .I1(\Inst_MPU6500_Controller/n643 [13]), .CI(\Inst_MPU6500_Controller/add_87/n26 ), 
            .O(\Inst_MPU6500_Controller/n666 [13]), .CO(\Inst_MPU6500_Controller/add_87/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i13  (.I0(\Inst_MPU6500_Controller/raw_data[2] [4]), 
            .I1(\Inst_MPU6500_Controller/n643 [12]), .CI(\Inst_MPU6500_Controller/add_87/n24 ), 
            .O(\Inst_MPU6500_Controller/n666 [12]), .CO(\Inst_MPU6500_Controller/add_87/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i12  (.I0(\Inst_MPU6500_Controller/raw_data[2] [3]), 
            .I1(\Inst_MPU6500_Controller/n643 [11]), .CI(\Inst_MPU6500_Controller/add_87/n22 ), 
            .O(\Inst_MPU6500_Controller/n666 [11]), .CO(\Inst_MPU6500_Controller/add_87/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i11  (.I0(\Inst_MPU6500_Controller/raw_data[2] [2]), 
            .I1(\Inst_MPU6500_Controller/n643 [10]), .CI(\Inst_MPU6500_Controller/add_87/n20 ), 
            .O(\Inst_MPU6500_Controller/n666 [10]), .CO(\Inst_MPU6500_Controller/add_87/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i10  (.I0(\Inst_MPU6500_Controller/raw_data[2] [1]), 
            .I1(\Inst_MPU6500_Controller/n643 [9]), .CI(\Inst_MPU6500_Controller/add_87/n18 ), 
            .O(\Inst_MPU6500_Controller/n666 [9]), .CO(\Inst_MPU6500_Controller/add_87/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i9  (.I0(\Inst_MPU6500_Controller/raw_data[2] [0]), 
            .I1(\Inst_MPU6500_Controller/n643 [8]), .CI(\Inst_MPU6500_Controller/add_87/n16 ), 
            .O(\Inst_MPU6500_Controller/n666 [8]), .CO(\Inst_MPU6500_Controller/add_87/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i8  (.I0(\Inst_MPU6500_Controller/raw_data[3] [7]), 
            .I1(\Inst_MPU6500_Controller/n643 [7]), .CI(\Inst_MPU6500_Controller/add_87/n14 ), 
            .O(\Inst_MPU6500_Controller/n666 [7]), .CO(\Inst_MPU6500_Controller/add_87/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i7  (.I0(\Inst_MPU6500_Controller/raw_data[3] [6]), 
            .I1(\Inst_MPU6500_Controller/n643 [6]), .CI(\Inst_MPU6500_Controller/add_87/n12 ), 
            .O(\Inst_MPU6500_Controller/n666 [6]), .CO(\Inst_MPU6500_Controller/add_87/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i6  (.I0(\Inst_MPU6500_Controller/raw_data[3] [5]), 
            .I1(\Inst_MPU6500_Controller/n643 [5]), .CI(\Inst_MPU6500_Controller/add_87/n10 ), 
            .O(\Inst_MPU6500_Controller/n666 [5]), .CO(\Inst_MPU6500_Controller/add_87/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i5  (.I0(\Inst_MPU6500_Controller/raw_data[3] [4]), 
            .I1(\Inst_MPU6500_Controller/n643 [4]), .CI(\Inst_MPU6500_Controller/add_87/n8 ), 
            .O(\Inst_MPU6500_Controller/n666 [4]), .CO(\Inst_MPU6500_Controller/add_87/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i4  (.I0(\Inst_MPU6500_Controller/raw_data[3] [3]), 
            .I1(\Inst_MPU6500_Controller/n643 [3]), .CI(\Inst_MPU6500_Controller/add_87/n6 ), 
            .O(\Inst_MPU6500_Controller/n666 [3]), .CO(\Inst_MPU6500_Controller/add_87/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i3  (.I0(\Inst_MPU6500_Controller/raw_data[3] [2]), 
            .I1(\Inst_MPU6500_Controller/n643 [2]), .CI(\Inst_MPU6500_Controller/add_87/n4 ), 
            .O(\Inst_MPU6500_Controller/n666 [2]), .CO(\Inst_MPU6500_Controller/add_87/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_87/i2  (.I0(\Inst_MPU6500_Controller/raw_data[3] [1]), 
            .I1(\Inst_MPU6500_Controller/n643 [1]), .CI(\Inst_MPU6500_Controller/add_87/n2 ), 
            .CO(\Inst_MPU6500_Controller/add_87/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(234)
    defparam \Inst_MPU6500_Controller/add_87/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_87/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i16  (.I0(accel_z[15]), .I1(accel_z[14]), 
            .CI(\Inst_MPU6500_Controller/add_258/n30 ), .O(\Inst_MPU6500_Controller/n717 [15]), 
            .CO(n1824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i15  (.I0(accel_z[14]), .I1(accel_z[13]), 
            .CI(\Inst_MPU6500_Controller/add_258/n28 ), .O(\Inst_MPU6500_Controller/n717 [14]), 
            .CO(\Inst_MPU6500_Controller/add_258/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i14  (.I0(accel_z[13]), .I1(accel_z[12]), 
            .CI(\Inst_MPU6500_Controller/add_258/n26 ), .O(\Inst_MPU6500_Controller/n717 [13]), 
            .CO(\Inst_MPU6500_Controller/add_258/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i13  (.I0(accel_z[12]), .I1(accel_z[11]), 
            .CI(\Inst_MPU6500_Controller/add_258/n24 ), .O(\Inst_MPU6500_Controller/n717 [12]), 
            .CO(\Inst_MPU6500_Controller/add_258/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i12  (.I0(accel_z[11]), .I1(accel_z[10]), 
            .CI(\Inst_MPU6500_Controller/add_258/n22 ), .O(\Inst_MPU6500_Controller/n717 [11]), 
            .CO(\Inst_MPU6500_Controller/add_258/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i11  (.I0(accel_z[10]), .I1(accel_z[9]), 
            .CI(\Inst_MPU6500_Controller/add_258/n20 ), .O(\Inst_MPU6500_Controller/n717 [10]), 
            .CO(\Inst_MPU6500_Controller/add_258/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i10  (.I0(accel_z[9]), .I1(accel_z[8]), 
            .CI(\Inst_MPU6500_Controller/add_258/n18 ), .O(\Inst_MPU6500_Controller/n717 [9]), 
            .CO(\Inst_MPU6500_Controller/add_258/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i9  (.I0(accel_z[8]), .I1(accel_z[7]), 
            .CI(\Inst_MPU6500_Controller/add_258/n16 ), .O(\Inst_MPU6500_Controller/n717 [8]), 
            .CO(\Inst_MPU6500_Controller/add_258/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i8  (.I0(accel_z[7]), .I1(accel_z[6]), 
            .CI(\Inst_MPU6500_Controller/add_258/n14 ), .O(\Inst_MPU6500_Controller/n717 [7]), 
            .CO(\Inst_MPU6500_Controller/add_258/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i7  (.I0(accel_z[6]), .I1(accel_z[5]), 
            .CI(\Inst_MPU6500_Controller/add_258/n12 ), .O(\Inst_MPU6500_Controller/n717 [6]), 
            .CO(\Inst_MPU6500_Controller/add_258/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i6  (.I0(accel_z[5]), .I1(accel_z[4]), 
            .CI(\Inst_MPU6500_Controller/add_258/n10 ), .O(\Inst_MPU6500_Controller/n717 [5]), 
            .CO(\Inst_MPU6500_Controller/add_258/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i5  (.I0(accel_z[4]), .I1(accel_z[3]), 
            .CI(\Inst_MPU6500_Controller/add_258/n8 ), .O(\Inst_MPU6500_Controller/n717 [4]), 
            .CO(\Inst_MPU6500_Controller/add_258/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i4  (.I0(accel_z[3]), .I1(accel_z[2]), 
            .CI(\Inst_MPU6500_Controller/add_258/n6 ), .O(\Inst_MPU6500_Controller/n717 [3]), 
            .CO(\Inst_MPU6500_Controller/add_258/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i3  (.I0(accel_z[2]), .I1(accel_z[1]), 
            .CI(\Inst_MPU6500_Controller/add_258/n4 ), .O(\Inst_MPU6500_Controller/n717 [2]), 
            .CO(\Inst_MPU6500_Controller/add_258/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i32  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n62 ), 
            .O(\Inst_MPU6500_Controller/n592 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i32 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i31  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n60 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i31 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i30  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n58 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i30 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i2  (.I0(\u_FIFO/u_efx_fifo_top/waddr [2]), 
            .I1(1'b0), .CI(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n2 ), 
            .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [2]), .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i2 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i1  (.I0(\u_FIFO/u_efx_fifo_top/raddr [0]), 
            .I1(\u_FIFO/u_efx_fifo_top/rd_en_int ), .CI(1'b0), .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/ram_raddr [0]), 
            .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1275)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i1 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_45/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i29  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n56 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i29 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_pwm_servo_0/add_24/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_24/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i28  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n54 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i28 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i27  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n52 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i27 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i26  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n50 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i26 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i25  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n48 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i25 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i24  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n46 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i24 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i23  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n44 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i23 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i22  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n42 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i22 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i21  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n40 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i21 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i20  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n38 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i20 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i19  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n36 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i19 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i18  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(accel_x[15]), .CI(\Inst_MPU6500_Controller/add_82/n34 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i18 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i17  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(\Inst_MPU6500_Controller/n569 [16]), .CI(\Inst_MPU6500_Controller/add_82/n32 ), 
            .O(\Inst_MPU6500_Controller/n592 [16]), .CO(\Inst_MPU6500_Controller/add_82/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i17 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i1  (.I0(\u_FIFO/u_efx_fifo_top/waddr [1]), 
            .I1(\u_FIFO/u_efx_fifo_top/waddr [0]), .CI(1'b0), .O(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/n96 [1]), 
            .CO(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1249)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i1 .I0_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/add_58/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i16  (.I0(\Inst_MPU6500_Controller/raw_data[0] [7]), 
            .I1(\Inst_MPU6500_Controller/n569 [15]), .CI(\Inst_MPU6500_Controller/add_82/n30 ), 
            .O(\Inst_MPU6500_Controller/n592 [15]), .CO(\Inst_MPU6500_Controller/add_82/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i4  (.I0(accel_x[3]), .I1(accel_x[2]), 
            .CI(\Inst_MPU6500_Controller/add_256/n6 ), .O(\Inst_MPU6500_Controller/n569 [3]), 
            .CO(\Inst_MPU6500_Controller/add_256/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i15  (.I0(\Inst_MPU6500_Controller/raw_data[0] [6]), 
            .I1(\Inst_MPU6500_Controller/n569 [14]), .CI(\Inst_MPU6500_Controller/add_82/n28 ), 
            .O(\Inst_MPU6500_Controller/n592 [14]), .CO(\Inst_MPU6500_Controller/add_82/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i14  (.I0(\Inst_MPU6500_Controller/raw_data[0] [5]), 
            .I1(\Inst_MPU6500_Controller/n569 [13]), .CI(\Inst_MPU6500_Controller/add_82/n26 ), 
            .O(\Inst_MPU6500_Controller/n592 [13]), .CO(\Inst_MPU6500_Controller/add_82/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i13  (.I0(\Inst_MPU6500_Controller/raw_data[0] [4]), 
            .I1(\Inst_MPU6500_Controller/n569 [12]), .CI(\Inst_MPU6500_Controller/add_82/n24 ), 
            .O(\Inst_MPU6500_Controller/n592 [12]), .CO(\Inst_MPU6500_Controller/add_82/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i12  (.I0(\Inst_MPU6500_Controller/raw_data[0] [3]), 
            .I1(\Inst_MPU6500_Controller/n569 [11]), .CI(\Inst_MPU6500_Controller/add_82/n22 ), 
            .O(\Inst_MPU6500_Controller/n592 [11]), .CO(\Inst_MPU6500_Controller/add_82/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i11  (.I0(\Inst_MPU6500_Controller/raw_data[0] [2]), 
            .I1(\Inst_MPU6500_Controller/n569 [10]), .CI(\Inst_MPU6500_Controller/add_82/n20 ), 
            .O(\Inst_MPU6500_Controller/n592 [10]), .CO(\Inst_MPU6500_Controller/add_82/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i10  (.I0(\Inst_MPU6500_Controller/raw_data[0] [1]), 
            .I1(\Inst_MPU6500_Controller/n569 [9]), .CI(\Inst_MPU6500_Controller/add_82/n18 ), 
            .O(\Inst_MPU6500_Controller/n592 [9]), .CO(\Inst_MPU6500_Controller/add_82/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i9  (.I0(\Inst_MPU6500_Controller/raw_data[0] [0]), 
            .I1(\Inst_MPU6500_Controller/n569 [8]), .CI(\Inst_MPU6500_Controller/add_82/n16 ), 
            .O(\Inst_MPU6500_Controller/n592 [8]), .CO(\Inst_MPU6500_Controller/add_82/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i8  (.I0(\Inst_MPU6500_Controller/raw_data[1] [7]), 
            .I1(\Inst_MPU6500_Controller/n569 [7]), .CI(\Inst_MPU6500_Controller/add_82/n14 ), 
            .O(\Inst_MPU6500_Controller/n592 [7]), .CO(\Inst_MPU6500_Controller/add_82/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i7  (.I0(\Inst_MPU6500_Controller/raw_data[1] [6]), 
            .I1(\Inst_MPU6500_Controller/n569 [6]), .CI(\Inst_MPU6500_Controller/add_82/n12 ), 
            .O(\Inst_MPU6500_Controller/n592 [6]), .CO(\Inst_MPU6500_Controller/add_82/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i6  (.I0(\Inst_MPU6500_Controller/raw_data[1] [5]), 
            .I1(\Inst_MPU6500_Controller/n569 [5]), .CI(\Inst_MPU6500_Controller/add_82/n10 ), 
            .O(\Inst_MPU6500_Controller/n592 [5]), .CO(\Inst_MPU6500_Controller/add_82/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i5  (.I0(\Inst_MPU6500_Controller/raw_data[1] [4]), 
            .I1(\Inst_MPU6500_Controller/n569 [4]), .CI(\Inst_MPU6500_Controller/add_82/n8 ), 
            .O(\Inst_MPU6500_Controller/n592 [4]), .CO(\Inst_MPU6500_Controller/add_82/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i4  (.I0(\Inst_MPU6500_Controller/raw_data[1] [3]), 
            .I1(\Inst_MPU6500_Controller/n569 [3]), .CI(\Inst_MPU6500_Controller/add_82/n6 ), 
            .O(\Inst_MPU6500_Controller/n592 [3]), .CO(\Inst_MPU6500_Controller/add_82/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i3  (.I0(\Inst_MPU6500_Controller/raw_data[1] [2]), 
            .I1(\Inst_MPU6500_Controller/n569 [2]), .CI(\Inst_MPU6500_Controller/add_82/n4 ), 
            .O(\Inst_MPU6500_Controller/n592 [2]), .CO(\Inst_MPU6500_Controller/add_82/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_82/i2  (.I0(\Inst_MPU6500_Controller/raw_data[1] [1]), 
            .I1(\Inst_MPU6500_Controller/n569 [1]), .CI(\Inst_MPU6500_Controller/add_82/n2 ), 
            .CO(\Inst_MPU6500_Controller/add_82/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(228)
    defparam \Inst_MPU6500_Controller/add_82/i2 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_82/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i16  (.I0(accel_y[15]), .I1(accel_y[14]), 
            .CI(\Inst_MPU6500_Controller/add_257/n30 ), .O(\Inst_MPU6500_Controller/n643 [15]), 
            .CO(n1825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i15  (.I0(accel_y[14]), .I1(accel_y[13]), 
            .CI(\Inst_MPU6500_Controller/add_257/n28 ), .O(\Inst_MPU6500_Controller/n643 [14]), 
            .CO(\Inst_MPU6500_Controller/add_257/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i14  (.I0(accel_y[13]), .I1(accel_y[12]), 
            .CI(\Inst_MPU6500_Controller/add_257/n26 ), .O(\Inst_MPU6500_Controller/n643 [13]), 
            .CO(\Inst_MPU6500_Controller/add_257/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i13  (.I0(accel_y[12]), .I1(accel_y[11]), 
            .CI(\Inst_MPU6500_Controller/add_257/n24 ), .O(\Inst_MPU6500_Controller/n643 [12]), 
            .CO(\Inst_MPU6500_Controller/add_257/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i12  (.I0(accel_y[11]), .I1(accel_y[10]), 
            .CI(\Inst_MPU6500_Controller/add_257/n22 ), .O(\Inst_MPU6500_Controller/n643 [11]), 
            .CO(\Inst_MPU6500_Controller/add_257/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i11  (.I0(accel_y[10]), .I1(accel_y[9]), 
            .CI(\Inst_MPU6500_Controller/add_257/n20 ), .O(\Inst_MPU6500_Controller/n643 [10]), 
            .CO(\Inst_MPU6500_Controller/add_257/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i10  (.I0(accel_y[9]), .I1(accel_y[8]), 
            .CI(\Inst_MPU6500_Controller/add_257/n18 ), .O(\Inst_MPU6500_Controller/n643 [9]), 
            .CO(\Inst_MPU6500_Controller/add_257/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i9  (.I0(accel_y[8]), .I1(accel_y[7]), 
            .CI(\Inst_MPU6500_Controller/add_257/n16 ), .O(\Inst_MPU6500_Controller/n643 [8]), 
            .CO(\Inst_MPU6500_Controller/add_257/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i8  (.I0(accel_y[7]), .I1(accel_y[6]), 
            .CI(\Inst_MPU6500_Controller/add_257/n14 ), .O(\Inst_MPU6500_Controller/n643 [7]), 
            .CO(\Inst_MPU6500_Controller/add_257/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i7  (.I0(accel_y[6]), .I1(accel_y[5]), 
            .CI(\Inst_MPU6500_Controller/add_257/n12 ), .O(\Inst_MPU6500_Controller/n643 [6]), 
            .CO(\Inst_MPU6500_Controller/add_257/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i6  (.I0(accel_y[5]), .I1(accel_y[4]), 
            .CI(\Inst_MPU6500_Controller/add_257/n10 ), .O(\Inst_MPU6500_Controller/n643 [5]), 
            .CO(\Inst_MPU6500_Controller/add_257/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i5  (.I0(accel_y[4]), .I1(accel_y[3]), 
            .CI(\Inst_MPU6500_Controller/add_257/n8 ), .O(\Inst_MPU6500_Controller/n643 [4]), 
            .CO(\Inst_MPU6500_Controller/add_257/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i4  (.I0(accel_y[3]), .I1(accel_y[2]), 
            .CI(\Inst_MPU6500_Controller/add_257/n6 ), .O(\Inst_MPU6500_Controller/n643 [3]), 
            .CO(\Inst_MPU6500_Controller/add_257/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i4 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i3  (.I0(accel_y[2]), .I1(accel_y[1]), 
            .CI(\Inst_MPU6500_Controller/add_257/n4 ), .O(\Inst_MPU6500_Controller/n643 [2]), 
            .CO(\Inst_MPU6500_Controller/add_257/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i3 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i16  (.I0(accel_x[15]), .I1(accel_x[14]), 
            .CI(\Inst_MPU6500_Controller/add_256/n30 ), .O(\Inst_MPU6500_Controller/n569 [15]), 
            .CO(n1826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i16 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i15  (.I0(accel_x[14]), .I1(accel_x[13]), 
            .CI(\Inst_MPU6500_Controller/add_256/n28 ), .O(\Inst_MPU6500_Controller/n569 [14]), 
            .CO(\Inst_MPU6500_Controller/add_256/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i15 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i14  (.I0(accel_x[13]), .I1(accel_x[12]), 
            .CI(\Inst_MPU6500_Controller/add_256/n26 ), .O(\Inst_MPU6500_Controller/n569 [13]), 
            .CO(\Inst_MPU6500_Controller/add_256/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i14 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i13  (.I0(accel_x[12]), .I1(accel_x[11]), 
            .CI(\Inst_MPU6500_Controller/add_256/n24 ), .O(\Inst_MPU6500_Controller/n569 [12]), 
            .CO(\Inst_MPU6500_Controller/add_256/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i13 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i12  (.I0(accel_x[11]), .I1(accel_x[10]), 
            .CI(\Inst_MPU6500_Controller/add_256/n22 ), .O(\Inst_MPU6500_Controller/n569 [11]), 
            .CO(\Inst_MPU6500_Controller/add_256/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i12 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i11  (.I0(accel_x[10]), .I1(accel_x[9]), 
            .CI(\Inst_MPU6500_Controller/add_256/n20 ), .O(\Inst_MPU6500_Controller/n569 [10]), 
            .CO(\Inst_MPU6500_Controller/add_256/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i11 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i10  (.I0(accel_x[9]), .I1(accel_x[8]), 
            .CI(\Inst_MPU6500_Controller/add_256/n18 ), .O(\Inst_MPU6500_Controller/n569 [9]), 
            .CO(\Inst_MPU6500_Controller/add_256/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i10 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i9  (.I0(accel_x[8]), .I1(accel_x[7]), 
            .CI(\Inst_MPU6500_Controller/add_256/n16 ), .O(\Inst_MPU6500_Controller/n569 [8]), 
            .CO(\Inst_MPU6500_Controller/add_256/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i9 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i8  (.I0(accel_x[7]), .I1(accel_x[6]), 
            .CI(\Inst_MPU6500_Controller/add_256/n14 ), .O(\Inst_MPU6500_Controller/n569 [7]), 
            .CO(\Inst_MPU6500_Controller/add_256/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i8 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i7  (.I0(accel_x[6]), .I1(accel_x[5]), 
            .CI(\Inst_MPU6500_Controller/add_256/n12 ), .O(\Inst_MPU6500_Controller/n569 [6]), 
            .CO(\Inst_MPU6500_Controller/add_256/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i7 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i6  (.I0(accel_x[5]), .I1(accel_x[4]), 
            .CI(\Inst_MPU6500_Controller/add_256/n10 ), .O(\Inst_MPU6500_Controller/n569 [5]), 
            .CO(\Inst_MPU6500_Controller/add_256/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i6 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i5  (.I0(accel_x[4]), .I1(accel_x[3]), 
            .CI(\Inst_MPU6500_Controller/add_256/n8 ), .O(\Inst_MPU6500_Controller/n569 [4]), 
            .CO(\Inst_MPU6500_Controller/add_256/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i5 .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i5 .I1_POLARITY = 1'b1;
    EFX_RAM_5K \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram  (.WCLK(\clk_i~O ), 
            .RCLK(\clk_i~O ), .WCLKE(1'b1), .WE(\u_FIFO/u_efx_fifo_top/wr_en_int ), 
            .RE(\u_FIFO/u_efx_fifo_top/rd_en_int ), .WDATA({fifo_wr_data_o}), 
            .WADDR({\u_FIFO/u_efx_fifo_top/waddr }), .RADDR({\u_FIFO/u_efx_fifo_top/raddr }), 
            .RDATA({rdata})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=8, WRITE_WIDTH=8, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="READ_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(661)
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .READ_WIDTH = 8;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .WRITE_WIDTH = 8;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .WCLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .WCLKE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .WE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .RCLK_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .RE_POLARITY = 1'b1;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .OUTPUT_REG = 1'b0;
    defparam \u_FIFO/u_efx_fifo_top/xefx_fifo_ram/ram .WRITE_MODE = "READ_FIRST";
    EFX_LUT4 LUT__3532 (.I0(\u_FIFO/u_efx_fifo_top/waddr [6]), .I1(\u_FIFO/u_efx_fifo_top/raddr [6]), 
            .I2(\u_FIFO/u_efx_fifo_top/waddr [1]), .I3(\u_FIFO/u_efx_fifo_top/raddr [1]), 
            .O(n1501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__3532.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__3533 (.I0(\u_FIFO/u_efx_fifo_top/raddr [4]), .I1(\u_FIFO/u_efx_fifo_top/waddr [4]), 
            .I2(\u_FIFO/u_efx_fifo_top/waddr [5]), .I3(\u_FIFO/u_efx_fifo_top/raddr [5]), 
            .O(n1502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__3533.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__3534 (.I0(n1499), .I1(n1500), .I2(n1501), .I3(n1502), 
            .O(n1503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3534.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3535 (.I0(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/waddr_cntr[9] ), 
            .I1(\u_FIFO/u_efx_fifo_top/xefx_fifo_ctl/raddr_cntr[9] ), .O(n1504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3535.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3536 (.I0(\u_FIFO/u_efx_fifo_top/waddr [7]), .I1(\u_FIFO/u_efx_fifo_top/raddr [7]), 
            .I2(\u_FIFO/u_efx_fifo_top/waddr [8]), .I3(\u_FIFO/u_efx_fifo_top/raddr [8]), 
            .O(n1505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__3536.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__3537 (.I0(n1504), .I1(n1505), .O(n1506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3537.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3538 (.I0(n1503), .I1(n1506), .O(n1507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3538.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3539 (.I0(n1507), .I1(fifo_wr_en_o), .O(\u_FIFO/u_efx_fifo_top/wr_en_int )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(999)
    defparam LUT__3539.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3540 (.I0(n1504), .I1(n1505), .I2(n1503), .O(n1508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3540.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3541 (.I0(n1508), .I1(tx_busy_sig), .I2(uart_read_state[1]), 
            .I3(uart_read_state[0]), .O(ceg_net539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h300e */ ;
    defparam LUT__3541.LUTMASK = 16'h300e;
    EFX_LUT4 LUT__3542 (.I0(uart_read_state[0]), .I1(uart_read_state[1]), 
            .O(ceg_net332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(263)
    defparam LUT__3542.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3543 (.I0(uart_read_state[0]), .I1(tx_busy_sig), .I2(uart_read_state[1]), 
            .I3(n1508), .O(n408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(877)
    defparam LUT__3543.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3544 (.I0(n1508), .I1(rd_en_i), .O(\u_FIFO/u_efx_fifo_top/rd_en_int )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/ip/FIFO/FIFO.sv(1060)
    defparam LUT__3544.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3545 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n1067 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3545.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3546 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3546.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3547 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3547.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3548 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n1511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3548.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3549 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3549.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3550 (.I0(n1511), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1512), .O(n1513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3550.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3551 (.I0(switch_out), .I1(n1510), .I2(n1509), .I3(n1513), 
            .O(ceg_net757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__3551.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__3552 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3552.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3553 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n1514), 
            .O(\~Inst_MPU6500_Controller/n7949 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3553.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3554 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3554.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3555 (.I0(\Inst_MPU6500_Controller/byte_cntr [3]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(spi_data_valid), .I3(n1515), .O(n1516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3555.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3556 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1516), .O(\Inst_MPU6500_Controller/n10021 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3556.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3557 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n1517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3557.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3558 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3558.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3559 (.I0(n1518), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3559.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3560 (.I0(n1517), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(n1519), .O(\Inst_MPU6500_Controller/n1071 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3560.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__3561 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3561.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3562 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(n1520), .O(ceg_net812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf23f */ ;
    defparam LUT__3562.LUTMASK = 16'hf23f;
    EFX_LUT4 LUT__3563 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n1113 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3563.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__3564 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n1521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3564.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3565 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [8]), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n1522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3565.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3566 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [14]), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(n1523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3566.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3567 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [21]), .O(n1524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3567.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3568 (.I0(n1521), .I1(n1522), .I2(n1523), .I3(n1524), 
            .O(n1525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3568.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3569 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n1526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3569.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3570 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n1527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3570.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3571 (.I0(\Inst_MPU6500_Controller/delay_cntr [12]), .I1(n1526), 
            .I2(n1527), .O(n1528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3571.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3572 (.I0(n1528), .I1(n1525), .I2(n1512), .O(n1529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3572.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3573 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n1529), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n1514), .O(n1530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05f3 */ ;
    defparam LUT__3573.LUTMASK = 16'h05f3;
    EFX_LUT4 LUT__3574 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3574.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3575 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(n1532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3575.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3576 (.I0(\Inst_MPU6500_Controller/delay_cntr [18]), .I1(n1531), 
            .I2(n1532), .O(n1533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3576.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3577 (.I0(n1525), .I1(n1533), .O(n1534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3577.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3578 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n1535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3578.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3579 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n1535), .O(n1536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3579.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3580 (.I0(n1534), .I1(n1536), .I2(n1530), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(\Inst_MPU6500_Controller/n1099 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcdfc */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3580.LUTMASK = 16'hcdfc;
    EFX_LUT4 LUT__3581 (.I0(n1531), .I1(n1526), .O(n1537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3581.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3582 (.I0(\Inst_MPU6500_Controller/delay_cntr [14]), .I1(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(n1538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3582.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3583 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3583.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3584 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(n1538), .I3(n1539), .O(n1540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3584.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3585 (.I0(n1521), .I1(n1522), .O(n1541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3585.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3586 (.I0(n1540), .I1(n1541), .I2(n1537), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n1542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3586.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3587 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .O(n1543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3587.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3588 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n1509), 
            .O(n1544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3588.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3589 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(spi_data_valid), 
            .I2(\Inst_MPU6500_Controller/state [0]), .O(n1545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3589.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3590 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1545), .O(n1546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__3590.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3591 (.I0(n1542), .I1(n1543), .I2(n1544), .I3(n1546), 
            .O(ceg_net798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__3591.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__3592 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1516), .O(\Inst_MPU6500_Controller/n10022 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3592.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3593 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n1516), .O(\Inst_MPU6500_Controller/n10023 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3593.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3594 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .O(n1547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3594.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3595 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1516), 
            .I2(n1547), .O(\Inst_MPU6500_Controller/n10024 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3595.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3596 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1516), .O(\Inst_MPU6500_Controller/n10025 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3596.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3597 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1516), .O(\Inst_MPU6500_Controller/n10026 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3597.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3598 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .I2(spi_data_valid), .I3(n1515), .O(n1548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3598.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3599 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1548), .O(\Inst_MPU6500_Controller/n10029 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3599.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3600 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [0]), .I3(n1548), .O(\Inst_MPU6500_Controller/n10030 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3600.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3601 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [2]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [1]), .I3(n1548), .O(\Inst_MPU6500_Controller/n10031 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3601.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3602 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1547), 
            .I2(n1548), .O(\Inst_MPU6500_Controller/n10032 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3602.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3603 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(n1548), .O(\Inst_MPU6500_Controller/n10033 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3603.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3604 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n1549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3604.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3605 (.I0(spi_data_valid), .I1(n1517), .I2(n1549), .O(n1550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3605.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3606 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1550), 
            .O(\Inst_MPU6500_Controller/n10034 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3606.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3607 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3607.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3608 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(n1509), .I3(n1551), .O(\Inst_MPU6500_Controller/n1104 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3608.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__3609 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__3609.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__3610 (.I0(n1510), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n1552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3610.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3611 (.I0(n1552), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3611.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3612 (.I0(n1550), .I1(n1553), .O(n1554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3612.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3613 (.I0(n1540), .I1(n1541), .I2(n1537), .I3(n1535), 
            .O(n1555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3613.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3614 (.I0(n1529), .I1(n1555), .I2(n1552), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__3614.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__3615 (.I0(n1556), .I1(n1554), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n1076 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3615.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3616 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .O(n1557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__3616.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__3617 (.I0(n1543), .I1(n1557), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(ceg_net800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c05 */ ;
    defparam LUT__3617.LUTMASK = 16'h0c05;
    EFX_LUT4 LUT__3618 (.I0(n1517), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(spi_data_valid), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3618.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3619 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n1520), 
            .I2(n1558), .I3(spi_cs_n_o), .O(n1559)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__3619.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__3620 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n1559), .O(\Inst_MPU6500_Controller/n1066 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00eb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3620.LUTMASK = 16'h00eb;
    EFX_LUT4 LUT__3621 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(spi_data_valid), .O(n1560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3621.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3622 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(switch_out), 
            .I2(n1520), .I3(n1560), .O(n1561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3622.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3623 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1561), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(n1518), .O(ceg_net801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf444 */ ;
    defparam LUT__3623.LUTMASK = 16'hf444;
    EFX_LUT4 LUT__3624 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(spi_data_valid), 
            .I2(n1517), .I3(n1549), .O(n1562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3624.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3625 (.I0(n1562), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n1563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3625.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3626 (.I0(n1510), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .I3(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n1564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__3626.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__3627 (.I0(n1510), .I1(n1514), .O(n1565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3627.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3628 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I2(n1565), .O(n1566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3628.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3629 (.I0(n1534), .I1(n1566), .I2(n1563), .I3(n1564), 
            .O(n1567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bbb */ ;
    defparam LUT__3629.LUTMASK = 16'h0bbb;
    EFX_LUT4 LUT__3630 (.I0(n1555), .I1(n1529), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3630.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3631 (.I0(n1567), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [1]), .I3(n1568), .O(\Inst_MPU6500_Controller/n1076 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7d55 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3631.LUTMASK = 16'h7d55;
    EFX_LUT4 LUT__3632 (.I0(n1529), .I1(n1555), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1563), .O(n1569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3632.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3633 (.I0(n1534), .I1(n1565), .O(n1570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3633.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3634 (.I0(n1553), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .O(n1571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3634.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3635 (.I0(n1569), .I1(n1570), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .I3(n1571), .O(\Inst_MPU6500_Controller/n1076 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0110 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3635.LUTMASK = 16'h0110;
    EFX_LUT4 LUT__3636 (.I0(\Inst_MPU6500_Controller/delay_cntr [2]), .I1(n1571), 
            .I2(n1569), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), .O(\Inst_MPU6500_Controller/n1076 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3636.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__3637 (.I0(n1533), .I1(n1525), .I2(n1565), .O(n1572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3637.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3638 (.I0(n1529), .I1(n1555), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n1572), .O(n1573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3638.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3639 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n1574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3639.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3640 (.I0(n1554), .I1(n1573), .I2(n1574), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n1076 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3640.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3641 (.I0(n1553), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(n1574), .O(n1575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3641.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3642 (.I0(n1569), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(n1575), .O(\Inst_MPU6500_Controller/n1076 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3642.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3643 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(n1575), 
            .I2(n1569), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), .O(\Inst_MPU6500_Controller/n1076 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3643.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__3644 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [6]), .O(n1576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3644.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3645 (.I0(n1574), .I1(n1576), .O(n1577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3645.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3646 (.I0(n1552), .I1(n1577), .O(n1578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3646.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3647 (.I0(n1562), .I1(n1578), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1579)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__3647.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__3648 (.I0(n1579), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n1577), .I3(n1568), .O(\Inst_MPU6500_Controller/n1076 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3648.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__3649 (.I0(n1553), .I1(n1577), .O(n1580)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3649.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3650 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(n1580), 
            .I2(n1569), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), .O(\Inst_MPU6500_Controller/n1076 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3650.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__3651 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(n1581)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3651.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3652 (.I0(n1577), .I1(n1581), .O(n1582)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3652.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3653 (.I0(n1534), .I1(n1553), .I2(n1582), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(n1583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__3653.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__3654 (.I0(n1533), .I1(n1563), .I2(n1583), .I3(n1568), 
            .O(\Inst_MPU6500_Controller/n1076 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf0c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3654.LUTMASK = 16'haf0c;
    EFX_LUT4 LUT__3655 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(n1574), 
            .I2(n1576), .I3(n1581), .O(n1584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3655.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3656 (.I0(n1534), .I1(n1510), .I2(n1584), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(n1585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h32cf */ ;
    defparam LUT__3656.LUTMASK = 16'h32cf;
    EFX_LUT4 LUT__3657 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(n1584), .O(n1586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3657.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3658 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n1550), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(n1587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3658.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3659 (.I0(n1555), .I1(n1529), .I2(n1586), .I3(n1587), 
            .O(n1588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3659.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3660 (.I0(n1585), .I1(n1514), .I2(n1588), .O(\Inst_MPU6500_Controller/n1076 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3660.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__3661 (.I0(n1553), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(n1584), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), .O(n1589)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h40bf */ ;
    defparam LUT__3661.LUTMASK = 16'h40bf;
    EFX_LUT4 LUT__3662 (.I0(n1569), .I1(n1589), .O(\Inst_MPU6500_Controller/n1076 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3662.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3663 (.I0(\Inst_MPU6500_Controller/delay_cntr [10]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(n1584), .O(n1590)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3663.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3664 (.I0(n1554), .I1(n1573), .I2(n1590), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(\Inst_MPU6500_Controller/n1076 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3664.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3665 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n1591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3665.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3666 (.I0(n1574), .I1(n1576), .I2(n1581), .I3(n1591), 
            .O(n1592)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3666.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3667 (.I0(n1552), .I1(n1592), .O(n1593)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3667.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3668 (.I0(n1562), .I1(n1593), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n1594)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__3668.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__3669 (.I0(n1594), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(n1592), .I3(n1568), .O(\Inst_MPU6500_Controller/n1076 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3669.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__3670 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n1592), 
            .O(n1595)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3670.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3671 (.I0(n1563), .I1(n1595), .I2(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I3(n1556), .O(\Inst_MPU6500_Controller/n1076 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3ca0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3671.LUTMASK = 16'h3ca0;
    EFX_LUT4 LUT__3672 (.I0(\Inst_MPU6500_Controller/delay_cntr [14]), .I1(n1595), 
            .O(n1596)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3672.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3673 (.I0(n1554), .I1(n1596), .I2(n1556), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(\Inst_MPU6500_Controller/n1076 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3673.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__3674 (.I0(n1538), .I1(n1595), .O(n1597)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3674.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3675 (.I0(n1554), .I1(n1573), .I2(n1597), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(\Inst_MPU6500_Controller/n1076 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3675.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3676 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(n1538), 
            .I2(n1595), .O(n1598)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3676.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3677 (.I0(n1553), .I1(n1598), .I2(n1569), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(\Inst_MPU6500_Controller/n1076 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b04 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3677.LUTMASK = 16'h0b04;
    EFX_LUT4 LUT__3678 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(n1538), .I3(n1595), .O(n1599)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3678.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3679 (.I0(n1554), .I1(n1573), .I2(n1599), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(\Inst_MPU6500_Controller/n1076 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3679.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3680 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n1600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3680.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3681 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(n1538), .I3(n1600), .O(n1601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3681.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3682 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(n1592), 
            .I2(n1601), .O(n1602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3682.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3683 (.I0(n1602), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .I2(n1552), .I3(n1563), .O(n1603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c00 */ ;
    defparam LUT__3683.LUTMASK = 16'h5c00;
    EFX_LUT4 LUT__3684 (.I0(n1592), .I1(n1601), .O(n1604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3684.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3685 (.I0(n1568), .I1(n1603), .I2(n1604), .I3(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(\Inst_MPU6500_Controller/n1076 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3685.LUTMASK = 16'hcee0;
    EFX_LUT4 LUT__3686 (.I0(n1562), .I1(n1552), .I2(n1602), .I3(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(n1605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hea3f */ ;
    defparam LUT__3686.LUTMASK = 16'hea3f;
    EFX_LUT4 LUT__3687 (.I0(\Inst_MPU6500_Controller/delay_cntr [20]), .I1(n1602), 
            .O(n1606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3687.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3688 (.I0(n1606), .I1(n1568), .I2(n1605), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n1076 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3688.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__3689 (.I0(n1529), .I1(n1555), .O(n1607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3689.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3690 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .I2(n1592), .I3(n1601), .O(n1608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3690.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3691 (.I0(\Inst_MPU6500_Controller/delay_cntr [21]), .I1(n1608), 
            .O(n1609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3691.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3692 (.I0(n1562), .I1(n1552), .I2(n1608), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n1610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hea3f */ ;
    defparam LUT__3692.LUTMASK = 16'hea3f;
    EFX_LUT4 LUT__3693 (.I0(n1609), .I1(n1607), .I2(n1610), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n1076 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3693.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__3694 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [4]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [5]), 
            .O(\Inst_MPU6500_Controller/n6468 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3694.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3695 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [4]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [5]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [6]), .O(\Inst_MPU6500_Controller/n6473 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3695.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3696 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [4]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [5]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [6]), .I3(\Inst_MPU6500_Controller/prod_sum_x_a [7]), 
            .O(\Inst_MPU6500_Controller/n6478 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3696.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3697 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [4]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [5]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [6]), .I3(\Inst_MPU6500_Controller/prod_sum_x_a [7]), 
            .O(n1611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3697.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3698 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [8]), .I1(n1611), 
            .O(\Inst_MPU6500_Controller/n6483 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3698.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3699 (.I0(n1611), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [8]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [9]), .O(\Inst_MPU6500_Controller/n6488 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3699.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3700 (.I0(n1611), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [8]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [9]), .I3(\Inst_MPU6500_Controller/prod_sum_x_a [10]), 
            .O(\Inst_MPU6500_Controller/n6493 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3700.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__3701 (.I0(n1611), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [9]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [10]), .I3(\Inst_MPU6500_Controller/prod_sum_x_a [8]), 
            .O(n1612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3701.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3702 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [11]), .I1(n1612), 
            .O(\Inst_MPU6500_Controller/n6498 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3702.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3703 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [11]), .I1(n1612), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [12]), .O(\Inst_MPU6500_Controller/n6503 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3703.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3704 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [11]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [12]), 
            .I2(n1612), .I3(\Inst_MPU6500_Controller/prod_sum_x_a [13]), 
            .O(\Inst_MPU6500_Controller/n6508 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3704.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3705 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [11]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [12]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [13]), .I3(n1612), 
            .O(n1613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3705.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3706 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [14]), .I1(n1613), 
            .O(\Inst_MPU6500_Controller/n6513 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3706.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3707 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [14]), .I1(n1613), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_a [15]), .O(\Inst_MPU6500_Controller/n6518 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3707.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3708 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [14]), .I1(\Inst_MPU6500_Controller/prod_sum_x_a [15]), 
            .O(n1614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3708.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3709 (.I0(n1613), .I1(n1614), .I2(\Inst_MPU6500_Controller/prod_sum_x_a [16]), 
            .O(\Inst_MPU6500_Controller/n6523 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3709.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3710 (.I0(\Inst_MPU6500_Controller/prod_sum_x_a [16]), .I1(n1613), 
            .I2(n1614), .I3(\Inst_MPU6500_Controller/prod_sum_x_a [31]), 
            .O(\Inst_MPU6500_Controller/n6528 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3710.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3711 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [3]), 
            .O(\Inst_MPU6500_Controller/n6618 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3711.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3712 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [4]), .O(\Inst_MPU6500_Controller/n6623 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3712.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3713 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [4]), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [5]), 
            .O(\Inst_MPU6500_Controller/n6628 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he01f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3713.LUTMASK = 16'he01f;
    EFX_LUT4 LUT__3714 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [3]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [2]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [4]), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [5]), 
            .O(n1615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3714.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3715 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [6]), .I1(n1615), 
            .O(\Inst_MPU6500_Controller/n6633 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3715.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3716 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [6]), .I1(n1615), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [7]), .O(\Inst_MPU6500_Controller/n6638 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3716.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3717 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [6]), .I1(n1615), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [7]), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [8]), 
            .O(\Inst_MPU6500_Controller/n6643 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4fb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3717.LUTMASK = 16'h4fb0;
    EFX_LUT4 LUT__3718 (.I0(n1615), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [6]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [8]), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [7]), 
            .O(n1616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__3718.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__3719 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [9]), .I1(n1616), 
            .O(\Inst_MPU6500_Controller/n6648 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3719.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3720 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [9]), .I1(n1616), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [10]), .O(\Inst_MPU6500_Controller/n6653 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3720.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3721 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [9]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [10]), 
            .I2(n1616), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [11]), 
            .O(\Inst_MPU6500_Controller/n6658 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3721.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__3722 (.I0(n1616), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [10]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [9]), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [11]), 
            .O(n1617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__3722.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__3723 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [12]), .I1(n1617), 
            .O(\Inst_MPU6500_Controller/n6663 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3723.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3724 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [12]), .I1(n1617), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [13]), .O(\Inst_MPU6500_Controller/n6668 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3724.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3725 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [12]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [13]), 
            .I2(n1617), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [14]), 
            .O(\Inst_MPU6500_Controller/n6673 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3725.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3726 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [12]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [13]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [14]), .I3(n1617), 
            .O(n1618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3726.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3727 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [15]), .I1(n1618), 
            .O(\Inst_MPU6500_Controller/n6678 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3727.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3728 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [15]), .I1(n1618), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_a [16]), .O(\Inst_MPU6500_Controller/n6683 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3728.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3729 (.I0(\Inst_MPU6500_Controller/prod_sum_z_a [15]), .I1(\Inst_MPU6500_Controller/prod_sum_z_a [16]), 
            .I2(n1618), .I3(\Inst_MPU6500_Controller/prod_sum_z_a [31]), 
            .O(\Inst_MPU6500_Controller/n6688 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3729.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3730 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [3]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [4]), 
            .O(\Inst_MPU6500_Controller/n6703 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3730.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3731 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [3]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [4]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [5]), .O(\Inst_MPU6500_Controller/n6708 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3731.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__3732 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [3]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [4]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [5]), .I3(\Inst_MPU6500_Controller/prod_sum_x_g [6]), 
            .O(\Inst_MPU6500_Controller/n6713 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf807 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3732.LUTMASK = 16'hf807;
    EFX_LUT4 LUT__3733 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [4]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [5]), .I3(\Inst_MPU6500_Controller/prod_sum_x_g [6]), 
            .O(n1619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3733.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3734 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [7]), .I1(n1619), 
            .O(\Inst_MPU6500_Controller/n6718 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3734.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3735 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [7]), .I1(n1619), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [8]), .O(\Inst_MPU6500_Controller/n6723 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3735.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3736 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [7]), .I1(n1619), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [8]), .I3(\Inst_MPU6500_Controller/prod_sum_x_g [9]), 
            .O(\Inst_MPU6500_Controller/n6728 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3736.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__3737 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [7]), .I1(n1619), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [8]), .I3(\Inst_MPU6500_Controller/prod_sum_x_g [9]), 
            .O(n1620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3737.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3738 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [10]), .I1(n1620), 
            .O(\Inst_MPU6500_Controller/n6733 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3738.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3739 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [10]), .I1(n1620), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [11]), .O(\Inst_MPU6500_Controller/n6738 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3739.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3740 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [10]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [11]), 
            .I2(n1620), .I3(\Inst_MPU6500_Controller/prod_sum_x_g [12]), 
            .O(\Inst_MPU6500_Controller/n6743 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3740.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3741 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [10]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [11]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [12]), .I3(n1620), 
            .O(n1621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3741.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3742 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [13]), .I1(n1621), 
            .O(\Inst_MPU6500_Controller/n6748 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3742.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3743 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [13]), .I1(n1621), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [14]), .O(\Inst_MPU6500_Controller/n6753 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3743.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3744 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [13]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [14]), 
            .I2(n1621), .O(n1622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3744.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3745 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [15]), .I1(n1622), 
            .O(\Inst_MPU6500_Controller/n6758 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3745.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3746 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [15]), .I1(n1622), 
            .I2(\Inst_MPU6500_Controller/prod_sum_x_g [16]), .O(\Inst_MPU6500_Controller/n6763 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3746.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3747 (.I0(\Inst_MPU6500_Controller/prod_sum_x_g [15]), .I1(\Inst_MPU6500_Controller/prod_sum_x_g [16]), 
            .I2(n1622), .I3(\Inst_MPU6500_Controller/prod_sum_x_g [31]), 
            .O(\Inst_MPU6500_Controller/n6768 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3747.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3748 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [3]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [4]), 
            .O(\Inst_MPU6500_Controller/n6783 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3748.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3749 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [3]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [4]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [5]), .O(\Inst_MPU6500_Controller/n6788 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3749.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3750 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [3]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [4]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [5]), .I3(\Inst_MPU6500_Controller/prod_sum_y_g [6]), 
            .O(\Inst_MPU6500_Controller/n6793 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he01f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3750.LUTMASK = 16'he01f;
    EFX_LUT4 LUT__3751 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [4]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [5]), .I3(\Inst_MPU6500_Controller/prod_sum_y_g [6]), 
            .O(n1623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3751.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3752 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [7]), .I1(n1623), 
            .O(\Inst_MPU6500_Controller/n6798 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3752.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3753 (.I0(n1623), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [7]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [8]), .O(\Inst_MPU6500_Controller/n6803 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3753.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3754 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [7]), .I1(n1623), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [8]), .I3(\Inst_MPU6500_Controller/prod_sum_y_g [9]), 
            .O(\Inst_MPU6500_Controller/n6808 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf20d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3754.LUTMASK = 16'hf20d;
    EFX_LUT4 LUT__3755 (.I0(n1623), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [7]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [9]), .I3(\Inst_MPU6500_Controller/prod_sum_y_g [8]), 
            .O(n1624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000b */ ;
    defparam LUT__3755.LUTMASK = 16'h000b;
    EFX_LUT4 LUT__3756 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [10]), .I1(n1624), 
            .O(\Inst_MPU6500_Controller/n6813 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3756.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3757 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [10]), .I1(n1624), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [11]), .O(\Inst_MPU6500_Controller/n6818 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3757.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3758 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [10]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [11]), 
            .O(n1625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3758.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3759 (.I0(n1624), .I1(n1625), .I2(\Inst_MPU6500_Controller/prod_sum_y_g [12]), 
            .O(\Inst_MPU6500_Controller/n6823 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3759.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3760 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [12]), .I1(n1624), 
            .I2(n1625), .I3(\Inst_MPU6500_Controller/prod_sum_y_g [13]), 
            .O(\Inst_MPU6500_Controller/n6828 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3760.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__3761 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [12]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [13]), 
            .I2(n1624), .I3(n1625), .O(n1626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3761.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3762 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [14]), .I1(n1626), 
            .O(\Inst_MPU6500_Controller/n6833 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3762.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3763 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [14]), .I1(n1626), 
            .O(n1627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3763.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3764 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [15]), .I1(n1627), 
            .O(\Inst_MPU6500_Controller/n6838 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3764.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3765 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [15]), .I1(n1627), 
            .I2(\Inst_MPU6500_Controller/prod_sum_y_g [16]), .O(\Inst_MPU6500_Controller/n6843 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3765.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3766 (.I0(\Inst_MPU6500_Controller/prod_sum_y_g [15]), .I1(\Inst_MPU6500_Controller/prod_sum_y_g [16]), 
            .I2(n1627), .I3(\Inst_MPU6500_Controller/prod_sum_y_g [31]), 
            .O(\Inst_MPU6500_Controller/n6848 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3766.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3767 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [3]), 
            .O(\Inst_MPU6500_Controller/n6858 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3767.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3768 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [4]), .O(\Inst_MPU6500_Controller/n6863 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3768.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3769 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [4]), .I3(\Inst_MPU6500_Controller/prod_sum_z_g [5]), 
            .O(\Inst_MPU6500_Controller/n6868 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3769.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__3770 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [2]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [3]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [4]), .I3(\Inst_MPU6500_Controller/prod_sum_z_g [5]), 
            .O(n1628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3770.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3771 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [6]), .I1(n1628), 
            .O(\Inst_MPU6500_Controller/n6873 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3771.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3772 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [6]), .I1(n1628), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [7]), .O(\Inst_MPU6500_Controller/n6878 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3772.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3773 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [6]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [7]), 
            .I2(n1628), .I3(\Inst_MPU6500_Controller/prod_sum_z_g [8]), 
            .O(\Inst_MPU6500_Controller/n6883 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3773.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3774 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [6]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [7]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [8]), .I3(n1628), 
            .O(n1629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3774.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3775 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [9]), .I1(n1629), 
            .O(\Inst_MPU6500_Controller/n6888 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3775.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3776 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [9]), .I1(n1629), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [10]), .O(\Inst_MPU6500_Controller/n6893 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3776.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3777 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [9]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [10]), 
            .I2(n1629), .I3(\Inst_MPU6500_Controller/prod_sum_z_g [11]), 
            .O(\Inst_MPU6500_Controller/n6898 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3777.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3778 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [9]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [10]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [11]), .I3(n1629), 
            .O(n1630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3778.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3779 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [12]), .I1(n1630), 
            .O(\Inst_MPU6500_Controller/n6903 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3779.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3780 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [12]), .I1(n1630), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [13]), .O(\Inst_MPU6500_Controller/n6908 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3780.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3781 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [12]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [13]), 
            .I2(n1630), .I3(\Inst_MPU6500_Controller/prod_sum_z_g [14]), 
            .O(\Inst_MPU6500_Controller/n6913 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3781.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3782 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [12]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [13]), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [14]), .I3(n1630), 
            .O(n1631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3782.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3783 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [15]), .I1(n1631), 
            .O(\Inst_MPU6500_Controller/n6918 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3783.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3784 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [15]), .I1(n1631), 
            .I2(\Inst_MPU6500_Controller/prod_sum_z_g [16]), .O(\Inst_MPU6500_Controller/n6923 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3784.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3785 (.I0(\Inst_MPU6500_Controller/prod_sum_z_g [15]), .I1(\Inst_MPU6500_Controller/prod_sum_z_g [16]), 
            .I2(n1631), .I3(\Inst_MPU6500_Controller/prod_sum_z_g [31]), 
            .O(\Inst_MPU6500_Controller/n6928 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(424)
    defparam LUT__3785.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3786 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(n1632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3786.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3787 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[1]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3787.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3788 (.I0(n1632), .I1(n1509), .I2(n1633), .O(\Inst_MPU6500_Controller/n1104 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3788.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__3789 (.I0(n1632), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n1104 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3789.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__3790 (.I0(n1514), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/n1113 ), .O(ceg_net804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__3790.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3791 (.I0(n1632), .I1(mpu_to_spi_data[3]), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n1634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3791.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3792 (.I0(n1634), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1515), .O(\Inst_MPU6500_Controller/n1104 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3792.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3793 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(n1635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3793.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3794 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n1067 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3794.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__3795 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[4]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3795.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3796 (.I0(n1635), .I1(n1509), .I2(\Inst_MPU6500_Controller/n1067 [1]), 
            .I3(n1636), .O(\Inst_MPU6500_Controller/n1104 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3796.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__3797 (.I0(n1509), .I1(n1635), .O(\Inst_MPU6500_Controller/n1104 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3797.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3798 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[5]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n1637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3798.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3799 (.I0(\Inst_MPU6500_Controller/n1104 [6]), .I1(n1637), 
            .O(\Inst_MPU6500_Controller/n1104 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3799.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3800 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n1518), 
            .O(\Inst_MPU6500_Controller/n1104 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3800.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3801 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n1638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3801.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3802 (.I0(n1517), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n1638), .I3(n1519), .O(\Inst_MPU6500_Controller/n1071 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3802.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__3803 (.I0(spi_data_valid), .I1(n1547), .O(n1639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3803.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3804 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1639), 
            .I2(n1519), .O(\Inst_MPU6500_Controller/n1071 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3804.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3805 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n1639), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(n1519), .O(\Inst_MPU6500_Controller/n1071 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3805.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3806 (.I0(n1511), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1549), .O(n1640)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3806.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3807 (.I0(n1535), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [1]), 
            .O(n1641)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3807.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3808 (.I0(n1534), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n1562), .I3(n1641), .O(n1642)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3808.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3809 (.I0(n1510), .I1(n1640), .I2(n1642), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n1099 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf011 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3809.LUTMASK = 16'hf011;
    EFX_LUT4 LUT__3810 (.I0(n1534), .I1(n1510), .I2(n1514), .O(n1643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3810.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3811 (.I0(n1643), .I1(n1563), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(n1549), .O(\Inst_MPU6500_Controller/n1099 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'habba */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3811.LUTMASK = 16'habba;
    EFX_LUT4 LUT__3812 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n1529), .O(n1644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3812.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3813 (.I0(ceg_net798), .I1(n1644), .O(ceg_net813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__3813.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3814 (.I0(n1511), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n1512), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n1099 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3814.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__3815 (.I0(n1536), .I1(ceg_net798), .I2(n1572), .I3(n1644), 
            .O(ceg_net814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfffe */ ;
    defparam LUT__3815.LUTMASK = 16'hfffe;
    EFX_LUT4 LUT__3816 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n1632), .I3(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n1067 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(266)
    defparam LUT__3816.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__3817 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[0]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3817.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3818 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1645)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3818.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3819 (.I0(n1507), .I1(data_valid_out), .I2(n1645), .O(n1646)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3819.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3820 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .O(n1647)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3820.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3821 (.I0(n1646), .I1(fifo_rst_busys), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [4]), 
            .I3(n1647), .O(ceg_net569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfdcf */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(291)
    defparam LUT__3821.LUTMASK = 16'hfdcf;
    EFX_LUT4 LUT__3822 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(n1647), 
            .O(n1648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3822.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3823 (.I0(n1648), .I1(fifo_wr_data_o[0]), .I2(n1507), 
            .O(n1649)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__3823.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__3824 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [0]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [0]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1650)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3824.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3825 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [8]), 
            .I2(n1650), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1651)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__3825.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__3826 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [8]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [8]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1652)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__3826.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__3827 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [0]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [0]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1652), .O(n1653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__3827.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__3828 (.I0(n1653), .I1(n1651), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1654)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3828.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3829 (.I0(n1507), .I1(n1654), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1655)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3829.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3830 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [0]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [8]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1656)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3830.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3831 (.I0(fifo_wr_data_o[0]), .I1(n1656), .I2(n1503), 
            .I3(n1506), .O(n1657)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__3831.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__3832 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [8]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3832.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3833 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1659)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3833.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3834 (.I0(fifo_wr_data_o[0]), .I1(n1504), .I2(n1505), 
            .I3(n1659), .O(n1660)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3834.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3835 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [8]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .O(n1661)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3835.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3836 (.I0(n1645), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [0]), 
            .I2(n1661), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1662)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5d0f */ ;
    defparam LUT__3836.LUTMASK = 16'h5d0f;
    EFX_LUT4 LUT__3837 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [3]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [4]), 
            .O(n1663)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3837.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3838 (.I0(n1660), .I1(n1503), .I2(n1662), .I3(n1663), 
            .O(n1664)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__3838.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__3839 (.I0(n1657), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .I2(n1658), .I3(n1664), .O(n1665)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__3839.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__3840 (.I0(n1655), .I1(n1649), .I2(n1665), .O(\Inst_FIFO_CONTROLLER/n547 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3840.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__3841 (.I0(n1507), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .O(n1666)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd5dc */ ;
    defparam LUT__3841.LUTMASK = 16'hd5dc;
    EFX_LUT4 LUT__3842 (.I0(n1666), .I1(n1663), .I2(fifo_rst_busys), .O(ceg_net815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(291)
    defparam LUT__3842.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__3843 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(n1647), 
            .I2(n1507), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1667)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4fb2 */ ;
    defparam LUT__3843.LUTMASK = 16'h4fb2;
    EFX_LUT4 LUT__3844 (.I0(fifo_rst_busys), .I1(n1667), .O(\Inst_FIFO_CONTROLLER/n557 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(246)
    defparam LUT__3844.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3845 (.I0(n1645), .I1(fifo_rst_busys), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .I3(n1663), .O(n1668)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3845.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3846 (.I0(data_valid_out), .I1(n1645), .I2(n1507), .I3(n1668), 
            .O(ceg_net816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3846.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3847 (.I0(n1645), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [4]), 
            .I2(fifo_rst_busys), .I3(n1647), .O(n1669)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d03 */ ;
    defparam LUT__3847.LUTMASK = 16'h0d03;
    EFX_LUT4 LUT__3848 (.I0(n1507), .I1(n1669), .O(\Inst_FIFO_CONTROLLER/n674 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(246)
    defparam LUT__3848.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3849 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[0]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3849.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3850 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[0]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3850.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3851 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[0]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3851.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3852 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[0]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3852.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3853 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[0]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3853.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3854 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[1]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3854.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3855 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[2]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3855.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3856 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[3]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3856.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3857 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[4]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3857.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3858 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[5]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3858.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3859 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[6]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3859.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3860 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[7]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3860.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3861 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[8]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3861.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3862 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[9]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3862.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3863 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[10]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3863.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3864 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[11]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3864.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3865 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[12]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3865.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3866 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[13]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3866.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3867 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[14]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3867.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3868 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_x[15]), 
            .O(\Inst_FIFO_CONTROLLER/n439 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3868.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3869 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[1]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3869.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3870 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[2]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3870.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3871 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[3]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3871.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3872 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[4]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3872.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3873 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[5]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3873.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3874 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[6]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3874.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3875 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[7]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3875.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3876 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[8]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3876.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3877 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[9]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3877.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3878 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[10]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3878.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3879 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[11]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3879.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3880 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[12]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3880.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3881 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[13]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3881.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3882 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[14]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3882.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3883 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_y[15]), 
            .O(\Inst_FIFO_CONTROLLER/n456 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3883.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3884 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[1]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3884.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3885 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[2]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3885.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3886 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[3]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3886.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3887 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[4]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3887.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3888 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[5]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3888.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3889 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[6]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3889.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3890 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[7]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3890.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3891 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[8]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3891.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3892 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[9]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3892.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3893 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[10]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3893.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3894 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[11]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3894.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3895 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[12]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3895.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3896 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[13]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3896.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3897 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[14]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3897.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3898 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(accel_z[15]), 
            .O(\Inst_FIFO_CONTROLLER/n473 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3898.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3899 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[1]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3899.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3900 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[2]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3900.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3901 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[3]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3901.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3902 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[4]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3902.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3903 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[5]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3903.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3904 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[6]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3904.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3905 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[7]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3905.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3906 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[8]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3906.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3907 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[9]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3907.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3908 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[10]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3908.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3909 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[11]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3909.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3910 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[12]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3910.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3911 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[13]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3911.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3912 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[14]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3912.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3913 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_x[15]), 
            .O(\Inst_FIFO_CONTROLLER/n490 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3913.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3914 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[1]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3914.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3915 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[2]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3915.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3916 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[3]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3916.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3917 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[4]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3917.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3918 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[5]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3918.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3919 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[6]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3919.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3920 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[7]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3920.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3921 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[8]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3921.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3922 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[9]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3922.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3923 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[10]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3923.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3924 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[11]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3924.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3925 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[12]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3925.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3926 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[13]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3926.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3927 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[14]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3927.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3928 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_y[15]), 
            .O(\Inst_FIFO_CONTROLLER/n507 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3928.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3929 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[1]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3929.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3930 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[2]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3930.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3931 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[3]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3931.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3932 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[4]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3932.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3933 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[5]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3933.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3934 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[6]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3934.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3935 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[7]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3935.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3936 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[8]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3936.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3937 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[9]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3937.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3938 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[10]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3938.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3939 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[11]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3939.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3940 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[12]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3940.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3941 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[13]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3941.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3942 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[14]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3942.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3943 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(gyro_z[15]), 
            .O(\Inst_FIFO_CONTROLLER/n524 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3943.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3944 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [1]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [1]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3944.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3945 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [9]), 
            .I2(n1670), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__3945.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__3946 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [9]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [9]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__3946.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__3947 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [1]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [1]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1672), .O(n1673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__3947.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__3948 (.I0(n1673), .I1(n1671), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3948.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3949 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(n1674), 
            .I2(fifo_wr_data_o[1]), .I3(n1507), .O(n1675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__3949.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__3950 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3950.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3951 (.I0(n1676), .I1(n1647), .O(n1677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3951.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3952 (.I0(n1506), .I1(n1503), .I2(n1677), .I3(n1663), 
            .O(n1678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__3952.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__3953 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [1]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [9]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3953.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3954 (.I0(fifo_wr_data_o[1]), .I1(n1679), .I2(n1503), 
            .I3(n1506), .O(n1680)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__3954.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__3955 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1681)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3955.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3956 (.I0(n1645), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .I2(n1663), .O(n1682)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3956.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3957 (.I0(n1680), .I1(\Inst_FIFO_CONTROLLER/reg_accel_y [9]), 
            .I2(n1681), .I3(n1682), .O(n1683)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__3957.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__3958 (.I0(n1676), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [9]), 
            .I2(n1663), .O(n1684)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3958.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3959 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [1]), .I1(n1645), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(n1684), .O(n1685)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__3959.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__3960 (.I0(n1507), .I1(fifo_wr_data_o[1]), .I2(n1659), 
            .I3(n1685), .O(n1686)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__3960.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__3961 (.I0(n1678), .I1(n1675), .I2(n1683), .I3(n1686), 
            .O(\Inst_FIFO_CONTROLLER/n547 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3961.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__3962 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [2]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [10]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1687)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3962.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3963 (.I0(fifo_wr_data_o[2]), .I1(n1687), .I2(n1503), 
            .I3(n1506), .O(n1688)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__3963.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__3964 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I1(fifo_wr_data_o[2]), 
            .I2(n1504), .O(n1689)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3964.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3965 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [10]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1690)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__3965.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__3966 (.I0(n1505), .I1(n1503), .I2(n1689), .I3(n1690), 
            .O(n1691)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3966.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3967 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(n1688), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(n1691), .O(n1692)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__3967.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__3968 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [2]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_y [10]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1693)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3968.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3969 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .O(n1694)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3969.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3970 (.I0(n1693), .I1(n1681), .I2(n1694), .O(n1695)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3970.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3971 (.I0(n1648), .I1(fifo_wr_data_o[2]), .I2(n1507), 
            .O(n1696)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__3971.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__3972 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [2]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .O(n1697)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3972.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3973 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_z [10]), 
            .I2(n1697), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1698)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__3973.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__3974 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [10]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [10]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1699)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__3974.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__3975 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_x [2]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [2]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1699), .O(n1700)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__3975.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__3976 (.I0(n1700), .I1(n1698), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1701)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3976.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3977 (.I0(n1507), .I1(n1701), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1702)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3977.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3978 (.I0(n1692), .I1(n1695), .I2(n1696), .I3(n1702), 
            .O(\Inst_FIFO_CONTROLLER/n547 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h44f0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3978.LUTMASK = 16'h44f0;
    EFX_LUT4 LUT__3979 (.I0(n1648), .I1(fifo_wr_data_o[3]), .I2(n1507), 
            .O(n1703)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__3979.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__3980 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [3]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [3]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1704)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3980.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3981 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [11]), 
            .I2(n1704), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1705)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__3981.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__3982 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [11]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [11]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1706)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__3982.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__3983 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [3]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [3]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1706), .O(n1707)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__3983.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__3984 (.I0(n1707), .I1(n1705), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1708)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3984.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3985 (.I0(n1507), .I1(n1708), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1709)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3985.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3986 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [3]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [11]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1710)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3986.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3987 (.I0(fifo_wr_data_o[3]), .I1(n1710), .I2(n1503), 
            .I3(n1506), .O(n1711)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__3987.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__3988 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_y [11]), 
            .I2(n1682), .O(n1712)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3988.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3989 (.I0(fifo_wr_data_o[3]), .I1(n1659), .O(n1713)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3989.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3990 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [3]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [11]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1714)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcff5 */ ;
    defparam LUT__3990.LUTMASK = 16'hcff5;
    EFX_LUT4 LUT__3991 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .I2(n1714), .I3(n1663), .O(n1715)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__3991.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__3992 (.I0(n1713), .I1(n1506), .I2(n1503), .I3(n1715), 
            .O(n1716)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__3992.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__3993 (.I0(n1681), .I1(n1711), .I2(n1712), .I3(n1716), 
            .O(n1717)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3993.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3994 (.I0(n1709), .I1(n1703), .I2(n1717), .O(\Inst_FIFO_CONTROLLER/n547 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__3994.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__3995 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [4]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [4]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1718)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3995.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3996 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [12]), 
            .I2(n1718), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1719)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__3996.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__3997 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [12]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [12]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1720)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__3997.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__3998 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [4]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [4]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1720), .O(n1721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__3998.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__3999 (.I0(n1721), .I1(n1719), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1722)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3999.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4000 (.I0(n1722), .I1(n1507), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1723)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__4000.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__4001 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [4]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__4001.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__4002 (.I0(n1659), .I1(n1724), .O(n1725)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4002.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4003 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [12]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .I2(\Inst_FIFO_CONTROLLER/reg_accel_x [12]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1726)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__4003.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__4004 (.I0(n1726), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .I2(n1724), .O(n1727)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__4004.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__4005 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [4]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [12]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1728)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4005.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4006 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4006.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4007 (.I0(n1506), .I1(n1503), .I2(n1728), .I3(n1729), 
            .O(n1730)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__4007.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__4008 (.I0(n1730), .I1(n1727), .I2(n1663), .O(n1731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__4008.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__4009 (.I0(fifo_wr_data_o[4]), .I1(n1507), .O(n1732)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4009.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4010 (.I0(n1725), .I1(n1723), .I2(n1731), .I3(n1732), 
            .O(\Inst_FIFO_CONTROLLER/n547 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5f0c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__4010.LUTMASK = 16'h5f0c;
    EFX_LUT4 LUT__4011 (.I0(n1677), .I1(fifo_wr_data_o[5]), .I2(n1507), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1733)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__4011.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__4012 (.I0(n1676), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [13]), 
            .I2(n1663), .O(n1734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__4012.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__4013 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [5]), .I1(n1645), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(n1734), .O(n1735)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__4013.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__4014 (.I0(n1507), .I1(fifo_wr_data_o[5]), .I2(n1659), 
            .I3(n1735), .O(n1736)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__4014.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__4015 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [5]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [5]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4015.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4016 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [13]), 
            .I2(n1737), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1738)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__4016.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__4017 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [13]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [13]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__4017.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__4018 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [5]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [5]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1739), .O(n1740)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4018.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4019 (.I0(n1740), .I1(n1738), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1741)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__4019.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4020 (.I0(n1741), .I1(fifo_wr_data_o[5]), .I2(n1507), 
            .I3(n1694), .O(n1742)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__4020.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__4021 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [5]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [13]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4021.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4022 (.I0(fifo_wr_data_o[5]), .I1(n1743), .I2(n1503), 
            .I3(n1506), .O(n1744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__4022.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__4023 (.I0(n1744), .I1(\Inst_FIFO_CONTROLLER/reg_accel_y [13]), 
            .I2(n1681), .I3(n1682), .O(n1745)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__4023.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__4024 (.I0(n1733), .I1(n1736), .I2(n1742), .I3(n1745), 
            .O(\Inst_FIFO_CONTROLLER/n547 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfffe */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__4024.LUTMASK = 16'hfffe;
    EFX_LUT4 LUT__4025 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [6]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_z [14]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1746)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf53f */ ;
    defparam LUT__4025.LUTMASK = 16'hf53f;
    EFX_LUT4 LUT__4026 (.I0(n1645), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [6]), 
            .I2(n1746), .O(n1747)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__4026.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__4027 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [14]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [14]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .O(n1748)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__4027.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__4028 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_x [6]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [6]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1748), .O(n1749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4028.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4029 (.I0(n1749), .I1(n1747), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1750)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__4029.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4030 (.I0(n1507), .I1(n1750), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1751)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__4030.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__4031 (.I0(n1648), .I1(fifo_wr_data_o[6]), .I2(n1507), 
            .O(n1752)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__4031.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__4032 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I1(fifo_wr_data_o[6]), 
            .I2(n1504), .I3(n1505), .O(n1753)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__4032.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__4033 (.I0(n1503), .I1(n1753), .I2(\Inst_FIFO_CONTROLLER/reg_accel_x [14]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__4033.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__4034 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [6]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [14]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4034.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4035 (.I0(fifo_wr_data_o[6]), .I1(n1755), .I2(n1503), 
            .I3(n1506), .O(n1756)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__4035.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__4036 (.I0(n1754), .I1(n1756), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3fa0 */ ;
    defparam LUT__4036.LUTMASK = 16'h3fa0;
    EFX_LUT4 LUT__4037 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [14]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [6]), 
            .I2(n1645), .I3(n1681), .O(n1758)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__4037.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__4038 (.I0(n1758), .I1(n1663), .O(n1759)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4038.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4039 (.I0(n1757), .I1(n1759), .I2(n1751), .I3(n1752), 
            .O(\Inst_FIFO_CONTROLLER/n547 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f88 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__4039.LUTMASK = 16'h8f88;
    EFX_LUT4 LUT__4040 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_x [7]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .O(n1760)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__4040.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__4041 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_x [15]), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I3(n1760), .O(n1761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__4041.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__4042 (.I0(fifo_wr_data_o[7]), .I1(n1659), .I2(n1507), 
            .I3(n1761), .O(n1762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4042.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4043 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [7]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [7]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .O(n1763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4043.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4044 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_y [15]), 
            .I2(n1763), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__4044.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__4045 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_z [15]), .I1(\Inst_FIFO_CONTROLLER/reg_gyro_x [15]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(n1765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__4045.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__4046 (.I0(\Inst_FIFO_CONTROLLER/reg_gyro_y [7]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [7]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .I3(n1765), .O(n1766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4046.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4047 (.I0(n1766), .I1(n1764), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [4]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .O(n1767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__4047.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__4048 (.I0(n1648), .I1(n1767), .I2(fifo_wr_data_o[7]), 
            .I3(n1507), .O(n1768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__4048.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__4049 (.I0(\Inst_FIFO_CONTROLLER/reg_accel_y [7]), .I1(\Inst_FIFO_CONTROLLER/reg_accel_z [15]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), .O(n1769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4049.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4050 (.I0(fifo_wr_data_o[7]), .I1(n1769), .I2(n1503), 
            .I3(n1506), .O(n1770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccc */ ;
    defparam LUT__4050.LUTMASK = 16'h5ccc;
    EFX_LUT4 LUT__4051 (.I0(n1770), .I1(\Inst_FIFO_CONTROLLER/reg_accel_y [15]), 
            .I2(n1681), .I3(n1682), .O(n1771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__4051.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__4052 (.I0(n1768), .I1(n1762), .I2(n1771), .I3(n1663), 
            .O(\Inst_FIFO_CONTROLLER/n547 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfcf5 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(245)
    defparam LUT__4052.LUTMASK = 16'hfcf5;
    EFX_LUT4 LUT__4053 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I1(n1647), 
            .I2(n1507), .I3(n1676), .O(n1772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__4053.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__4054 (.I0(n1647), .I1(n1507), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [0]), 
            .I3(\Inst_FIFO_CONTROLLER/FIFO_state [1]), .O(n1773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__4054.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__4055 (.I0(n1647), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [1]), 
            .I2(n1507), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .O(n1774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__4055.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__4056 (.I0(fifo_rst_busys), .I1(n1772), .I2(n1773), .I3(n1774), 
            .O(\Inst_FIFO_CONTROLLER/n557 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(246)
    defparam LUT__4056.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4057 (.I0(n1676), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [4]), 
            .I2(n1507), .O(n1775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__4057.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__4058 (.I0(n1507), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I3(n1676), .O(n1776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__4058.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__4059 (.I0(n1776), .I1(n1775), .I2(fifo_rst_busys), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .O(\Inst_FIFO_CONTROLLER/n557 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(246)
    defparam LUT__4059.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__4060 (.I0(n1681), .I1(n1663), .I2(n1507), .I3(ceg_net816), 
            .O(ceg_net817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;
    defparam LUT__4060.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__4061 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(n1676), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .O(n1777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__4061.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__4062 (.I0(n1507), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .I2(n1777), .I3(fifo_rst_busys), .O(\Inst_FIFO_CONTROLLER/n557 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(246)
    defparam LUT__4062.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__4063 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(n1507), 
            .I2(n1663), .I3(ceg_net816), .O(ceg_net818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;
    defparam LUT__4063.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__4064 (.I0(\Inst_FIFO_CONTROLLER/FIFO_state [2]), .I1(n1676), 
            .I2(n1694), .O(n1778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4064.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4065 (.I0(n1677), .I1(n1507), .I2(\Inst_FIFO_CONTROLLER/FIFO_state [4]), 
            .O(n1779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__4065.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__4066 (.I0(n1507), .I1(n1778), .I2(n1779), .I3(fifo_rst_busys), 
            .O(\Inst_FIFO_CONTROLLER/n557 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/FIFO_CONTROLLER.vhd(246)
    defparam LUT__4066.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__4067 (.I0(n1676), .I1(\Inst_FIFO_CONTROLLER/FIFO_state [2]), 
            .I2(\Inst_FIFO_CONTROLLER/FIFO_state [4]), .I3(\Inst_FIFO_CONTROLLER/FIFO_state [3]), 
            .O(n1780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h070c */ ;
    defparam LUT__4067.LUTMASK = 16'h070c;
    EFX_LUT4 LUT__4068 (.I0(n1507), .I1(n1780), .I2(ceg_net816), .O(ceg_net819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;
    defparam LUT__4068.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4069 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(n1781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4069.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4070 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(n1781), 
            .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4070.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4071 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n1782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4071.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4072 (.I0(\Inst_Spi_Mode_3/bitcounter [3]), .I1(n1782), 
            .O(n1783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4072.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4073 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n1783), .O(ceg_net291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4073.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4074 (.I0(spi_start), .I1(n1781), .O(n1784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4074.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4075 (.I0(n1783), .I1(n1781), .I2(n1784), .O(ceg_net822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(225)
    defparam LUT__4075.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4076 (.I0(mpu_to_spi_data[0]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4076.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4077 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1783), .O(n1785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__4077.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__4078 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4078.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4079 (.I0(n1786), .I1(n1785), .I2(n1784), .O(ceg_net670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__4079.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__4080 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4080.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__4081 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n1786), .O(n1787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4081.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4082 (.I0(n1787), .I1(n1783), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__4082.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__4083 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net299 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__4083.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__4084 (.I0(n1781), .I1(n1783), .O(ceg_net672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__4084.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4085 (.I0(\Inst_Spi_Mode_3/data_buffer [7]), .I1(\Inst_Spi_Mode_3/data_buffer [5]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__4085.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__4086 (.I0(\Inst_Spi_Mode_3/data_buffer [6]), .I1(\Inst_Spi_Mode_3/data_buffer [4]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1788), .O(n1789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4086.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4087 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n1790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__4087.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__4088 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n1790), .O(n1791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4088.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4089 (.I0(n1791), .I1(n1789), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__4089.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4090 (.I0(\~ceg_net299 ), .I1(n1783), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(406)
    defparam LUT__4090.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__4091 (.I0(mpu_to_spi_data[1]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4091.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4092 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1785), .I3(n1784), .O(ceg_net673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4092.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4093 (.I0(mpu_to_spi_data[2]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4093.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4094 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1785), .I3(n1784), .O(ceg_net674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4094.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4095 (.I0(mpu_to_spi_data[3]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4095.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4096 (.I0(n1785), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1784), .O(ceg_net675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__4096.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__4097 (.I0(mpu_to_spi_data[4]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4097.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4098 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n1783), .O(n1792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__4098.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__4099 (.I0(n1792), .I1(n1786), .I2(n1784), .O(ceg_net676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__4099.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__4100 (.I0(mpu_to_spi_data[5]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4100.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4101 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n1792), .I3(n1784), .O(ceg_net677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4101.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4102 (.I0(mpu_to_spi_data[6]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4102.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4103 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n1792), .I3(n1784), .O(ceg_net678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4103.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4104 (.I0(mpu_to_spi_data[7]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4104.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4105 (.I0(n1792), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n1784), .O(ceg_net679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__4105.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__4106 (.I0(n1781), .I1(\Inst_Spi_Mode_3/bitcounter [0]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4106.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__4107 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(n1781), .I3(\Inst_Spi_Mode_3/bitcounter [2]), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4107.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__4108 (.I0(n1781), .I1(\Inst_Spi_Mode_3/bitcounter [3]), 
            .I2(n1782), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4108.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__4109 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4109.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__4110 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n1786), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6f6f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4110.LUTMASK = 16'h6f6f;
    EFX_LUT4 LUT__4111 (.I0(n1787), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__4111.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__4112 (.I0(\Inst_pwm_servo_0/counter [1]), .I1(\Inst_pwm_servo_0/counter [2]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .O(n1793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__4112.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__4113 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n1794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4113.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4114 (.I0(\Inst_pwm_servo_0/counter [4]), .I1(n1793), 
            .I2(\Inst_pwm_servo_0/counter [5]), .I3(n1794), .O(n1795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__4114.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__4115 (.I0(n1795), .I1(\Inst_pwm_servo_0/counter [10]), 
            .I2(\Inst_pwm_servo_0/counter [11]), .I3(\Inst_pwm_servo_0/counter [12]), 
            .O(n1796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4115.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4116 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/counter [18]), 
            .O(n1797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4116.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4117 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(\Inst_pwm_servo_0/counter [19]), .O(n1798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__4117.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__4118 (.I0(n1796), .I1(\Inst_pwm_servo_0/counter [13]), 
            .I2(n1797), .I3(n1798), .O(n1799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__4118.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__4119 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4119.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4120 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4120.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4121 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4121.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4122 (.I0(\Inst_pwm_servo_0/counter [0]), .I1(n1799), 
            .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4122.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__4123 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4123.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4124 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [1]), .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4124.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4125 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/counter [6]), 
            .I2(\Inst_pwm_servo_0/counter [7]), .O(n1800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__4125.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__4126 (.I0(n1793), .I1(\Inst_pwm_servo_0/counter [4]), 
            .I2(n1800), .O(n1801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__4126.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__4127 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .I2(\Inst_pwm_servo_0/counter [12]), .I3(\Inst_pwm_servo_0/counter [13]), 
            .O(n1802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4127.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4128 (.I0(n1801), .I1(\Inst_pwm_servo_0/counter [8]), 
            .I2(\Inst_pwm_servo_0/counter [9]), .I3(n1802), .O(n1803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__4128.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__4129 (.I0(\Inst_pwm_servo_0/counter [15]), .I1(\Inst_pwm_servo_0/counter [16]), 
            .I2(\Inst_pwm_servo_0/counter [18]), .I3(\Inst_pwm_servo_0/counter [19]), 
            .O(n1804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4129.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4130 (.I0(n1803), .I1(\Inst_pwm_servo_0/counter [14]), 
            .I2(\Inst_pwm_servo_0/counter [17]), .I3(n1804), .O(\Inst_pwm_servo_0/n86 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(49)
    defparam LUT__4130.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__4131 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4131.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4132 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4132.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4133 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4133.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4134 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4134.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4135 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4135.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4136 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4136.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4137 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4137.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4138 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4138.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4139 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4139.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4140 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4140.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4141 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4141.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4142 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [17]), .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4142.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4143 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [18]), .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4143.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4144 (.I0(n1799), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__4144.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4145 (.I0(\Inst_uart_tx/state [1]), .I1(tx_start_sig), 
            .O(\Inst_uart_tx/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4145.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4146 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/n118 ), 
            .O(\Inst_uart_tx/n333 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(367)
    defparam LUT__4146.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4147 (.I0(\Inst_uart_tx/state [1]), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/bitcounter [5]), .O(n1805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__4147.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__4148 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(n1805), .O(\Inst_uart_tx/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4148.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4149 (.I0(tx_start_sig), .I1(\Inst_uart_tx/state [0]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(218)
    defparam LUT__4149.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__4150 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(n1806)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__4150.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__4151 (.I0(n1806), .I1(\Inst_uart_tx/bitcounter [5]), .I2(\Inst_uart_tx/state [0]), 
            .I3(\Inst_uart_tx/n118 ), .O(ceg_net823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3037 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(218)
    defparam LUT__4151.LUTMASK = 16'h3037;
    EFX_LUT4 LUT__4152 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4152.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4153 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/bit_idx [0]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bitcounter [5]), 
            .O(n1807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__4153.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__4154 (.I0(n1807), .I1(tx_start_sig), .I2(\Inst_uart_tx/state [0]), 
            .I3(\Inst_uart_tx/state [1]), .O(ceg_net685)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf5f3 */ ;
    defparam LUT__4154.LUTMASK = 16'hf5f3;
    EFX_LUT4 LUT__4155 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n115 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4155.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__4156 (.I0(n1805), .I1(\Inst_uart_tx/n115 [1]), .O(ceg_net682)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(52)
    defparam LUT__4156.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__4157 (.I0(\Inst_uart_tx/data_buffer [6]), .I1(\Inst_uart_tx/data_buffer [2]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .O(n1808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4157.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4158 (.I0(\Inst_uart_tx/bit_idx [2]), .I1(\Inst_uart_tx/data_buffer [4]), 
            .I2(n1808), .I3(\Inst_uart_tx/bit_idx [1]), .O(n1809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__4158.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__4159 (.I0(\Inst_uart_tx/data_buffer [7]), .I1(\Inst_uart_tx/data_buffer [3]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(\Inst_uart_tx/bit_idx [2]), 
            .O(n1810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__4159.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__4160 (.I0(\Inst_uart_tx/data_buffer [5]), .I1(\Inst_uart_tx/data_buffer [1]), 
            .I2(\Inst_uart_tx/bit_idx [1]), .I3(n1810), .O(n1811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4160.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4161 (.I0(n1811), .I1(n1809), .I2(\Inst_uart_tx/bit_idx [0]), 
            .O(n1812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__4161.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__4162 (.I0(\Inst_uart_tx/data_buffer [0]), .I1(tx_start_sig), 
            .I2(\Inst_uart_tx/state [0]), .O(n1813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__4162.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__4163 (.I0(n1813), .I1(n1812), .I2(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n119 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4163.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__4164 (.I0(\Inst_uart_tx/state [0]), .I1(\Inst_uart_tx/bitcounter [5]), 
            .I2(\Inst_uart_tx/state [1]), .O(ceg_net683)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2b2 */ ;
    defparam LUT__4164.LUTMASK = 16'hb2b2;
    EFX_LUT4 LUT__4165 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .I2(n1805), .O(\Inst_uart_tx/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4165.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4166 (.I0(\Inst_uart_tx/bitcounter [0]), .I1(\Inst_uart_tx/bitcounter [1]), 
            .O(n1814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__4166.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__4167 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1814), .I2(n1805), 
            .O(\Inst_uart_tx/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4167.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4168 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(n1814), .I2(\Inst_uart_tx/bitcounter [3]), 
            .I3(n1805), .O(\Inst_uart_tx/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4168.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__4169 (.I0(\Inst_uart_tx/bitcounter [2]), .I1(\Inst_uart_tx/bitcounter [3]), 
            .I2(n1814), .O(n1815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4169.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4170 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1815), .I2(n1805), 
            .O(\Inst_uart_tx/n129 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4170.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4171 (.I0(\Inst_uart_tx/bitcounter [4]), .I1(n1805), .I2(n1815), 
            .O(\Inst_uart_tx/n129 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(86)
    defparam LUT__4171.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4172 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/state [1]), .O(\Inst_uart_tx/n136 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4172.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__4173 (.I0(\Inst_uart_tx/bit_idx [0]), .I1(\Inst_uart_tx/bit_idx [1]), 
            .I2(\Inst_uart_tx/bit_idx [2]), .I3(\Inst_uart_tx/state [1]), 
            .O(\Inst_uart_tx/n136 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/uart_tx.vhd(114)
    defparam LUT__4173.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__4174 (.I0(\Inst_debounce/count_reg [6]), .I1(\Inst_debounce/count_reg [7]), 
            .I2(\Inst_debounce/count_reg [8]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n1816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__4174.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__4175 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n1817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__4175.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__4176 (.I0(n1816), .I1(n1817), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n1818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__4176.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__4177 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n1819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__4177.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__4178 (.I0(n1818), .I1(n1819), .O(n1820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__4178.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__4179 (.I0(n1820), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(383)
    defparam LUT__4179.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__4180 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n1820), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(383)
    defparam LUT__4180.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__4181 (.I0(uart_read_state[0]), .I1(uart_read_state[1]), 
            .O(n409[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(877)
    defparam LUT__4181.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3530 (.I0(\u_FIFO/u_efx_fifo_top/raddr [3]), .I1(\u_FIFO/u_efx_fifo_top/waddr [3]), 
            .O(n1499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3530.LUTMASK = 16'h9999;
    protected_cell protected_inst (.fifo_rst_busys(fifo_rst_busys), .\clk_i~O (\clk_i~O ), 
            .rst_n_i(rst_n_i));
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_256/i16__AUX_ADD_CO  (.I0(1'b0), 
            .I1(1'b0), .CI(n1826), .O(\Inst_MPU6500_Controller/n569 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_256/i16__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_256/i16__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_257/i16__AUX_ADD_CO  (.I0(1'b0), 
            .I1(1'b0), .CI(n1825), .O(\Inst_MPU6500_Controller/n643 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_257/i16__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_257/i16__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_258/i16__AUX_ADD_CO  (.I0(1'b0), 
            .I1(1'b0), .CI(n1824), .O(\Inst_MPU6500_Controller/n717 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_258/i16__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_258/i16__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_259/i16__AUX_ADD_CO  (.I0(1'b0), 
            .I1(1'b0), .CI(n1823), .O(\Inst_MPU6500_Controller/n791 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_259/i16__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_259/i16__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_260/i16__AUX_ADD_CO  (.I0(1'b0), 
            .I1(1'b0), .CI(n1822), .O(\Inst_MPU6500_Controller/n865 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_260/i16__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_260/i16__AUX_ADD_CO .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_MPU6500_Controller/add_261/i16__AUX_ADD_CO  (.I0(1'b0), 
            .I1(1'b0), .CI(n1821), .O(\Inst_MPU6500_Controller/n939 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(701)
    defparam \Inst_MPU6500_Controller/add_261/i16__AUX_ADD_CO .I0_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/add_261/i16__AUX_ADD_CO .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_9fa3d903_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_9fa3d903_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_9fa3d903__8_8_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_141
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_142
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_143
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_144
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_145
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_146
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_147
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_148
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_9fa3d903_149
// module not written out since it is a black box. 
//


`pragma protect begin_protected
`pragma protect version=1
`pragma protect author="author-a"
`pragma protect author_info="author-a-details"
`pragma protect encrypt_agent="QuestaSim"
`pragma protect encrypt_agent_info="2023.4"
`pragma protect key_keyowner="Efinix Inc."
`pragma protect key_keyname="EFX_K01"
`pragma protect key_method="rsa"
`pragma protect key_block
IjzmeF2ACtI8q/MHPcSQakfCyuQSUgg747Z3U+BWZdCStFbqF/Rhg0VPl8JT+91V
o/8Ohsiw6GnpSIX69XazqGYmhEjb+W7W2ngBYentEXdSyzUYvEbr8i71cL04f1fE
El78uYgSvjFwoDyocXOVYk8JA0v7y6WnabkL02lAqASKGQK55nzfKeUVbJHKHjAY
kIT3Nf7JWK2NVVymI1Zs5QttwrNgKBSqoiPvmy4+16bTQMx4R205Bb4rT1MqSqIc
/5U5/Z1e1tZzOqoEyhfcMMKW0emdBIdByNvteK05ZATt11Uzj2M/Vn1r9KmYd0h1
uYJaS5tuGEuFInBHa7oO8g==

`pragma protect key_keyowner="Cadence Design Systems."
`pragma protect key_keyname="CDS_RSA_KEY_VER_2"
`pragma protect key_method="rsa"
`pragma protect key_block
ABJo/BvEH9XbZrt+xPOQ2C7yeLcnebDlRELbHyCdXeeNkZRVZ9m0ie+1HufS/I+3
fC63lnVTenVdf9s4tm1RLd5VBkmFb37ikgaESy2aRKWsdLG6x2OyuODoMDRCjYUa
rxhnwLWh5E55yR3XVZgM2k7/NPP2cTL7iOSCjH4No38siNjs4Fapyc4FFq0TOsQq
PMqsZ5jgmM+ZT8cil0wMt5tpdEOwvchbe1GcZLIhcIFLD/Gb2XtP0Q0QkOlNzuiL
DNyobLTjDkV5si+/23Ng2E7tDq+SX+vJP4ciI63kXtsmQdn1ff2Y64ibNXJtpu/w
K3OoKmk3zFeArSsql8B4/Q==

`pragma protect key_keyowner="Synopsys"
`pragma protect key_keyname="SNPS-VCS-RSA-2"
`pragma protect key_method="rsa"
`pragma protect key_block
RAoMYYsrw2j05cvQ8NR0lCh+Ia/OGVfdwZqq0pwIkgDzO3Z7ol96oQmQzFfIQY/M
GzEOFdYJTfjnxPvhSPxT1tpq2Fgx6PbC2FMWFtN6/TrG/s01ifIWIZ9Wrfo8Q01l
6XTAESHR1htrOOx6AiDHAQLOlBb0zgfZjayGJBRX7FI=

`pragma protect key_keyowner="Aldec"
`pragma protect key_keyname="ALDEC15_001"
`pragma protect key_method="rsa"
`pragma protect key_block
YclPuIbYLW/ftZYybucr9ooblGFkJDcdUWf6kCJBGKpIRjItUB3LdSwcREekRWqf
RGiSRFoyrOTiScT06zZ4fkm+PEKj8O3RU1VMMzDjuEUqkAEELJHNOH71tCSC6MWk
1dop7MZy8BSXhzg3W3RXIA8IGSJRDibliv+SjkbUzg/WceDI176fJmUwGUji93Tw
Zu2vRjA/RTi3ZMzS/2Z9YE156hpipJ/Cu6ca8V3y5Kt6DX4fcCS09xESr6soT5Oz
eKRExN7wu8dvYMUuu1YgCVVR47BBDQi3wdZHqlq1PLaycnNOwBPLOAzA19Hefh/0
2HflB1HYKxojQCcZU7qUgQ==

`pragma protect key_keyowner="Siemens"
`pragma protect key_keyname="SIEMENS-VERIF-SIM-RSA-2"
`pragma protect key_method="rsa"
`pragma protect key_block
fMvC6d2jTMqMqGFzPCPWt6pV9wRUCG4/taH3Nfn7RcekdiLyXQEQgm1SN+X+hkbx
Pu7552vaw2ez4j3zrTk2vRPnDAsxY8GidEnkJcULi8kiia9Xy/ePFLxOJHHigkiB
rU7uwrFblcYYBRwQjhMhJDowyR9HVAonxhOWVIlYagtABxLYlNdDEn+N4yPLVCsr
XUWy1E2L5GUFFNQffENN0iyUaKdWAKGIqgIZK1sB3tVOPVsULetSoyzRErWPNZQD
e5jbBBNZGyQQWgOJkOfy280ekoUUEZajqtB1jDvE3k8kbo4rzvr7yTkhSzLqjGod
B2Zpo2FQ//YDRSAaEa9ksQ==

`pragma protect key_keyowner="Mentor Graphics Corporation"
`pragma protect key_keyname="MGC-VERIF-SIM-RSA-2"
`pragma protect key_method="rsa"
`pragma protect key_block
TcmE9lQROafuvxGWP3fMVxDoeaiMX6ALoT3detg/qWZ36+yPTc/t8N7/DtSx17Ze
vr6iBb+ge3aAzWAq2QHyVfgVV15dvW/HsOXXTh7UqExiO7Dxa6nHXuAhYMON6NP2
ihfIRSvdnrL2ufvg7A2rCHGAqnr6cVnRLfhNJxtA1lloQbJEtlf/CWNblDxEfyw2
06l3l8pp1rS0E4tMqagmOr+yhNSpcS9vQswFltqroh6kNIE64zKri96HKkRFLNlP
fpsN7plEpLS54SxIMmh8Op+w0a/jXVOxxD+FLepsZWfGiNksENgu2Xo6TvZIQUUN
ZoPzFCMjGk5ZmMyIlytNCw==

`pragma protect data_method="aes256-cbc"

`pragma protect encoding = (enctype = "BASE64", line_length = 64, bytes = 2912)
`pragma protect data_block
Iewft/389z9m9iJQkBcxBQJDPXkM1ig2dHAxXkLJT/I3Yzesz3LSMyHC3dhcr4wH
rMuug/zolOumMIfKMRDXVTbwE8KlruZv0bjyDGdUndeUoCJIBntHFUSybd1RP47b
kmSbxohAcoV6J3RryDDYjH99VWlquhTfubh4eO0ff72zWs7lp5qZqGWpBhwBT+86
BnfQtXzGWythcUfRIsQEXg2M+rK/WmGW7jDmB53sObrCzqTeWPVHjMMOQvgVT9/b
aYMTw9DXu8BDo4dX3ABP3agbeGT//0+CCyS8hvizMXq0D702YC7c5FzLGRGmaAgg
RRiejbKvbcHTF33bkAr91dugCK3TO9zFHKAVCbljix4lJapkcpQL4CmHYukC0H6j
nTQXrQ5X1jKG2df69nYaE+eZIy85aj/TbCpHHVRgB9GR1w7AB4qIztxAoSIg0VzZ
DPAqTZ5l+rqVaMvOYaEycoLzVVuHfnfGSHoHTCwwbGU/lBjlkQ8i8ws1p4HcbZqk
Z2LGgtd0PIhLji9NAQZTsnCw8fhvTtYvZZ+4w69RHOMWbSjDGRHfvcL4jH6s8dZ4
TdKzF3Wd7eP/A6gcH+v0f1Fkh5X7UTEmCk5c6ACo2nhU2ConUMnyIskFCbPRCoMX
UReDwhm1CZZsHnGW0+SVa1daDzTrfugA+Vk0bqkdSRc28v0SC/EqeHsGlJuoP7zw
kmrlnAeLS2Rt5WEyl/pWu2Pb5mwxxFMEqUU/uHAtdmQn4Khla3D5lTepKdF3g9xl
wbExFFHRlW+xR2cJ05Ml0iMa9CNDa0M6msEARejdoFFQS37RniP5LMvk0RiPTsEr
sQ/gKDMpxrBnGAlwXaCspsZfsagRRXWbxGBYSJZxb5/ZCJ2phLhPzg4i01cWXQ1x
RF+TjpMTuXtmlLVJ1yIkNMJf1OrrkHOhGVC6VWjGENeSNKPHebrtaftmsT1Bo5lx
MpfvLnyjKB2UGMDObvHqOxFbZlm4/Up7fPVP/PG5m10H9r0ludPujIu+M1Wc2M8P
po8KLRMU7CtSpC5Nk17pOICZgA8JKaRHmvATQOBG6lxRbD9smTikyeBqp8oijKK4
ayU//gAvxB8DxBZThklZCngVFrx3HlLCK2UAxNSH/fcqgupahmm4m1Dc6AfDWG/+
HlyIj/HshXiPXDy8s27B94h0XIZ8K0yrKcf3Mia7QEowPBd78rt67nCuypBWAVp4
wLVsODKAjVLMuKuUS7FMe/ZTU6T+4LNnTryz5x3phe0TAWORqi6wg4MkOuz9WzaV
ymC6vKyu8AwEyTHtGYPiY/G6of2Cary8U/ASoS4RZGfgzEKwdAo84hqdilxLAMcm
zlbVgqAfFv4/CVWhFePuUsBhLRBZfRdCYdnoYg0884eKuthTu1KXGDdNr+m3cZrw
x3d4CAWeCRViT0Tafs+dPECqnvw2zNthGtIEzMP40Sve6/IwJq596uJ939E8+mn2
2jS2J4f15VitG7WLmaR/uGt5L8DalUyVX7vRqmZeoC2DnwkYSmTdf/J9dKRJYcnl
n5yVIoMLmtIkjD8B0R63RATApbTkLk2hMWiAvbpOOYynAZ/LbbycL/kl0Se+QEkF
B5Nkb72b+pAJAGyggfeMqgNT1SIpa7SueybwcmW9pvyeZF0lSClgjWJpw8e9giZY
L0Vq1v3M+e8LJ7v4VQwNxqb24F5wspseZE55pb9KwaeTgqD0hw1eivq1/xY7nJik
y/u+QsDeR5BKeVcSil9wJMssm3tQBihKeGM+IQKf0x+6nAxH7JPOKN+shI1vTJwM
4AQSZpt10MPeKEhB/SkE+WedGmD/eWU41HE6THgmNMZ7grZAckqMo/sbmXVDxfDL
t6oI/EWzuCknUCFnetrROatZcis8SnVUpyBleiY6EkjCK93CiogZvBYPl2wYKg+t
NuF7iZSWp0YKhYN7WEgD3bCSyn5Fj8J8QI7STR3eMeqbLhts/RL0j09NyGstrI0C
lUqbRSxonBLMXypiaI5BHm8WRS5oUQb8j//l7hUh7YwHgYfGHNOC3ttvsEWpyS8S
XjtDA0OTCr5T8QwvpIueugYysGp/dveRaJhOcYDxTZPEHfAZqSxPj0ybbUUh6eN9
dcXUZReInMHp+Kt+JhR9EFDqb1JXonn/XiGkO7Pe2lmaSRePUCvlH2Wj2f4JYehy
uLBY1jwktJ0GXD0TvHwKBGxyX7k3e1BjKbUvhhvTdaHYfW1ipqIL5wIVetO/Xo47
mezxQ0xz0xKD3rPDxqxFiRO8B701sfAI2eIhuvCFG13h8J2hIVDuZMm+m4h+gIff
hr2L+MsarE4U0tNjEPD+ib5iBUaKfULFHdAV9nOynMIDf+78wqf+WFPFsrLI3Pke
ZNInXYlVTy+SWhoTu8pAsXAUGsqHNdM8kvgSYSSftMz6Sa080VXQZwIl0L5JHidA
LUNCm08cgLT1IaFGtTxZWbpFNpSeeTPYZmUhD9T1gck/DJZ9olSthdHqU7MH2H44
kOmycowGcbANuIR84yA1RiL1aLk1Rr5k9efd2mtrgXICXEXUjhKhPWb/I8+x/uLe
l3uFoUYE1mPhoKNl7OSZiIi1NHqg1QLRGhQ6C8SUw38lZ5XqvBufBsvC7vnR/Zte
U+l8rAYPcgs7o27uejg1aHXONhO+t+oXjvcG2gTNyuC9/OZOe9Ft7nJgWqM9ZZCs
6UXpk/sLJa1AotMZzDogZSgVWLhgK7pk/7eR2RkFqcaNfe+1coc2RqlhWIBG9cjs
H2thG1IzO67y7OQsgth6DfdnOCh9Qnl3mHw4LwyjIN+j5GTrx4pRrJo8S3YqqnFX
hE2ov7UaFsGc5eaCNP/KhcQVtxr0Fpk264kilWYIVxvOY5jJx0unBmRSB0y7g8P3
2HZNEtOqABq2FLa5STmqSFBxeWFxI1X+zcwcX1MfdlPkaNaTHdgUWB2vTwCkNvF6
lRg6fPIlnxAzzN6GOXnPqtT0EXhlacpe7SCKY84Tih37AjcBUjWWHTRZAlD9bQJ1
xMkUQc/SRo+iH7FZ5A8Mt/H171Os32D93itRzAG0rCId43iK6iOGS5El2ImmGOFd
prcEJmHGLKRsCo00yfX+kh0hCUFsub6r1X9ZdFvaQIrCrBtOw8qgjlDqsTOHG+IG
huTtXQlfkAGHvjrRoi8F2MPn0cNGo7UvArwgpuspxq3nTPBeKwHtTc0KUPgECSWQ
Wj/XlKOl+D3NwgySy0+Yhb0Q5KUWEUv3z5Oc+w/Jr4Yy+UXQBfHkaEs2wJ3bBqre
Mzee2giQ+S5DckFlJLS47SDxrP9++8WMPvlOeZ6LPVa/3BPssmy32PnVB41Pdpwg
vj/Irb4l8DZa4XMYNAkqswG7uEHl8/Py24PYmHicpWuLyxC+utrmwUWfNOhc+i9/
A03iTiZTL+CoEQw0030HmbmJdrGsUnk/FSEqm0wfWxyFqsYGq3S3TstL8KtplvIc
g+TY3hQP72ffl586Ra64aTpP762m0DQI8g8bjV7y9L4GKbz260UA1rJjV67WrZuZ
Ih2b8ZCXoJKQwS3R2FhvrKENbjBmpEMBPR0A3AtvepFeH9MoVa6PyDnTEFsXp83g
UtfmewBM3ozy9miFwgxNLrnBW9+iYNBbvB6i/W2RntAY0yPVAcezswiO1v/1sfnJ
woXWins2k7oQCV0iptKOCpRyVkSFSFEAx6YOU2lzWwRSUSgEs67uyT9WsSvTLZY3
R4dFd5lhqIjn8r9USWMivYR7lv5U9vWUZlyFgtpShVvYIsmYXa0nQil/o/pOJicw
9ywYwfPPxFciEUkCDT6bl7QNEVu84tnDMbY2QIPdQXmh/F/QyWv3uugJzHoUn72s
ISwgZHQi15aH251woWOMKDUpo2GB5y9QDj+SwoFomRQ=

`pragma protect end_protected

//
// Verific Verilog Description of module EFX_FF_9fa3d903_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_9fa3d903_0
// module not written out since it is a black box. 
//

