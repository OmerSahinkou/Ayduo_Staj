
//
// Verific Verilog Description of module top
//

module top (clk, rst_n, led1) /* verific EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/omer-ahin/STAJ/T8F81/top.v(3)
    input rst_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/omer-ahin/STAJ/T8F81/top.v(4)
    output led1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/omer-ahin/STAJ/T8F81/top.v(5)
    
    wire [23:0]\clk_divider_i/n8 ;
    
    wire \clk_divider_i/add_18/n2 , \clk~O , \clk_divider_i/add_18/n4 ;
    wire [23:0]\clk_divider_i/bitcounter ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(36)
    
    wire \clk_divider_i/add_18/n6 , clk_out, \clk_divider_i/add_18/n8 , 
        \clk_divider_i/add_18/n44 , \clk_divider_i/add_18/n42 , \clk_divider_i/add_18/n40 , 
        \clk_divider_i/add_18/n38 , \clk_divider_i/add_18/n36 , \clk_divider_i/add_18/n34 , 
        \clk_divider_i/add_18/n32 , \clk_divider_i/add_18/n30 , \clk_divider_i/add_18/n28 , 
        \clk_divider_i/add_18/n26 , \clk_divider_i/add_18/n24 , \clk_divider_i/add_18/n22 , 
        \clk_divider_i/add_18/n20 , \clk_divider_i/add_18/n18 , \clk_divider_i/add_18/n16 , 
        \clk_divider_i/add_18/n14 , \clk_divider_i/add_18/n12 , \clk_divider_i/add_18/n10 , 
        \clk_divider_i/n139 , \clk_divider_i/n6 , n81, n82, n83, n84, 
        n85, n86, n87, n88, n89, n90, n91, n91_q, n84_q, n87_q;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n24_q_2 ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n19_q_2 ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n18_q_2 ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n9_q_2 ;
    
    wire n90_q_2, n89_q_2, n88_q_2, n83_q_2, n81_q_2, n82_q_2, n86_q_2, 
        n85_q_2;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n31_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n30_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n29_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n28_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n27_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n26_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n25_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n24_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n23_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n22_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n21_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n20_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n19_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n18_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n17_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n16_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n15_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n14_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n13_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n12_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n11_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n10_q ;
    wire [23:0]\clk_divider_i/n8clk_divider_i/n9_q ;
    
    EFX_LUT4 LUT__223 (.I0(\clk_divider_i/n8clk_divider_i/n28_q [4]), .I1(\clk_divider_i/n8clk_divider_i/n27_q [5]), 
            .I2(\clk_divider_i/n8clk_divider_i/n26_q [6]), .O(n81)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__223.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__224 (.I0(\clk_divider_i/n8clk_divider_i/n30_q [2]), .I1(\clk_divider_i/n8clk_divider_i/n29_q [3]), 
            .I2(\clk_divider_i/bitcounter [0]), .I3(\clk_divider_i/n8clk_divider_i/n31_q [1]), 
            .O(n82)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0080 */ ;
    defparam LUT__224.LUTMASK = 16'h0080;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55  (.D(\clk_divider_i/n8 [14]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n18_q [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_55 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54  (.D(\clk_divider_i/n8 [13]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n19_q [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_54 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[0]~FF  (.D(\clk_divider_i/bitcounter [0]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/bitcounter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[0]~FF .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[0]~FF .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \led1~FF  (.D(clk_out), .CE(1'b1), .CLK(\clk~O ), .SR(rst_n), 
           .Q(led1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/top.v(26)
    defparam \led1~FF .CLK_POLARITY = 1'b1;
    defparam \led1~FF .CE_POLARITY = 1'b1;
    defparam \led1~FF .SR_POLARITY = 1'b0;
    defparam \led1~FF .D_POLARITY = 1'b1;
    defparam \led1~FF .SR_SYNC = 1'b0;
    defparam \led1~FF .SR_VALUE = 1'b0;
    defparam \led1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56  (.D(\clk_divider_i/n8 [15]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n17_q [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_56 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_out~FF  (.D(clk_out), .CE(\clk_divider_i/n6 ), .CLK(\clk~O ), 
           .SR(rst_n), .Q(clk_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_out~FF .CLK_POLARITY = 1'b1;
    defparam \clk_out~FF .CE_POLARITY = 1'b0;
    defparam \clk_out~FF .SR_POLARITY = 1'b0;
    defparam \clk_out~FF .D_POLARITY = 1'b0;
    defparam \clk_out~FF .SR_SYNC = 1'b1;
    defparam \clk_out~FF .SR_VALUE = 1'b0;
    defparam \clk_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53  (.D(\clk_divider_i/n8 [12]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n20_q [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_53 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52  (.D(\clk_divider_i/n8 [11]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n21_q [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_52 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51  (.D(\clk_divider_i/n8 [10]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n22_q [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_51 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50  (.D(\clk_divider_i/n8 [9]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n23_q [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_50 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49  (.D(\clk_divider_i/n8 [8]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n24_q [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_49 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48  (.D(\clk_divider_i/n8 [7]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n25_q [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_48 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47  (.D(\clk_divider_i/n8 [6]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n26_q [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_47 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46  (.D(\clk_divider_i/n8 [5]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n27_q [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_46 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45  (.D(\clk_divider_i/n8 [4]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n28_q [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_45 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44  (.D(\clk_divider_i/n8 [3]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n29_q [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_44 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43  (.D(\clk_divider_i/n8 [2]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n30_q [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_43 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42  (.D(\clk_divider_i/n8 [1]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n31_q [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_42 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41  (.D(n85), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n85_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_20_frt_41 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40  (.D(n86), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n86_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_25_frt_40 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39  (.D(n82), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n82_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_12_frt_39 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38  (.D(n81), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n81_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_14_frt_38 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37  (.D(n83), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n83_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_17_frt_37 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36  (.D(n88), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n88_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_26_frt_36 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35  (.D(n89), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n89_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_29_frt_35 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34  (.D(n90), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n90_q_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_31_frt_34 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i1  (.I0(\clk_divider_i/n8clk_divider_i/n31_q [1]), 
            .I1(\clk_divider_i/bitcounter [0]), .CI(1'b0), .O(\clk_divider_i/n8 [1]), 
            .CO(\clk_divider_i/add_18/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b0, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i1 .I0_POLARITY = 1'b0;
    defparam \clk_divider_i/add_18/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i2  (.I0(\clk_divider_i/n8clk_divider_i/n30_q [2]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n2 ), .O(\clk_divider_i/n8 [2]), 
            .CO(\clk_divider_i/add_18/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i2 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i3  (.I0(\clk_divider_i/n8clk_divider_i/n29_q [3]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n4 ), .O(\clk_divider_i/n8 [3]), 
            .CO(\clk_divider_i/add_18/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i3 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i4  (.I0(\clk_divider_i/n8clk_divider_i/n28_q [4]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n6 ), .O(\clk_divider_i/n8 [4]), 
            .CO(\clk_divider_i/add_18/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i4 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i23  (.I0(\clk_divider_i/n8clk_divider_i/n9_q [23]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n44 ), .O(\clk_divider_i/n8 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i23 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i22  (.I0(\clk_divider_i/n8clk_divider_i/n10_q [22]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n42 ), .O(\clk_divider_i/n8 [22]), 
            .CO(\clk_divider_i/add_18/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i22 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i21  (.I0(\clk_divider_i/n8clk_divider_i/n11_q [21]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n40 ), .O(\clk_divider_i/n8 [21]), 
            .CO(\clk_divider_i/add_18/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i21 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i20  (.I0(\clk_divider_i/n8clk_divider_i/n12_q [20]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n38 ), .O(\clk_divider_i/n8 [20]), 
            .CO(\clk_divider_i/add_18/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i20 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i19  (.I0(\clk_divider_i/n8clk_divider_i/n13_q [19]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n36 ), .O(\clk_divider_i/n8 [19]), 
            .CO(\clk_divider_i/add_18/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i19 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i18  (.I0(\clk_divider_i/n8clk_divider_i/n14_q [18]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n34 ), .O(\clk_divider_i/n8 [18]), 
            .CO(\clk_divider_i/add_18/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i18 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i17  (.I0(\clk_divider_i/n8clk_divider_i/n15_q [17]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n32 ), .O(\clk_divider_i/n8 [17]), 
            .CO(\clk_divider_i/add_18/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i17 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i16  (.I0(\clk_divider_i/n8clk_divider_i/n16_q [16]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n30 ), .O(\clk_divider_i/n8 [16]), 
            .CO(\clk_divider_i/add_18/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i16 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i15  (.I0(\clk_divider_i/n8clk_divider_i/n17_q [15]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n28 ), .O(\clk_divider_i/n8 [15]), 
            .CO(\clk_divider_i/add_18/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i15 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i14  (.I0(\clk_divider_i/n8clk_divider_i/n18_q [14]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n26 ), .O(\clk_divider_i/n8 [14]), 
            .CO(\clk_divider_i/add_18/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i14 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i13  (.I0(\clk_divider_i/n8clk_divider_i/n19_q [13]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n24 ), .O(\clk_divider_i/n8 [13]), 
            .CO(\clk_divider_i/add_18/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i13 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i12  (.I0(\clk_divider_i/n8clk_divider_i/n20_q [12]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n22 ), .O(\clk_divider_i/n8 [12]), 
            .CO(\clk_divider_i/add_18/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i12 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i11  (.I0(\clk_divider_i/n8clk_divider_i/n21_q [11]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n20 ), .O(\clk_divider_i/n8 [11]), 
            .CO(\clk_divider_i/add_18/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i11 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i10  (.I0(\clk_divider_i/n8clk_divider_i/n22_q [10]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n18 ), .O(\clk_divider_i/n8 [10]), 
            .CO(\clk_divider_i/add_18/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i10 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i9  (.I0(\clk_divider_i/n8clk_divider_i/n23_q [9]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n16 ), .O(\clk_divider_i/n8 [9]), 
            .CO(\clk_divider_i/add_18/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i9 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i8  (.I0(\clk_divider_i/n8clk_divider_i/n24_q [8]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n14 ), .O(\clk_divider_i/n8 [8]), 
            .CO(\clk_divider_i/add_18/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i8 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i7  (.I0(\clk_divider_i/n8clk_divider_i/n25_q [7]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n12 ), .O(\clk_divider_i/n8 [7]), 
            .CO(\clk_divider_i/add_18/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i7 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i6  (.I0(\clk_divider_i/n8clk_divider_i/n26_q [6]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n10 ), .O(\clk_divider_i/n8 [6]), 
            .CO(\clk_divider_i/add_18/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i6 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \clk_divider_i/add_18/i5  (.I0(\clk_divider_i/n8clk_divider_i/n27_q [5]), 
            .I1(1'b0), .CI(\clk_divider_i/add_18/n8 ), .O(\clk_divider_i/n8 [5]), 
            .CO(\clk_divider_i/add_18/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(44)
    defparam \clk_divider_i/add_18/i5 .I0_POLARITY = 1'b1;
    defparam \clk_divider_i/add_18/i5 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__225 (.I0(\clk_divider_i/n8clk_divider_i/n25_q [7]), .I1(\clk_divider_i/n8clk_divider_i/n21_q [11]), 
            .I2(\clk_divider_i/n8clk_divider_i/n19_q [13]), .I3(\clk_divider_i/n8clk_divider_i/n18_q [14]), 
            .O(n83)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__225.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__226 (.I0(n82_q_2), .I1(n81_q_2), .I2(\clk_divider_i/n8clk_divider_i/n24_q_2 [8]), 
            .I3(n83_q_2), .O(n84)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__226.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__227 (.I0(\clk_divider_i/n8clk_divider_i/n22_q [10]), .I1(\clk_divider_i/n8clk_divider_i/n23_q [9]), 
            .I2(\clk_divider_i/n8clk_divider_i/n21_q [11]), .I3(\clk_divider_i/n8clk_divider_i/n20_q [12]), 
            .O(n85)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__227.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__228 (.I0(\clk_divider_i/n8clk_divider_i/n17_q [15]), .I1(\clk_divider_i/n8clk_divider_i/n13_q [19]), 
            .I2(\clk_divider_i/n8clk_divider_i/n12_q [20]), .I3(\clk_divider_i/n8clk_divider_i/n9_q [23]), 
            .O(n86)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__228.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__229 (.I0(\clk_divider_i/n8clk_divider_i/n19_q_2 [13]), .I1(\clk_divider_i/n8clk_divider_i/n18_q_2 [14]), 
            .I2(n85_q_2), .I3(n86_q_2), .O(n87)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__229.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__230 (.I0(\clk_divider_i/n8clk_divider_i/n16_q [16]), .I1(\clk_divider_i/n8clk_divider_i/n15_q [17]), 
            .I2(\clk_divider_i/n8clk_divider_i/n14_q [18]), .O(n88)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__230.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__231 (.I0(\clk_divider_i/n8clk_divider_i/n13_q [19]), .I1(\clk_divider_i/n8clk_divider_i/n12_q [20]), 
            .O(n89)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__231.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__232 (.I0(\clk_divider_i/n8clk_divider_i/n11_q [21]), .I1(\clk_divider_i/n8clk_divider_i/n10_q [22]), 
            .O(n90)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__232.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__233 (.I0(n88_q_2), .I1(n89_q_2), .I2(n90_q_2), .I3(\clk_divider_i/n8clk_divider_i/n9_q_2 [23]), 
            .O(n91)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__233.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__234 (.I0(n87_q), .I1(n84_q), .I2(n91_q), .I3(rst_n), 
            .O(\clk_divider_i/n139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;   // /home/omer-ahin/STAJ/T8F81/top.v(15)
    defparam LUT__234.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__235 (.I0(n87_q), .I1(n84_q), .I2(n91_q), .O(\clk_divider_i/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(43)
    defparam LUT__235.LUTMASK = 16'h0707;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_18  (.D(\clk_divider_i/n8clk_divider_i/n24_q [8]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n24_q_2 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_18 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8  (.D(n91), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n91_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[16]~FF_frt_2_frt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9  (.D(n84), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n84_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .D_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[2]~FF_frt_5_frt_9 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[13]~FF_frt_10  (.D(n87), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(n87_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[13]~FF_frt_10 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_23  (.D(\clk_divider_i/n8clk_divider_i/n19_q [13]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n19_q_2 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_23 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_24  (.D(\clk_divider_i/n8clk_divider_i/n18_q [14]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n18_q_2 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_24 .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_33  (.D(\clk_divider_i/n8clk_divider_i/n9_q [23]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n9_q_2 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_33 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57  (.D(\clk_divider_i/n8 [16]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n16_q [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_57 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58  (.D(\clk_divider_i/n8 [17]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n15_q [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_58 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59  (.D(\clk_divider_i/n8 [18]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n14_q [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_59 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60  (.D(\clk_divider_i/n8 [19]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n13_q [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_60 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61  (.D(\clk_divider_i/n8 [20]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n12_q [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_61 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62  (.D(\clk_divider_i/n8 [21]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n11_q [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_62 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63  (.D(\clk_divider_i/n8 [22]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n10_q [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_63 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64  (.D(\clk_divider_i/n8 [23]), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\clk_divider_i/n139 ), .Q(\clk_divider_i/n8clk_divider_i/n9_q [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/omer-ahin/STAJ/T8F81/Led_Test.v(50)
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .CLK_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .CE_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .SR_POLARITY = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .D_POLARITY = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .SR_SYNC = 1'b1;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .SR_VALUE = 1'b0;
    defparam \clk_divider_i/bitcounter[1]~FF_frt_11_frt_64 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_c677216d_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c677216d_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c677216d_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c677216d_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c677216d_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_c677216d_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_c677216d_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c677216d_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_c677216d_0
// module not written out since it is a black box. 
//

