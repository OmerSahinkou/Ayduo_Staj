
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
    
    wire [2:0]\Inst_MPU6500_Controller/config_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(68)
    wire [21:0]\Inst_MPU6500_Controller/delay_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(92)
    wire [3:0]\Inst_MPU6500_Controller/byte_cntr ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(75)
    
    wire spi_start;
    wire [3:0]\Inst_MPU6500_Controller/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(89)
    wire [7:0]mpu_to_spi_data;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(227)
    wire [3:0]\Inst_Spi_Mode_3/bitcounter ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(49)
    wire [1:0]\Inst_Spi_Mode_3/state ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    wire [7:0]\Inst_Spi_Mode_3/data_buffer ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(51)
    wire [3:0]\Inst_Spi_Mode_3/bit_idx ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(50)
    
    wire spi_data_valid;
    wire [19:0]\Inst_pwm_servo_0/n42 ;
    
    wire \Inst_pwm_servo_0/add_24/n2 ;
    wire [19:0]\Inst_pwm_servo_0/counter ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(22)
    wire [19:0]\Inst_debounce/n10 ;
    
    wire \Inst_debounce/add_30/n2 , \Inst_debounce/add_30/n36 , \Inst_debounce/add_30/n34 , 
        \Inst_debounce/add_30/n32 , \Inst_debounce/add_30/n30 , \Inst_debounce/add_30/n28 , 
        \Inst_debounce/add_30/n26 , \Inst_debounce/add_30/n24 , \Inst_debounce/add_30/n22 , 
        \Inst_debounce/add_30/n20 , \Inst_debounce/add_30/n18 , \Inst_debounce/add_30/n16 , 
        \Inst_debounce/add_30/n14 , \Inst_debounce/add_30/n12 , \Inst_debounce/add_30/n10 , 
        \Inst_debounce/add_30/n8 , \Inst_debounce/add_30/n6 , \Inst_debounce/add_30/n4 , 
        \Inst_pwm_servo_0/add_24/n36 , \Inst_pwm_servo_0/add_24/n34 , \Inst_pwm_servo_0/add_24/n32 , 
        \Inst_pwm_servo_0/add_24/n30 , \Inst_pwm_servo_0/add_24/n28 , \Inst_pwm_servo_0/add_24/n26 , 
        \Inst_pwm_servo_0/add_24/n24 ;
    wire [19:0]\Inst_debounce/count_reg ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(28)
    
    wire \Inst_pwm_servo_0/add_24/n22 , \Inst_pwm_servo_0/add_24/n20 , \Inst_pwm_servo_0/add_24/n18 , 
        \Inst_pwm_servo_0/add_24/n16 , \Inst_debounce/sync_1 , switch_out, 
        \Inst_debounce/sync_0 , \Inst_pwm_servo_0/add_24/n14 , \Inst_pwm_servo_0/add_24/n12 , 
        \Inst_pwm_servo_0/add_24/n10 , \Inst_pwm_servo_0/add_24/n8 , \Inst_pwm_servo_0/add_24/n6 , 
        \Inst_pwm_servo_0/add_24/n4 ;
    wire [2:0]\Inst_MPU6500_Controller/n731 ;
    
    wire ceg_net757;
    wire [21:0]\Inst_MPU6500_Controller/n740 ;
    
    wire ceg_net797;
    wire [3:0]\Inst_MPU6500_Controller/n735 ;
    
    wire ceg_net812, \Inst_MPU6500_Controller/n777 ;
    wire [3:0]\Inst_MPU6500_Controller/n763 ;
    
    wire ceg_net799;
    wire [7:0]\Inst_MPU6500_Controller/n768 ;
    
    wire ceg_net800, \Inst_MPU6500_Controller/n730 , ceg_net801, ceg_net808, 
        ceg_net813, ceg_net814;
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
    
    wire \Inst_pwm_servo_0/n86 , \Inst_debounce/n151 , \Inst_debounce/n149 , 
        \clk_i~O , n306, n307, n308, n309, n310, n311, n312, 
        n313, n314, n315, n316, n317, n318, n319, n320, n321, 
        n322, n323, n324, n325, n326, n327, n328, n329, n330, 
        n331, n332, n333, n334, n335, n336, n337, n338, n339, 
        n340, n341, n342, n343, n344, n345, n346, n347, n348, 
        n349, n350, n351, n352, n353, n354, n355, n356, n357, 
        n358, n359, n360, n361, n362, n363, n364, n365, n366, 
        n367, n368, n369, n370, n371, n372, n373, n374, n375, 
        n376, n377, n378, n379, n380, n381, n382, n383, n384, 
        n385, n386, n387, n388, n389, n390, n391, n392, n393, 
        n394, n395, n396, n397, n398, n399, n400, n401, n402, 
        n403, n404, n405, n406, n407, n408, n409, n410, n411, 
        n412, n413, n414, n415, n416, n417, n418, n419, n420, 
        n421, n422, n423, n424, n425, n426, n427, n428, n429, 
        n430, n431, n432, n433, n434, n435, n436, n437, n438, 
        n439;
    
    assign pwm_out_0 = pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(29)
    assign pwm_out_1 = pwm_out_2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE, EFX_ATTRIBUTE_PORT__IS_VHDL_PORT_NAME=TRUE */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(30)
    assign tx = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    EFX_LUT4 LUT__591 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n731 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__591.LUTMASK = 16'h1010;
    EFX_FF \Inst_MPU6500_Controller/config_idx[0]~FF  (.D(\Inst_MPU6500_Controller/n731 [0]), 
           .CE(ceg_net757), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n740 [0]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[0]~FF  (.D(\Inst_MPU6500_Controller/n735 [0]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
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
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[0]~FF  (.D(\Inst_MPU6500_Controller/n768 [0]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[0]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \spi_cs_n_o~FF  (.D(\Inst_MPU6500_Controller/n730 ), .CE(ceg_net801), 
           .CLK(\clk_i~O ), .SR(rst_n_i), .Q(spi_cs_n_o)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \spi_cs_n_o~FF .CLK_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .CE_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .SR_POLARITY = 1'b0;
    defparam \spi_cs_n_o~FF .D_POLARITY = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC = 1'b0;
    defparam \spi_cs_n_o~FF .SR_VALUE = 1'b1;
    defparam \spi_cs_n_o~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n740 [1]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n740 [2]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n740 [3]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[4]~FF  (.D(\Inst_MPU6500_Controller/n740 [4]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[5]~FF  (.D(\Inst_MPU6500_Controller/n740 [5]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[6]~FF  (.D(\Inst_MPU6500_Controller/n740 [6]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[7]~FF  (.D(\Inst_MPU6500_Controller/n740 [7]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[8]~FF  (.D(\Inst_MPU6500_Controller/n740 [8]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[9]~FF  (.D(\Inst_MPU6500_Controller/n740 [9]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[10]~FF  (.D(\Inst_MPU6500_Controller/n740 [10]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[11]~FF  (.D(\Inst_MPU6500_Controller/n740 [11]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[12]~FF  (.D(\Inst_MPU6500_Controller/n740 [12]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[13]~FF  (.D(\Inst_MPU6500_Controller/n740 [13]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[14]~FF  (.D(\Inst_MPU6500_Controller/n740 [14]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[15]~FF  (.D(\Inst_MPU6500_Controller/n740 [15]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[16]~FF  (.D(\Inst_MPU6500_Controller/n740 [16]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[17]~FF  (.D(\Inst_MPU6500_Controller/n740 [17]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[18]~FF  (.D(\Inst_MPU6500_Controller/n740 [18]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[19]~FF  (.D(\Inst_MPU6500_Controller/n740 [19]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[20]~FF  (.D(\Inst_MPU6500_Controller/n740 [20]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/delay_cntr[21]~FF  (.D(\Inst_MPU6500_Controller/n740 [21]), 
           .CE(ceg_net797), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/delay_cntr [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/delay_cntr[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[1]~FF  (.D(\Inst_MPU6500_Controller/n768 [1]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[1]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[2]~FF  (.D(\Inst_MPU6500_Controller/n768 [2]), 
           .CE(ceg_net808), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[2]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[3]~FF  (.D(\Inst_MPU6500_Controller/n768 [3]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[3]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[4]~FF  (.D(\Inst_MPU6500_Controller/n768 [4]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[4]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[5]~FF  (.D(\Inst_MPU6500_Controller/n768 [5]), 
           .CE(ceg_net800), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[5]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[6]~FF  (.D(\Inst_MPU6500_Controller/n768 [6]), 
           .CE(ceg_net808), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[6]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mpu_to_spi_data[7]~FF  (.D(\Inst_MPU6500_Controller/n768 [7]), 
           .CE(ceg_net808), .CLK(\clk_i~O ), .SR(1'b0), .Q(mpu_to_spi_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \mpu_to_spi_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .D_POLARITY = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC = 1'b1;
    defparam \mpu_to_spi_data[7]~FF .SR_VALUE = 1'b0;
    defparam \mpu_to_spi_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[1]~FF  (.D(\Inst_MPU6500_Controller/n735 [1]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[2]~FF  (.D(\Inst_MPU6500_Controller/n735 [2]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/byte_cntr[3]~FF  (.D(\Inst_MPU6500_Controller/n735 [3]), 
           .CE(ceg_net812), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/byte_cntr [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/byte_cntr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[1]~FF  (.D(\Inst_MPU6500_Controller/n763 [1]), 
           .CE(ceg_net799), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[2]~FF  (.D(\Inst_MPU6500_Controller/n763 [2]), 
           .CE(ceg_net813), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/state[3]~FF  (.D(\Inst_MPU6500_Controller/n763 [3]), 
           .CE(ceg_net814), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/state [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[1]~FF  (.D(\Inst_MPU6500_Controller/n731 [1]), 
           .CE(ceg_net757), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Inst_MPU6500_Controller/config_idx[2]~FF  (.D(\Inst_MPU6500_Controller/n731 [2]), 
           .CE(ceg_net757), .CLK(\clk_i~O ), .SR(rst_n_i), .Q(\Inst_MPU6500_Controller/config_idx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(252)
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .CE_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_POLARITY = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .D_POLARITY = 1'b1;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_VALUE = 1'b0;
    defparam \Inst_MPU6500_Controller/config_idx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \pwm_out_0~FF  (.D(\Inst_pwm_servo_0/n86 ), .CE(1'b1), .CLK(\clk_i~O ), 
           .SR(rst_n_i), .Q(pwm_out_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(55)
    defparam \pwm_out_0~FF .CLK_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .CE_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_POLARITY = 1'b0;
    defparam \pwm_out_0~FF .D_POLARITY = 1'b1;
    defparam \pwm_out_0~FF .SR_SYNC = 1'b0;
    defparam \pwm_out_0~FF .SR_VALUE = 1'b0;
    defparam \pwm_out_0~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_LUT4 LUT__592 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__592.LUTMASK = 16'h1111;
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
    EFX_ADD \Inst_pwm_servo_0/add_24/i1  (.I0(\Inst_pwm_servo_0/counter [1]), 
            .I1(\Inst_pwm_servo_0/counter [0]), .CI(1'b0), .O(\Inst_pwm_servo_0/n42 [1]), 
            .CO(\Inst_pwm_servo_0/add_24/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // ../vhdl_packages/vhdl_2008/src/numeric_std-body.vhdl(482)
    defparam \Inst_pwm_servo_0/add_24/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_pwm_servo_0/add_24/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \Inst_debounce/add_30/i1  (.I0(\Inst_debounce/count_reg [1]), 
            .I1(\Inst_debounce/count_reg [0]), .CI(1'b0), .O(\Inst_debounce/n10 [1]), 
            .CO(\Inst_debounce/add_30/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Debounce.vhd(51)
    defparam \Inst_debounce/add_30/i1 .I0_POLARITY = 1'b1;
    defparam \Inst_debounce/add_30/i1 .I1_POLARITY = 1'b1;
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
    EFX_LUT4 LUT__593 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__593.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__594 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .I2(\Inst_MPU6500_Controller/config_idx [2]), .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__594.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__595 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__595.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__596 (.I0(n308), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n309), .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__596.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__597 (.I0(switch_out), .I1(n307), .I2(n306), .I3(n310), 
            .O(ceg_net757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__597.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__598 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__598.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__599 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [12]), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__599.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__600 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(n311), 
            .I2(n312), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__600.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__601 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__601.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__602 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [14]), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__602.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__603 (.I0(n314), .I1(n315), .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__603.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__604 (.I0(\Inst_MPU6500_Controller/delay_cntr [3]), .I1(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [13]), .I3(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__604.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__605 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(n317), 
            .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__605.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__606 (.I0(n316), .I1(n318), .I2(n313), .I3(n309), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__606.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__607 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [10]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__607.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__608 (.I0(\Inst_MPU6500_Controller/delay_cntr [1]), .I1(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .I2(n317), .I3(n320), .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__608.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__609 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [20]), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__609.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__610 (.I0(\Inst_MPU6500_Controller/delay_cntr [7]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__610.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__611 (.I0(n322), .I1(n311), .I2(n323), .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__611.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__612 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__612.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__613 (.I0(n324), .I1(n321), .I2(n325), .O(n326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__613.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__614 (.I0(n326), .I1(n319), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__614.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__615 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .O(n328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__615.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__616 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [2]), .I3(\Inst_MPU6500_Controller/byte_cntr [3]), 
            .O(n329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__616.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__617 (.I0(spi_data_valid), .I1(n328), .I2(n329), .O(n330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__617.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__618 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__618.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__619 (.I0(n330), .I1(n331), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__619.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__620 (.I0(n327), .I1(n332), .I2(\Inst_MPU6500_Controller/delay_cntr [0]), 
            .O(\Inst_MPU6500_Controller/n740 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc2c2 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__620.LUTMASK = 16'hc2c2;
    EFX_LUT4 LUT__621 (.I0(switch_out), .I1(spi_data_valid), .I2(\Inst_MPU6500_Controller/state [2]), 
            .I3(\Inst_MPU6500_Controller/state [0]), .O(n333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf05 */ ;
    defparam LUT__621.LUTMASK = 16'hcf05;
    EFX_LUT4 LUT__622 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(n309), 
            .O(n334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__622.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__623 (.I0(n333), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(n334), .O(ceg_net797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__623.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__624 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__624.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__625 (.I0(n329), .I1(\Inst_MPU6500_Controller/byte_cntr [0]), 
            .I2(spi_data_valid), .I3(n335), .O(\Inst_MPU6500_Controller/n735 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__625.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__626 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .O(n336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__626.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__627 (.I0(switch_out), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(n336), .O(ceg_net812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf23f */ ;
    defparam LUT__627.LUTMASK = 16'hf23f;
    EFX_LUT4 LUT__628 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h010e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__628.LUTMASK = 16'h010e;
    EFX_LUT4 LUT__629 (.I0(\Inst_MPU6500_Controller/delay_cntr [6]), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [16]), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(n337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__629.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__630 (.I0(n321), .I1(n316), .I2(n337), .O(n338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__630.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__631 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n331), 
            .O(n339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__631.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__632 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(n340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__632.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__633 (.I0(n319), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n340), .O(n341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__633.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__634 (.I0(n338), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n339), .I3(n341), .O(\Inst_MPU6500_Controller/n763 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__634.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__635 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(n325), 
            .O(n342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__635.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__636 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [2]), .I3(\Inst_MPU6500_Controller/state [0]), 
            .O(n343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__636.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__637 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(n307), 
            .I2(switch_out), .I3(n343), .O(n344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__637.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__638 (.I0(n324), .I1(n321), .I2(n342), .I3(n344), .O(n345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__638.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__639 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n345), 
            .O(ceg_net799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__639.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__640 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[0]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__640.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__641 (.I0(\Inst_MPU6500_Controller/config_idx [2]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(n306), .I3(n346), .O(\Inst_MPU6500_Controller/n768 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__641.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__642 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [0]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab0e */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__642.LUTMASK = 16'hab0e;
    EFX_LUT4 LUT__643 (.I0(n336), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .O(n347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__643.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__644 (.I0(spi_cs_n_o), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8cf */ ;
    defparam LUT__644.LUTMASK = 16'ha8cf;
    EFX_LUT4 LUT__645 (.I0(spi_data_valid), .I1(n329), .I2(n347), .I3(n348), 
            .O(\Inst_MPU6500_Controller/n730 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__645.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__646 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(spi_data_valid), 
            .O(n349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__646.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__647 (.I0(switch_out), .I1(n336), .I2(n349), .I3(\Inst_MPU6500_Controller/state [1]), 
            .O(n350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h330b */ ;
    defparam LUT__647.LUTMASK = 16'h330b;
    EFX_LUT4 LUT__648 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n350), 
            .I2(n342), .O(ceg_net801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__648.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__649 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(spi_data_valid), 
            .I2(n328), .I3(n329), .O(n351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__649.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__650 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(n331), 
            .O(n352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__650.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__651 (.I0(n338), .I1(n351), .I2(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I3(n352), .O(n353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__651.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__652 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__652.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__653 (.I0(n319), .I1(n326), .I2(\Inst_MPU6500_Controller/state [3]), 
            .O(n355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__653.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__654 (.I0(n354), .I1(n355), .I2(n353), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n740 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__654.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__655 (.I0(n351), .I1(\Inst_MPU6500_Controller/state [3]), 
            .O(n356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__655.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__656 (.I0(n338), .I1(n331), .I2(n356), .O(n357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__656.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__657 (.I0(n331), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [0]), .I3(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .O(n358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__657.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__658 (.I0(n355), .I1(n357), .I2(\Inst_MPU6500_Controller/delay_cntr [2]), 
            .I3(n358), .O(\Inst_MPU6500_Controller/n740 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__658.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__659 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .O(n359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__659.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__660 (.I0(n332), .I1(n359), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(\Inst_MPU6500_Controller/n740 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__660.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__661 (.I0(n337), .I1(n316), .I2(n321), .I3(n339), .O(n360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__661.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__662 (.I0(n326), .I1(n319), .I2(\Inst_MPU6500_Controller/state [3]), 
            .I3(n360), .O(n361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__662.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__663 (.I0(\Inst_MPU6500_Controller/delay_cntr [0]), .I1(\Inst_MPU6500_Controller/delay_cntr [1]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [2]), .I3(\Inst_MPU6500_Controller/delay_cntr [3]), 
            .O(n362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__663.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__664 (.I0(n332), .I1(n361), .I2(n362), .I3(\Inst_MPU6500_Controller/delay_cntr [4]), 
            .O(\Inst_MPU6500_Controller/n740 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__664.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__665 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(n362), 
            .O(n363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__665.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__666 (.I0(n332), .I1(n363), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .O(\Inst_MPU6500_Controller/n740 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__666.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__667 (.I0(n307), .I1(\Inst_MPU6500_Controller/delay_cntr [5]), 
            .I2(n363), .O(n364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__667.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__668 (.I0(n332), .I1(n364), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .O(\Inst_MPU6500_Controller/n740 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__668.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__669 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .I2(n331), .I3(n363), .O(n365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__669.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__670 (.I0(n351), .I1(n365), .I2(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__670.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__671 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .I2(n363), .O(n367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__671.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__672 (.I0(n366), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n367), .I3(n355), .O(\Inst_MPU6500_Controller/n740 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__672.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__673 (.I0(n307), .I1(\Inst_MPU6500_Controller/delay_cntr [7]), 
            .I2(n367), .O(n368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__673.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__674 (.I0(n332), .I1(n368), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(\Inst_MPU6500_Controller/n740 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__674.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__675 (.I0(n326), .I1(n319), .I2(n331), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n369)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__675.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__676 (.I0(\Inst_MPU6500_Controller/delay_cntr [5]), .I1(\Inst_MPU6500_Controller/delay_cntr [6]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [7]), .I3(\Inst_MPU6500_Controller/delay_cntr [8]), 
            .O(n370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__676.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__677 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(n362), 
            .I2(n370), .O(n371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__677.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__678 (.I0(n338), .I1(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .I2(n339), .I3(n371), .O(n372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc0b3 */ ;
    defparam LUT__678.LUTMASK = 16'hc0b3;
    EFX_LUT4 LUT__679 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n371), 
            .O(n373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__679.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__680 (.I0(n319), .I1(n326), .I2(n373), .I3(n356), .O(n374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__680.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__681 (.I0(n369), .I1(n374), .I2(n372), .I3(\Inst_MPU6500_Controller/delay_cntr [9]), 
            .O(\Inst_MPU6500_Controller/n740 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__681.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__682 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(n371), 
            .O(n375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__682.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__683 (.I0(n332), .I1(n361), .I2(n375), .I3(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .O(\Inst_MPU6500_Controller/n740 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__683.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__684 (.I0(n307), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [9]), .I3(n371), .O(n376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__684.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__685 (.I0(n332), .I1(n376), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [11]), 
            .O(\Inst_MPU6500_Controller/n740 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbac0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__685.LUTMASK = 16'hbac0;
    EFX_LUT4 LUT__686 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(n371), .O(n377)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__686.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__687 (.I0(n332), .I1(n361), .I2(n377), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(\Inst_MPU6500_Controller/n740 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__687.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__688 (.I0(\Inst_MPU6500_Controller/delay_cntr [9]), .I1(\Inst_MPU6500_Controller/delay_cntr [10]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [11]), .I3(\Inst_MPU6500_Controller/delay_cntr [12]), 
            .O(n378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__688.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__689 (.I0(\Inst_MPU6500_Controller/delay_cntr [4]), .I1(n362), 
            .I2(n370), .I3(n378), .O(n379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__689.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__690 (.I0(n331), .I1(n379), .O(n380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__690.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__691 (.I0(n351), .I1(n380), .I2(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I3(\Inst_MPU6500_Controller/state [3]), .O(n381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;
    defparam LUT__691.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__692 (.I0(n381), .I1(\Inst_MPU6500_Controller/delay_cntr [13]), 
            .I2(n379), .I3(n355), .O(\Inst_MPU6500_Controller/n740 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__692.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__693 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(n379), 
            .O(n382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__693.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__694 (.I0(n332), .I1(n382), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .O(\Inst_MPU6500_Controller/n740 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__694.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__695 (.I0(\Inst_MPU6500_Controller/delay_cntr [14]), .I1(n382), 
            .O(n383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__695.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__696 (.I0(n332), .I1(n383), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [15]), 
            .O(\Inst_MPU6500_Controller/n740 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__696.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__697 (.I0(\Inst_MPU6500_Controller/delay_cntr [13]), .I1(\Inst_MPU6500_Controller/delay_cntr [14]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [15]), .O(n384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__697.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__698 (.I0(n379), .I1(n384), .O(n385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__698.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__699 (.I0(n332), .I1(n361), .I2(n385), .I3(\Inst_MPU6500_Controller/delay_cntr [16]), 
            .O(\Inst_MPU6500_Controller/n740 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__699.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__700 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(n379), 
            .I2(n384), .O(n386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__700.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__701 (.I0(n332), .I1(n386), .I2(n327), .I3(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .O(\Inst_MPU6500_Controller/n740 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__701.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__702 (.I0(\Inst_MPU6500_Controller/delay_cntr [17]), .I1(n386), 
            .O(n387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__702.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__703 (.I0(n332), .I1(n361), .I2(n387), .I3(\Inst_MPU6500_Controller/delay_cntr [18]), 
            .O(\Inst_MPU6500_Controller/n740 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__703.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__704 (.I0(\Inst_MPU6500_Controller/delay_cntr [16]), .I1(\Inst_MPU6500_Controller/delay_cntr [17]), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [18]), .I3(n384), .O(n388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__704.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__705 (.I0(n379), .I1(n388), .O(n389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__705.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__706 (.I0(n351), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .O(n390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__706.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__707 (.I0(n331), .I1(n389), .I2(n390), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__707.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__708 (.I0(n391), .I1(\Inst_MPU6500_Controller/delay_cntr [19]), 
            .I2(n389), .I3(n355), .O(\Inst_MPU6500_Controller/n740 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__708.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__709 (.I0(\Inst_MPU6500_Controller/delay_cntr [19]), .I1(n379), 
            .I2(n388), .O(n392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__709.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__710 (.I0(n351), .I1(n331), .I2(n392), .I3(\Inst_MPU6500_Controller/delay_cntr [20]), 
            .O(n393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hea3f */ ;
    defparam LUT__710.LUTMASK = 16'hea3f;
    EFX_LUT4 LUT__711 (.I0(\Inst_MPU6500_Controller/delay_cntr [20]), .I1(n392), 
            .O(n394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__711.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__712 (.I0(n394), .I1(n355), .I2(n393), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n740 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__712.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__713 (.I0(\Inst_MPU6500_Controller/delay_cntr [20]), .I1(n331), 
            .O(n395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__713.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__714 (.I0(n351), .I1(n392), .I2(n395), .I3(\Inst_MPU6500_Controller/delay_cntr [21]), 
            .O(n396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hea3f */ ;
    defparam LUT__714.LUTMASK = 16'hea3f;
    EFX_LUT4 LUT__715 (.I0(\Inst_MPU6500_Controller/delay_cntr [20]), .I1(n392), 
            .I2(\Inst_MPU6500_Controller/delay_cntr [21]), .O(n397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__715.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__716 (.I0(n397), .I1(n355), .I2(n396), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(\Inst_MPU6500_Controller/n740 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__716.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__717 (.I0(\Inst_MPU6500_Controller/config_idx [0]), .I1(\Inst_MPU6500_Controller/config_idx [1]), 
            .O(n398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__717.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__718 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[1]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__718.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__719 (.I0(n398), .I1(n306), .I2(n399), .O(\Inst_MPU6500_Controller/n768 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__719.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__720 (.I0(n398), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n768 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__720.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__721 (.I0(\Inst_MPU6500_Controller/state [0]), .I1(\Inst_MPU6500_Controller/state [1]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(ceg_net808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc154 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(26)
    defparam LUT__721.LUTMASK = 16'hc154;
    EFX_LUT4 LUT__722 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n398), 
            .I2(\Inst_MPU6500_Controller/state [2]), .O(n400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__722.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__723 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(mpu_to_spi_data[3]), 
            .I2(n335), .I3(n400), .O(\Inst_MPU6500_Controller/n768 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__723.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__724 (.I0(\Inst_MPU6500_Controller/config_idx [1]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .O(n401)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__724.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__725 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [0]), 
            .I2(\Inst_MPU6500_Controller/config_idx [1]), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(\Inst_MPU6500_Controller/n731 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__725.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__726 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[4]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__726.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__727 (.I0(n401), .I1(n306), .I2(\Inst_MPU6500_Controller/n731 [1]), 
            .I3(n402), .O(\Inst_MPU6500_Controller/n768 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff4 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__727.LUTMASK = 16'hfff4;
    EFX_LUT4 LUT__728 (.I0(n306), .I1(n401), .O(\Inst_MPU6500_Controller/n768 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__728.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__729 (.I0(\Inst_MPU6500_Controller/state [2]), .I1(mpu_to_spi_data[5]), 
            .I2(\Inst_MPU6500_Controller/state [1]), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(n403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__729.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__730 (.I0(\Inst_MPU6500_Controller/n768 [6]), .I1(n403), 
            .O(\Inst_MPU6500_Controller/n768 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__730.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__731 (.I0(\Inst_MPU6500_Controller/state [1]), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n768 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__731.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__732 (.I0(\Inst_MPU6500_Controller/byte_cntr [0]), .I1(spi_data_valid), 
            .O(n404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__732.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__733 (.I0(n329), .I1(\Inst_MPU6500_Controller/byte_cntr [1]), 
            .I2(n404), .I3(n335), .O(\Inst_MPU6500_Controller/n735 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__733.LUTMASK = 16'h1c00;
    EFX_LUT4 LUT__734 (.I0(\Inst_MPU6500_Controller/byte_cntr [1]), .I1(n404), 
            .O(n405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__734.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__735 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n405), 
            .I2(n335), .O(\Inst_MPU6500_Controller/n735 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__735.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__736 (.I0(\Inst_MPU6500_Controller/byte_cntr [2]), .I1(n405), 
            .I2(\Inst_MPU6500_Controller/byte_cntr [3]), .I3(n335), .O(\Inst_MPU6500_Controller/n735 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__736.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__737 (.I0(n338), .I1(n349), .I2(\Inst_MPU6500_Controller/state [1]), 
            .I3(\Inst_MPU6500_Controller/state [2]), .O(n406)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf03 */ ;
    defparam LUT__737.LUTMASK = 16'haf03;
    EFX_LUT4 LUT__738 (.I0(n308), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n328), .I3(n307), .O(n407)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__738.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__739 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(n407), 
            .I2(n406), .I3(n356), .O(\Inst_MPU6500_Controller/n763 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f44 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__739.LUTMASK = 16'h4f44;
    EFX_LUT4 LUT__740 (.I0(n307), .I1(n338), .I2(n330), .I3(\Inst_MPU6500_Controller/state [2]), 
            .O(n408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__740.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__741 (.I0(n408), .I1(\Inst_MPU6500_Controller/state [2]), 
            .I2(n328), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n763 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haa3c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__741.LUTMASK = 16'haa3c;
    EFX_LUT4 LUT__742 (.I0(n318), .I1(n313), .I2(n316), .O(n409)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__742.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__743 (.I0(n409), .I1(n334), .I2(n345), .I3(\Inst_MPU6500_Controller/state [3]), 
            .O(ceg_net813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__743.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__744 (.I0(n308), .I1(\Inst_MPU6500_Controller/state [0]), 
            .I2(n309), .I3(\Inst_MPU6500_Controller/state [3]), .O(\Inst_MPU6500_Controller/n763 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__744.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__745 (.I0(spi_data_valid), .I1(\Inst_MPU6500_Controller/state [3]), 
            .I2(n325), .O(n410)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__745.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__746 (.I0(n360), .I1(ceg_net813), .I2(n410), .O(ceg_net814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;
    defparam LUT__746.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__747 (.I0(\Inst_MPU6500_Controller/state [3]), .I1(\Inst_MPU6500_Controller/config_idx [2]), 
            .I2(n398), .I3(\Inst_MPU6500_Controller/state [2]), .O(\Inst_MPU6500_Controller/n731 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/MPU6500.vhd(251)
    defparam LUT__747.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__748 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(n411)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__748.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__749 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(n411), 
            .O(\Inst_Spi_Mode_3/n129 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__749.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__750 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [2]), .O(n412)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__750.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__751 (.I0(\Inst_Spi_Mode_3/bitcounter [3]), .I1(n412), 
            .O(n413)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__751.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__752 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .I2(n413), .O(ceg_net291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__752.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__753 (.I0(spi_start), .I1(n411), .O(n414)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__753.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__754 (.I0(n413), .I1(n411), .I2(n414), .O(ceg_net822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(225)
    defparam LUT__754.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__755 (.I0(mpu_to_spi_data[0]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__755.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__756 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n413), .O(n415)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__756.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__757 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n416)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__757.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__758 (.I0(n416), .I1(n415), .I2(n414), .O(ceg_net670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__758.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__759 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__759.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__760 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n416), .O(n417)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__760.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__761 (.I0(n417), .I1(n413), .I2(\Inst_Spi_Mode_3/state [1]), 
            .I3(\Inst_Spi_Mode_3/state [0]), .O(ceg_net671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(54)
    defparam LUT__761.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__762 (.I0(\Inst_Spi_Mode_3/state [1]), .I1(\Inst_Spi_Mode_3/state [0]), 
            .O(\~ceg_net299 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__762.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__763 (.I0(n411), .I1(n413), .O(ceg_net672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__763.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__764 (.I0(\Inst_Spi_Mode_3/data_buffer [7]), .I1(\Inst_Spi_Mode_3/data_buffer [5]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n418)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__764.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__765 (.I0(\Inst_Spi_Mode_3/data_buffer [6]), .I1(\Inst_Spi_Mode_3/data_buffer [4]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n418), .O(n419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__765.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__766 (.I0(\Inst_Spi_Mode_3/data_buffer [3]), .I1(\Inst_Spi_Mode_3/data_buffer [1]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(\Inst_Spi_Mode_3/bit_idx [1]), 
            .O(n420)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__766.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__767 (.I0(\Inst_Spi_Mode_3/data_buffer [2]), .I1(\Inst_Spi_Mode_3/data_buffer [0]), 
            .I2(\Inst_Spi_Mode_3/bit_idx [0]), .I3(n420), .O(n421)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__767.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__768 (.I0(n421), .I1(n419), .I2(\Inst_Spi_Mode_3/bit_idx [2]), 
            .O(\Inst_Spi_Mode_3/n25 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(88)
    defparam LUT__768.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__769 (.I0(\~ceg_net299 ), .I1(n413), .O(\Inst_Spi_Mode_3/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(406)
    defparam LUT__769.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__770 (.I0(mpu_to_spi_data[1]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__770.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__771 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n415), .I3(n414), .O(ceg_net673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__771.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__772 (.I0(mpu_to_spi_data[2]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__772.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__773 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n415), .I3(n414), .O(ceg_net674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__773.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__774 (.I0(mpu_to_spi_data[3]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__774.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__775 (.I0(n415), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n414), .O(ceg_net675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__775.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__776 (.I0(mpu_to_spi_data[4]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__776.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__777 (.I0(\Inst_Spi_Mode_3/state [0]), .I1(\Inst_Spi_Mode_3/bit_idx [2]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .I3(n413), .O(n422)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__777.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__778 (.I0(n422), .I1(n416), .I2(n414), .O(ceg_net676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__778.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__779 (.I0(mpu_to_spi_data[5]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__779.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__780 (.I0(\Inst_Spi_Mode_3/bit_idx [1]), .I1(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I2(n422), .I3(n414), .O(ceg_net677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__780.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__781 (.I0(mpu_to_spi_data[6]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__781.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__782 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(n422), .I3(n414), .O(ceg_net678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__782.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__783 (.I0(mpu_to_spi_data[7]), .I1(miso_i), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n135 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__783.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__784 (.I0(n422), .I1(\Inst_Spi_Mode_3/bit_idx [1]), .I2(\Inst_Spi_Mode_3/bit_idx [0]), 
            .I3(n414), .O(ceg_net679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__784.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__785 (.I0(n411), .I1(\Inst_Spi_Mode_3/bitcounter [0]), 
            .I2(\Inst_Spi_Mode_3/bitcounter [1]), .O(\Inst_Spi_Mode_3/n129 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__785.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__786 (.I0(\Inst_Spi_Mode_3/bitcounter [0]), .I1(\Inst_Spi_Mode_3/bitcounter [1]), 
            .I2(n411), .I3(\Inst_Spi_Mode_3/bitcounter [2]), .O(\Inst_Spi_Mode_3/n129 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__786.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__787 (.I0(n411), .I1(\Inst_Spi_Mode_3/bitcounter [3]), 
            .I2(n412), .O(\Inst_Spi_Mode_3/n129 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__787.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__788 (.I0(\Inst_Spi_Mode_3/bit_idx [0]), .I1(\Inst_Spi_Mode_3/bit_idx [1]), 
            .I2(\Inst_Spi_Mode_3/state [1]), .O(\Inst_Spi_Mode_3/n124 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__788.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__789 (.I0(\Inst_Spi_Mode_3/bit_idx [2]), .I1(n416), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n124 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6f6f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__789.LUTMASK = 16'h6f6f;
    EFX_LUT4 LUT__790 (.I0(n417), .I1(\Inst_Spi_Mode_3/state [0]), .I2(\Inst_Spi_Mode_3/state [1]), 
            .O(\Inst_Spi_Mode_3/n144 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/Spi_Mode_3.vhd(119)
    defparam LUT__790.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__791 (.I0(\Inst_pwm_servo_0/counter [1]), .I1(\Inst_pwm_servo_0/counter [2]), 
            .I2(\Inst_pwm_servo_0/counter [3]), .O(n423)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__791.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__792 (.I0(\Inst_pwm_servo_0/counter [6]), .I1(\Inst_pwm_servo_0/counter [7]), 
            .I2(\Inst_pwm_servo_0/counter [8]), .I3(\Inst_pwm_servo_0/counter [9]), 
            .O(n424)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__792.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__793 (.I0(\Inst_pwm_servo_0/counter [4]), .I1(n423), .I2(\Inst_pwm_servo_0/counter [5]), 
            .I3(n424), .O(n425)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__793.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__794 (.I0(n425), .I1(\Inst_pwm_servo_0/counter [10]), .I2(\Inst_pwm_servo_0/counter [11]), 
            .I3(\Inst_pwm_servo_0/counter [12]), .O(n426)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__794.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__795 (.I0(\Inst_pwm_servo_0/counter [14]), .I1(\Inst_pwm_servo_0/counter [15]), 
            .I2(\Inst_pwm_servo_0/counter [16]), .I3(\Inst_pwm_servo_0/counter [18]), 
            .O(n427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__795.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__796 (.I0(\Inst_pwm_servo_0/counter [18]), .I1(\Inst_pwm_servo_0/counter [17]), 
            .I2(\Inst_pwm_servo_0/counter [19]), .O(n428)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__796.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__797 (.I0(n426), .I1(\Inst_pwm_servo_0/counter [13]), .I2(n427), 
            .I3(n428), .O(n429)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__797.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__798 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [5]), .O(\Inst_pwm_servo_0/n63 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__798.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__799 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [4]), .O(\Inst_pwm_servo_0/n63 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__799.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__800 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [3]), .O(\Inst_pwm_servo_0/n63 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__800.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__801 (.I0(\Inst_pwm_servo_0/counter [0]), .I1(n429), .O(\Inst_pwm_servo_0/n63 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__801.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__802 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [2]), .O(\Inst_pwm_servo_0/n63 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__802.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__803 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [1]), .O(\Inst_pwm_servo_0/n63 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__803.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__804 (.I0(\Inst_pwm_servo_0/counter [5]), .I1(\Inst_pwm_servo_0/counter [6]), 
            .I2(\Inst_pwm_servo_0/counter [7]), .O(n430)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__804.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__805 (.I0(n423), .I1(\Inst_pwm_servo_0/counter [4]), .I2(n430), 
            .O(n431)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__805.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__806 (.I0(\Inst_pwm_servo_0/counter [10]), .I1(\Inst_pwm_servo_0/counter [11]), 
            .I2(\Inst_pwm_servo_0/counter [12]), .I3(\Inst_pwm_servo_0/counter [13]), 
            .O(n432)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__806.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__807 (.I0(n431), .I1(\Inst_pwm_servo_0/counter [8]), .I2(\Inst_pwm_servo_0/counter [9]), 
            .I3(n432), .O(n433)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__807.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__808 (.I0(\Inst_pwm_servo_0/counter [15]), .I1(\Inst_pwm_servo_0/counter [16]), 
            .I2(\Inst_pwm_servo_0/counter [18]), .I3(\Inst_pwm_servo_0/counter [19]), 
            .O(n434)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__808.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__809 (.I0(n433), .I1(\Inst_pwm_servo_0/counter [14]), .I2(\Inst_pwm_servo_0/counter [17]), 
            .I3(n434), .O(\Inst_pwm_servo_0/n86 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(49)
    defparam LUT__809.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__810 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [6]), .O(\Inst_pwm_servo_0/n63 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__810.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__811 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [7]), .O(\Inst_pwm_servo_0/n63 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__811.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__812 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [8]), .O(\Inst_pwm_servo_0/n63 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__812.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__813 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [9]), .O(\Inst_pwm_servo_0/n63 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__813.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__814 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [10]), .O(\Inst_pwm_servo_0/n63 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__814.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__815 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [11]), .O(\Inst_pwm_servo_0/n63 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__815.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__816 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [12]), .O(\Inst_pwm_servo_0/n63 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__816.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__817 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [13]), .O(\Inst_pwm_servo_0/n63 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__817.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__818 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [14]), .O(\Inst_pwm_servo_0/n63 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__818.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__819 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [15]), .O(\Inst_pwm_servo_0/n63 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__819.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__820 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [16]), .O(\Inst_pwm_servo_0/n63 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__820.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__821 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [17]), .O(\Inst_pwm_servo_0/n63 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__821.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__822 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [18]), .O(\Inst_pwm_servo_0/n63 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__822.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__823 (.I0(n429), .I1(\Inst_pwm_servo_0/n42 [19]), .O(\Inst_pwm_servo_0/n63 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/pwm_servo.vhdl(47)
    defparam LUT__823.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__824 (.I0(\Inst_debounce/count_reg [6]), .I1(\Inst_debounce/count_reg [7]), 
            .I2(\Inst_debounce/count_reg [8]), .I3(\Inst_debounce/count_reg [9]), 
            .O(n435)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__824.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__825 (.I0(\Inst_debounce/count_reg [10]), .I1(\Inst_debounce/count_reg [11]), 
            .I2(\Inst_debounce/count_reg [12]), .I3(\Inst_debounce/count_reg [13]), 
            .O(n436)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__825.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__826 (.I0(n435), .I1(n436), .I2(\Inst_debounce/count_reg [14]), 
            .I3(\Inst_debounce/count_reg [15]), .O(n437)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__826.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__827 (.I0(\Inst_debounce/count_reg [16]), .I1(\Inst_debounce/count_reg [17]), 
            .I2(\Inst_debounce/count_reg [18]), .I3(\Inst_debounce/count_reg [19]), 
            .O(n438)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__827.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__828 (.I0(n437), .I1(n438), .O(n439)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__828.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__829 (.I0(n439), .I1(\Inst_debounce/sync_1 ), .I2(switch_out), 
            .I3(rst_n_i), .O(\Inst_debounce/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(383)
    defparam LUT__829.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__830 (.I0(\Inst_debounce/sync_1 ), .I1(switch_out), .I2(n439), 
            .O(\Inst_debounce/n149 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/omer-ahin/STAJ/Staj_Projesi/top.vhd(383)
    defparam LUT__830.LUTMASK = 16'h9f9f;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk_i), .O(\clk_i~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_2e1601ae_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_2e1601ae_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_2e1601ae_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_2e1601ae_0
// module not written out since it is a black box. 
//

