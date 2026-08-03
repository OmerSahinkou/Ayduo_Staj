`define IP_UUID _449a7b9bfbac46b2a2d60d871e2fb599
`define IP_NAME_CONCAT(a,b) a``b
`define IP_MODULE_NAME(name) `IP_NAME_CONCAT(name,`IP_UUID)

module efx_mac1gbe_exp_apb_master # (
	parameter ROM_DEPTH		= 0,
	parameter RAM_ADDR_W		= 5, //Depth = 32, Stores up to 32 entries
	parameter PADDR_WIDTH	= 24,
	parameter PDATA_WIDTH	= 32
) (
	output logic apb_rom_end_o,
	output logic apb_done_o,
	output logic [PDATA_WIDTH-1:0]	ram_dout_d_o,
	output logic [PADDR_WIDTH-1:0]	ram_dout_a_o,

	input  logic							usr_apb_start_i,
	input  logic							usr_apb_write_i,
	input  logic [PADDR_WIDTH-1:0]	usr_apb_addr_i,
	input  logic [PDATA_WIDTH-1:0]	usr_apb_pwdata_i,

	// APB BUS signal
	output logic							PSEL,
	output logic							PWRITE,
	output logic							PENABLE,
	output logic [PADDR_WIDTH-1:0]	PADDR,
	output logic [PDATA_WIDTH-1:0]	PWDATA,

	input  logic							PCLK, // 200Mhz
	input  logic							PRESETn,
	input  logic [PDATA_WIDTH-1:0]	PRDATA,
	input  logic							PREADY,
	input  logic							PSLVERR
);

`IP_MODULE_NAME(efx_mac1gbe_exp_apb_master) # (
   .ROM_DEPTH   (ROM_DEPTH),
   .RAM_ADDR_W  (RAM_ADDR_W),
   .PADDR_WIDTH (PADDR_WIDTH),
   .PDATA_WIDTH (PDATA_WIDTH)
) inst_apb_master (
	.apb_rom_end_o  (apb_rom_end_o),
	.apb_done_o     (apb_done_o),
	.ram_dout_d_o   (ram_dout_d_o),
	.ram_dout_a_o   (ram_dout_a_o),

	.usr_apb_start_i  (usr_apb_start_i),
	.usr_apb_write_i  (usr_apb_write_i),
	.usr_apb_addr_i   (usr_apb_addr_i),
	.usr_apb_pwdata_i (usr_apb_pwdata_i),

	.PSEL     (PSEL),
	.PWRITE   (PWRITE),
	.PENABLE  (PENABLE),
	.PADDR    (PADDR),
	.PWDATA   (PWDATA),

	.PCLK     (PCLK),
	.PRESETn  (PRESETn),
	.PRDATA   (PRDATA),
	.PREADY   (PREADY),
	.PSLVERR  (PSLVERR)
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
CCYqU/4MtQqSPkkuyOR3EUiXTGC93b3S/XCPInd2edOPj0TjpVfAm9ezfe5NsNHE
nsZGRW1QgQJkgyXJyGF9Skv/uq72AKJ7sLhjAItTNuDW3q+kq9LBEX7ZxbbSOiAY
wj0EXIi6X70L4tRjq2v7QWFfmpqD5GTLm7EA25Lc/E6a3T07Qa/hilLwQJ5fomPG
VuOYd/1OzhZOiy3IXlnEC7LOlBM+gMnW+nxkqHWbuJ/nq+0VExgxsmiabS7azhwi
r2EfdXbmpYOSILHY2vtt7sYzYsvdJYFyqsx/jpZ9JRUeBO5vp6Mi4LlujOJPXHyd
sfzX0MJRnRLDBmoK3rIRHA==
`pragma protect data_method = "aes256-cbc"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 5152 )
`pragma protect data_block
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
VPZblqWZC764M+lO2vJrZQ==
`pragma protect end_protected

//pragma protect end

`undef IP_UUID
`undef IP_NAME_CONCAT
`undef IP_MODULE_NAME
