`define IP_UUID _449a7b9bfbac46b2a2d60d871e2fb599
`define IP_NAME_CONCAT(a,b) a``b
`define IP_MODULE_NAME(name) `IP_NAME_CONCAT(name,`IP_UUID)

module efx_mac1gbe_exp_apb_decoder #(
   parameter ADDR_WIDTH = 24,
   parameter DATA_WIDTH = 32
)
(
   input  logic                   rst_n,
   input  logic                   user_apb_clk,
   input  logic [ADDR_WIDTH-1:0]  user_apb_paddr_i,
   input  logic                   user_apb_psel_i,
   input  logic                   user_apb_penable_i,
   input  logic                   user_apb_pwrite_i,
   input  logic [DATA_WIDTH-1:0]  user_apb_pwdata_i,
   output logic [DATA_WIDTH-1:0]  user_apb_prdata_o,
   output logic                   user_apb_pready_o,
   output logic                   user_apb_pslverr_o,

   output logic [ADDR_WIDTH-1:0]  l0_mac_apb_paddr_o,
   output logic                   l0_mac_apb_psel_o,
   output logic                   l0_mac_apb_penable_o,
   output logic                   l0_mac_apb_pwrite_o,
   output logic [DATA_WIDTH-1:0]  l0_mac_apb_pwdata_o,
   input  logic [DATA_WIDTH-1:0]  l0_mac_apb_prdata_i,
   input  logic                   l0_mac_apb_pready_i,
   input  logic                   l0_mac_apb_pslverr_i,

   output logic [ADDR_WIDTH-1:0]  l3_mac_apb_paddr_o,
   output logic                   l3_mac_apb_psel_o,
   output logic                   l3_mac_apb_penable_o,
   output logic                   l3_mac_apb_pwrite_o,
   output logic [DATA_WIDTH-1:0]  l3_mac_apb_pwdata_o,
   input  logic [DATA_WIDTH-1:0]  l3_mac_apb_prdata_i,
   input  logic                   l3_mac_apb_pready_i,
   input  logic                   l3_mac_apb_pslverr_i,

   output logic [ADDR_WIDTH-1:0]  serdes_apb_paddr_o,
   output logic                   serdes_apb_psel_o,
   output logic                   serdes_apb_penable_o,
   output logic                   serdes_apb_pwrite_o,
   output logic [DATA_WIDTH-1:0]  serdes_apb_pwdata_o,
   input  logic [DATA_WIDTH-1:0]  serdes_apb_prdata_i,
   input  logic                   serdes_apb_pready_i,
   input  logic                   serdes_apb_pslverr_i
);

`IP_MODULE_NAME(efx_mac1gbe_exp_apb_decoder) #(
   .ADDR_WIDTH (ADDR_WIDTH),
   .DATA_WIDTH (DATA_WIDTH)
) inst_apb_decoder (
   .rst_n              (rst_n),
   .user_apb_clk       (user_apb_clk),
   .user_apb_paddr_i   (user_apb_paddr_i),
   .user_apb_psel_i    (user_apb_psel_i),
   .user_apb_penable_i (user_apb_penable_i),
   .user_apb_pwrite_i  (user_apb_pwrite_i),
   .user_apb_pwdata_i  (user_apb_pwdata_i),
   .user_apb_prdata_o  (user_apb_prdata_o),
   .user_apb_pready_o  (user_apb_pready_o),
   .user_apb_pslverr_o (user_apb_pslverr_o),

   .l0_mac_apb_paddr_o   (l0_mac_apb_paddr_o),
   .l0_mac_apb_psel_o    (l0_mac_apb_psel_o),
   .l0_mac_apb_penable_o (l0_mac_apb_penable_o),
   .l0_mac_apb_pwrite_o  (l0_mac_apb_pwrite_o),
   .l0_mac_apb_pwdata_o  (l0_mac_apb_pwdata_o),
   .l0_mac_apb_prdata_i  (l0_mac_apb_prdata_i),
   .l0_mac_apb_pready_i  (l0_mac_apb_pready_i),
   .l0_mac_apb_pslverr_i (l0_mac_apb_pslverr_i),

   .l3_mac_apb_paddr_o   (l3_mac_apb_paddr_o),
   .l3_mac_apb_psel_o    (l3_mac_apb_psel_o),
   .l3_mac_apb_penable_o (l3_mac_apb_penable_o),
   .l3_mac_apb_pwrite_o  (l3_mac_apb_pwrite_o),
   .l3_mac_apb_pwdata_o  (l3_mac_apb_pwdata_o),
   .l3_mac_apb_prdata_i  (l3_mac_apb_prdata_i),
   .l3_mac_apb_pready_i  (l3_mac_apb_pready_i),
   .l3_mac_apb_pslverr_i (l3_mac_apb_pslverr_i),

   .serdes_apb_paddr_o   (serdes_apb_paddr_o),
   .serdes_apb_psel_o    (serdes_apb_psel_o),
   .serdes_apb_penable_o (serdes_apb_penable_o),
   .serdes_apb_pwrite_o  (serdes_apb_pwrite_o),
   .serdes_apb_pwdata_o  (serdes_apb_pwdata_o),
   .serdes_apb_prdata_i  (serdes_apb_prdata_i),
   .serdes_apb_pready_i  (serdes_apb_pready_i),
   .serdes_apb_pslverr_i (serdes_apb_pslverr_i)
);
endmodule


//pragma protect
//pragma protect begin

/* Encryption Envelope */

`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "QuestaSim" , encrypt_agent_info = "2021.1"
`pragma protect key_keyowner = "Efinix Inc." , key_keyname = "EFX_K01"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
fl4qYIp7r44tGhiWJ3kqF+fZpnt7fNx+/fGVUp08U99NMO3XtYiQphuPdEFw/bdi
YXLPbVNQSHOtvlUVJTxY+EE92zQI8lDzAnO1jXnpQwpEtzv2tIOPW2xU7oetwk4c
+/zrsazKmW2F3OtTrtpUPnn1k5Qf81ztSt9EIDb6UR3chXeO+djPEZYFYkTWHJNu
UbkHnJTjXBrcYfeV1e+5o27001cWOZJ7YzZ4UA5M1zk1C2rdQ4F1JHEqLwGZaqmR
vnFDC502xRbPDETTdUKWgR9YNTXlpzyDJv64yc5RWZFpW6KEHg/lzFISrn0elFKr
kyFeRAPtwL8E1cMkGA3MJQ==
`pragma protect data_method = "aes256-cbc"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 4304 )
`pragma protect data_block
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
`pragma protect end_protected

//pragma protect end

`undef IP_UUID
`undef IP_NAME_CONCAT
`undef IP_MODULE_NAME
