module efx_ethernet_1g_exp #(
   parameter PADDR_WIDTH = 24,
   parameter PDATA_WIDTH = 32
) (
   input  logic INIT_CLK,
   input  logic IN_USER,
   input  logic PLL_LOCKED,

   input  logic APB_CLK,
   
   input  logic L0_SYNC_STATUS,
   input  logic L3_SYNC_STATUS,
   
   input logic Q1_PMA_CMN_READY,
   input logic L0_PMA_XCVR_PLLCLK_EN_ACK,
   input logic [3:0] L0_PMA_XCVR_POWER_STATE_ACK,
   input logic L0_PMA_RX_SIGNAL_DETECT,
   output logic Q1_SGMII_USER_APB_RESET_N,
   output logic L0_PHY_RESET_N,
   output logic L0_PMA_XCVR_PLLCLK_EN,
   output logic [3:0] L0_PMA_XCVR_POWER_STATE_REQ,
   output logic L0_PMA_TX_ELEC_IDLE,
   output logic Q1_USER_APB_PSEL,
   output logic Q1_USER_APB_PWRITE,
   output logic Q1_USER_APB_PENABLE,
   output logic [PADDR_WIDTH-1:0] Q1_USER_APB_PADDR,
   output logic [PDATA_WIDTH-1:0] Q1_USER_APB_PWDATA,
   input logic [PDATA_WIDTH-1:0] Q1_USER_APB_PRDATA,
   input logic Q1_USER_APB_PREADY,
   input logic Q1_USER_APB_PSLVERR,
   input logic L0_1gbe_clk,
   input logic L0_1gbe_clk_x2,
   input logic L0_PCS_AN_COMPLETE,
   output logic [1:0] L0_SGMII_MODE,
   output logic L0_PCS_RST_N_TX,
   output logic L0_PCS_RST_N_RX,
   input logic [15:0] L0_GMII_RXD,
   input logic [1:0] L0_GMII_RX_DV,
   input logic [1:0] L0_GMII_RX_ER,
   output logic [15:0] L0_GMII_TXD,
   output logic [1:0] L0_GMII_TX_EN,
   output logic [1:0] L0_GMII_TX_ER,
   input logic L3_PMA_XCVR_PLLCLK_EN_ACK,
   input logic [3:0] L3_PMA_XCVR_POWER_STATE_ACK,
   input logic L3_PMA_RX_SIGNAL_DETECT,
   output logic L3_PHY_RESET_N,
   output logic L3_PMA_XCVR_PLLCLK_EN,
   output logic [3:0] L3_PMA_XCVR_POWER_STATE_REQ,
   output logic L3_PMA_TX_ELEC_IDLE,
   input logic L3_1gbe_clk,
   input logic L3_1gbe_clk_x2,
   input logic L3_PCS_AN_COMPLETE,
   output logic [1:0] L3_SGMII_MODE,
   output logic L3_PCS_RST_N_TX,
   output logic L3_PCS_RST_N_RX,
   input logic [15:0] L3_GMII_RXD,
   input logic [1:0] L3_GMII_RX_DV,
   input logic [1:0] L3_GMII_RX_ER,
   output logic [15:0] L3_GMII_TXD,
   output logic [1:0] L3_GMII_TX_EN,
   output logic [1:0] L3_GMII_TX_ER,
   input jtag_vio_CAPTURE,
   input jtag_vio_DRCK,
   input jtag_vio_RESET,
   input jtag_vio_RUNTEST,
   input jtag_vio_SEL,
   input jtag_vio_SHIFT,
   input jtag_vio_TCK,
   input jtag_vio_TDI,
   input jtag_vio_TMS,
   input jtag_vio_UPDATE,
   output jtag_vio_TDO,
   output logic       L0_SYNC_STATUS_o,
   output logic       L3_SYNC_STATUS_o,
   output logic       L0_PCS_AN_COMPLETE_o,
   output logic       L3_PCS_AN_COMPLETE_o,
   output logic [3:0] L0_err_cnt_o,
   output logic [3:0] L3_err_cnt_o,
   output logic [3:0] L0_bad_frame_cnt_o,
   output logic [3:0] L3_bad_frame_cnt_o
);

localparam AXIS_DW = 16;
`ifdef L0_1G
   localparam L0_SPEED = 2'b10;
`elsif L0_100M
   localparam L0_SPEED = 2'b01;
`elsif L0_10M
   localparam L0_SPEED = 2'b00;
`else // Default to 2.5G
   localparam L0_SPEED = 2'b11;
`endif

`ifdef L3_1G
   localparam L3_SPEED = 2'b10;
`elsif L3_100M
   localparam L3_SPEED = 2'b01;
`elsif L3_10M
   localparam L3_SPEED = 2'b00;
`else // Default to 2.5G
   localparam L3_SPEED = 2'b11;
`endif

//Wire Declaration
logic L0_init_done;
logic L0_tx_axis_tvalid;
logic L0_tx_axis_tlast;
logic [AXIS_DW-1:0] L0_tx_axis_tdata;
logic [AXIS_DW/8-1:0] L0_tx_axis_tkeep;
logic L0_tx_axis_tuser;
logic [AXIS_DW-1:0] L0_rx_axis_tdata;
logic L0_rx_axis_tvalid;
logic L0_rx_axis_tlast;
logic L0_rx_axis_tuser;
logic L0_tx_axis_tready;
logic L3_init_done;
logic [PDATA_WIDTH-1:0] ram_dout_d_w;
logic [PADDR_WIDTH-1:0] ram_dout_a_w;
logic [3:0] L3_cnt_tuser;
logic L3_data_mismatch;
logic [6:0] L3_pos_mismatch;
logic L3_tx_axis_tvalid;
logic L3_tx_axis_tlast;
logic [AXIS_DW-1:0] L3_tx_axis_tdata;
logic [AXIS_DW/8-1:0] L3_tx_axis_tkeep;
logic L3_tx_axis_tuser;
logic [AXIS_DW-1:0] L3_rx_axis_tdata;
logic L3_rx_axis_tvalid;
logic L3_rx_axis_tlast;
logic L3_rx_axis_tuser;
logic L3_tx_axis_tready;
logic usr_apb_start_w;
logic usr_apb_write_w;
logic [PADDR_WIDTH-1:0] usr_apb_addr_w;
logic [PDATA_WIDTH-1:0] usr_apb_pwdata_w;

logic                   master_apb_psel;
logic                   master_apb_pwrite;
logic                   master_apb_penable;
logic [PADDR_WIDTH-1:0] master_apb_paddr;
logic [PDATA_WIDTH-1:0] master_apb_pwdata;
logic [PDATA_WIDTH-1:0] master_apb_prdata;
logic                   master_apb_pready;
logic                   master_apb_pslverr;

logic [PADDR_WIDTH-1:0] serdes_apb_paddr;
logic                   serdes_apb_psel;
logic                   serdes_apb_penable;
logic                   serdes_apb_pwrite;
logic [PDATA_WIDTH-1:0] serdes_apb_pwdata;
logic [PDATA_WIDTH-1:0] serdes_apb_prdata;
logic                   serdes_apb_pready;
logic                   serdes_apb_pslverr;

logic [PADDR_WIDTH-1:0] L0_mac_apb_paddr;
logic                   L0_mac_apb_psel;
logic                   L0_mac_apb_penable;
logic                   L0_mac_apb_pwrite;
logic [PDATA_WIDTH-1:0] L0_mac_apb_pwdata;
logic [PDATA_WIDTH-1:0] L0_mac_apb_prdata;
logic                   L0_mac_apb_pready;
logic                   L0_mac_apb_pslverr;
   
logic [PADDR_WIDTH-1:0] L0_ctrl_apb_paddr;
logic                   L0_ctrl_apb_psel;
logic                   L0_ctrl_apb_penable;
logic                   L0_ctrl_apb_pwrite;
logic [PDATA_WIDTH-1:0] L0_ctrl_apb_pwdata;
logic [PDATA_WIDTH-1:0] L0_ctrl_apb_prdata;
logic                   L0_ctrl_apb_pready;

logic [PADDR_WIDTH-1:0] L3_mac_apb_paddr;
logic                   L3_mac_apb_psel;
logic                   L3_mac_apb_penable;
logic                   L3_mac_apb_pwrite;
logic [PDATA_WIDTH-1:0] L3_mac_apb_pwdata;
logic [PDATA_WIDTH-1:0] L3_mac_apb_prdata;
logic                   L3_mac_apb_pready;
logic                   L3_mac_apb_pslverr;
   
logic [PADDR_WIDTH-1:0] L3_ctrl_apb_paddr;
logic                   L3_ctrl_apb_psel;
logic                   L3_ctrl_apb_penable;
logic                   L3_ctrl_apb_pwrite;
logic [PDATA_WIDTH-1:0] L3_ctrl_apb_pwdata;
logic [PDATA_WIDTH-1:0] L3_ctrl_apb_prdata;
logic                   L3_ctrl_apb_pready;

logic                   L0_speed_chg_active;
logic                   L3_speed_chg_active;
logic                   L0_speed_chg_done;
logic                   L3_speed_chg_done;
logic                   L0_speed_chg_done_latch;
logic                   L3_speed_chg_done_latch;

logic [7:0]             L0_data_cnt;
logic [7:0]             L0_err_cnt;
logic [7:0]             L0_frame_cnt;
logic [7:0]             L0_bad_frame_cnt;

logic [7:0]             L3_data_cnt;
logic [7:0]             L3_err_cnt;
logic [7:0]             L3_frame_cnt;
logic [7:0]             L3_bad_frame_cnt;

logic                   L0_pcs_rst_n;
logic                   L3_pcs_rst_n;

logic                   L0_SYNC_STATUS_s;
logic                   L3_SYNC_STATUS_s;

logic                   L0_start_traffic;
logic                   L3_start_traffic;

assign L0_PCS_RST_N_TX = L0_pcs_rst_n;
assign L0_PCS_RST_N_RX = L0_pcs_rst_n;

assign L3_PCS_RST_N_TX = L3_pcs_rst_n;
assign L3_PCS_RST_N_RX = L3_pcs_rst_n;

assign L0_SYNC_STATUS_o     = L0_SYNC_STATUS;
assign L3_SYNC_STATUS_o     = L3_SYNC_STATUS;
assign L0_PCS_AN_COMPLETE_o = L0_PCS_AN_COMPLETE;
assign L3_PCS_AN_COMPLETE_o = L3_PCS_AN_COMPLETE;
assign L0_err_cnt_o         = L0_err_cnt[3:0];
assign L3_err_cnt_o         = L3_err_cnt[3:0];
assign L0_bad_frame_cnt_o   = L0_bad_frame_cnt[3:0];
assign L3_bad_frame_cnt_o   = L3_bad_frame_cnt[3:0];

efx_asyncreg #(
  .WIDTH(1)
) sync_L0_SYNC_STATUS (
  .clk     (L3_1gbe_clk),
  .reset_n (PLL_LOCKED),
  .d_i     (L0_SYNC_STATUS),
  .d_o     (L0_SYNC_STATUS_s)
);

efx_asyncreg #(
  .WIDTH(1)
) sync_L3_SYNC_STATUS (
  .clk     (L0_1gbe_clk),
  .reset_n (PLL_LOCKED),
  .d_i     (L3_SYNC_STATUS),
  .d_o     (L3_SYNC_STATUS_s)
);

//======================================================================
//==                              AN                                  ==
//======================================================================
logic   L0_PCS_AN_COMPLETE_latch;
logic   L3_PCS_AN_COMPLETE_latch;
logic   an_completed;
logic   an_completed_s;

always @ (posedge APB_CLK or negedge L0_pcs_rst_n) begin
   if (~L0_pcs_rst_n) L0_PCS_AN_COMPLETE_latch <= '0;
   else               L0_PCS_AN_COMPLETE_latch <= L0_PCS_AN_COMPLETE ? 1'b1 : L0_PCS_AN_COMPLETE_latch;
end

always @ (posedge APB_CLK or negedge L3_pcs_rst_n) begin
   if (~L3_pcs_rst_n) L3_PCS_AN_COMPLETE_latch <= '0;
   else               L3_PCS_AN_COMPLETE_latch <= L3_PCS_AN_COMPLETE ? 1'b1 : L3_PCS_AN_COMPLETE_latch;
end


`ifdef AN_L0_PHY_MODE
    logic   L3_start_traffic_s;

    assign L0_SGMII_MODE = L0_SPEED;
    assign L0_pcs_rst_n  = PLL_LOCKED;
    assign L0_speed_chg_active = 1'b0;

    always @ (posedge APB_CLK or negedge L3_pcs_rst_n) begin
       if (~L3_pcs_rst_n) L3_speed_chg_done_latch <= '0;
       else               L3_speed_chg_done_latch <= L3_speed_chg_done ? 1'b1 : L3_speed_chg_done_latch;
    end
	
    always @ (posedge APB_CLK or negedge PLL_LOCKED) begin
       if (~PLL_LOCKED) an_completed <= '0;
       else             an_completed <= L0_PCS_AN_COMPLETE_latch & L3_PCS_AN_COMPLETE_latch & L3_speed_chg_done_latch;
    end

    efx_asyncreg #(
      .WIDTH   (1)
    ) sync_an_completed (
      .clk     (L3_1gbe_clk),
      .reset_n (PLL_LOCKED),
      .d_i     (an_completed),
      .d_o     (an_completed_s)
    );
    
    efx_asyncreg #(
      .WIDTH   (1)
    ) sync_L3_start_traffic (
      .clk     (L0_1gbe_clk),
      .reset_n (PLL_LOCKED),
      .d_i     (L3_start_traffic),
      .d_o     (L3_start_traffic_s)
    );

    assign L0_start_traffic = L3_start_traffic_s;
    assign L3_start_traffic = L3_SYNC_STATUS & an_completed_s;
   
    efx_mac1gbe_exp_speed_ctrl #(
       .PORT_ID    (2'h3),
       .INIT_SPEED ("1G")
    ) inst_L3_speed_ctrl (
       .clk   (APB_CLK),
       .rst_n (PLL_LOCKED),
    
       .speed_chg_i        (1'b0),
       .sgmii_speed_i      (L3_SPEED),   
    
       .pcs_an_complete_i  (L3_PCS_AN_COMPLETE),
    
       .sgmii_speed_o      (L3_SGMII_MODE),
       .pcs_rst_n_o        (L3_pcs_rst_n),
       .speed_chg_active_o (L3_speed_chg_active),
       .speed_chg_done_o   (L3_speed_chg_done),
    
       .user_apb_paddr_o   (L3_ctrl_apb_paddr),
       .user_apb_psel_o    (L3_ctrl_apb_psel),
       .user_apb_penable_o (L3_ctrl_apb_penable),
       .user_apb_pwrite_o  (L3_ctrl_apb_pwrite),
       .user_apb_pwdata_o  (L3_ctrl_apb_pwdata),
       .user_apb_prdata_i  (L3_ctrl_apb_prdata),
       .user_apb_pready_i  (L3_ctrl_apb_pready)
    );
 
    assign Q1_USER_APB_PSEL    = L3_speed_chg_active ? L3_ctrl_apb_psel    : serdes_apb_psel; 
    assign Q1_USER_APB_PWRITE  = L3_speed_chg_active ? L3_ctrl_apb_pwrite  : serdes_apb_pwrite;
    assign Q1_USER_APB_PENABLE = L3_speed_chg_active ? L3_ctrl_apb_penable : serdes_apb_penable;
    assign Q1_USER_APB_PADDR   = L3_speed_chg_active ? L3_ctrl_apb_paddr   : serdes_apb_paddr;
    assign Q1_USER_APB_PWDATA  = L3_speed_chg_active ? L3_ctrl_apb_pwdata  : serdes_apb_pwdata;
    
    assign L3_ctrl_apb_prdata = L3_speed_chg_active ? Q1_USER_APB_PRDATA : '0;
    assign L3_ctrl_apb_pready = L3_speed_chg_active ? Q1_USER_APB_PREADY : '0;
    
    assign serdes_apb_prdata  = L3_speed_chg_active ? '0 : Q1_USER_APB_PRDATA;
    assign serdes_apb_pready  = L3_speed_chg_active ? '0 : Q1_USER_APB_PREADY;
    assign serdes_apb_pslverr = L3_speed_chg_active ? '0 : Q1_USER_APB_PSLVERR;

`elsif AN_L3_PHY_MODE
    logic   L0_start_traffic_s;

    assign L3_SGMII_MODE = L3_SPEED;
    assign L3_pcs_rst_n  = PLL_LOCKED;
    assign L3_speed_chg_active = 1'b0;

    always @ (posedge APB_CLK or negedge L0_pcs_rst_n) begin
       if (~L0_pcs_rst_n) L0_speed_chg_done_latch <= '0;
       else               L0_speed_chg_done_latch <= L0_speed_chg_done ? 1'b1 : L0_speed_chg_done_latch;
    end
	
    always @ (posedge APB_CLK or negedge PLL_LOCKED) begin
       if (~PLL_LOCKED) an_completed <= '0;
       else             an_completed <= L0_PCS_AN_COMPLETE_latch & L3_PCS_AN_COMPLETE_latch & L0_speed_chg_done_latch;
    end

    efx_asyncreg #(
      .WIDTH   (1)
    ) sync_an_completed (
      .clk     (L0_1gbe_clk),
      .reset_n (PLL_LOCKED),
      .d_i     (an_completed),
      .d_o     (an_completed_s)
    );
    
    efx_asyncreg #(
      .WIDTH   (1)
    ) sync_L0_start_traffic (
      .clk     (L3_1gbe_clk),
      .reset_n (PLL_LOCKED),
      .d_i     (L0_start_traffic),
      .d_o     (L0_start_traffic_s)
    );

    assign L0_start_traffic = L0_SYNC_STATUS & an_completed_s;
    assign L3_start_traffic = L0_start_traffic_s;

    efx_mac1gbe_exp_speed_ctrl #(
       .PORT_ID    (2'h0),
       .INIT_SPEED ("1G")
    ) inst_L0_speed_ctrl (
       .clk   (APB_CLK),
       .rst_n (PLL_LOCKED),
    
       .speed_chg_i        (1'b0),
       .sgmii_speed_i      (L0_SPEED),   
    
       .pcs_an_complete_i  (L0_PCS_AN_COMPLETE),
    
       .sgmii_speed_o      (L0_SGMII_MODE),
       .pcs_rst_n_o        (L0_pcs_rst_n),
       .speed_chg_active_o (L0_speed_chg_active),
       .speed_chg_done_o   (L0_speed_chg_done),
    
       .user_apb_paddr_o   (L0_ctrl_apb_paddr),
       .user_apb_psel_o    (L0_ctrl_apb_psel),
       .user_apb_penable_o (L0_ctrl_apb_penable),
       .user_apb_pwrite_o  (L0_ctrl_apb_pwrite),
       .user_apb_pwdata_o  (L0_ctrl_apb_pwdata),
       .user_apb_prdata_i  (L0_ctrl_apb_prdata),
       .user_apb_pready_i  (L0_ctrl_apb_pready)
    );

    assign Q1_USER_APB_PSEL    = L0_speed_chg_active ? L0_ctrl_apb_psel    : serdes_apb_psel; 
    assign Q1_USER_APB_PWRITE  = L0_speed_chg_active ? L0_ctrl_apb_pwrite  : serdes_apb_pwrite;
    assign Q1_USER_APB_PENABLE = L0_speed_chg_active ? L0_ctrl_apb_penable : serdes_apb_penable;
    assign Q1_USER_APB_PADDR   = L0_speed_chg_active ? L0_ctrl_apb_paddr   : serdes_apb_paddr;
    assign Q1_USER_APB_PWDATA  = L0_speed_chg_active ? L0_ctrl_apb_pwdata  : serdes_apb_pwdata;
    
    assign L0_ctrl_apb_prdata = L0_speed_chg_active ? Q1_USER_APB_PRDATA : '0;
    assign L0_ctrl_apb_pready = L0_speed_chg_active ? Q1_USER_APB_PREADY : '0;
    
    assign serdes_apb_prdata  = L0_speed_chg_active ? '0 : Q1_USER_APB_PRDATA;
    assign serdes_apb_pready  = L0_speed_chg_active ? '0 : Q1_USER_APB_PREADY;
    assign serdes_apb_pslverr = L0_speed_chg_active ? '0 : Q1_USER_APB_PSLVERR;
`else
    assign Q1_USER_APB_PSEL     = serdes_apb_psel; 
    assign Q1_USER_APB_PWRITE   = serdes_apb_pwrite;
    assign Q1_USER_APB_PENABLE  = serdes_apb_penable;
    assign Q1_USER_APB_PADDR    = serdes_apb_paddr;
    assign Q1_USER_APB_PWDATA   = serdes_apb_pwdata;
    
    assign serdes_apb_prdata  = Q1_USER_APB_PRDATA;
    assign serdes_apb_pready  = Q1_USER_APB_PREADY;
    assign serdes_apb_pslverr = Q1_USER_APB_PSLVERR;

    assign L0_start_traffic = L3_SYNC_STATUS_s & L0_SYNC_STATUS;
    assign L3_start_traffic = L0_SYNC_STATUS_s & L3_SYNC_STATUS;

    assign L0_pcs_rst_n = PLL_LOCKED;
    assign L3_pcs_rst_n = PLL_LOCKED;
	
	assign L0_speed_chg_active = 1'b0;
    assign L3_speed_chg_active = 1'b0;

    assign L0_SGMII_MODE = L0_SPEED;
    assign L3_SGMII_MODE = L3_SPEED;

`endif

assign Q1_SGMII_USER_APB_RESET_N = 1'b1;

assign L0_PHY_RESET_N = 1'b1;
assign L0_PMA_TX_ELEC_IDLE = 1'b0;

assign L3_PHY_RESET_N = 1'b1;
assign L3_PMA_TX_ELEC_IDLE = 1'b0;

efx_mac1gbe_exp_apb_master #(
	.PADDR_WIDTH (PADDR_WIDTH),
	.PDATA_WIDTH (PDATA_WIDTH)
) inst_apb_master (
   .apb_rom_end_o    (/*NC*/),
   .apb_done_o       (/*NC*/),
   
   .ram_dout_d_o     (ram_dout_d_w),
   .ram_dout_a_o     (ram_dout_a_w),
   
   .usr_apb_start_i  (usr_apb_start_w),
   .usr_apb_write_i  (usr_apb_write_w),
   .usr_apb_addr_i   (usr_apb_addr_w),
   .usr_apb_pwdata_i (usr_apb_pwdata_w),

   .PSEL             (master_apb_psel),
   .PWRITE           (master_apb_pwrite),
   .PENABLE          (master_apb_penable),
   .PADDR            (master_apb_paddr),
   .PWDATA           (master_apb_pwdata),
   
   .PCLK             (APB_CLK),
   .PRESETn          (L0_init_done | L3_init_done),
   .PRDATA           (master_apb_prdata),
   .PREADY           (master_apb_pready),
   .PSLVERR          (master_apb_pslverr)
);

efx_mac1gbe_exp_apb_decoder #(
) inst_apb_decoder (
   .rst_n                (L0_init_done | L3_init_done),
   .user_apb_clk         (APB_CLK),
   .user_apb_paddr_i     (master_apb_paddr),
   .user_apb_psel_i      (master_apb_psel),
   .user_apb_penable_i   (master_apb_penable),
   .user_apb_pwrite_i    (master_apb_pwrite),
   .user_apb_pwdata_i    (master_apb_pwdata),
   .user_apb_prdata_o    (master_apb_prdata),
   .user_apb_pready_o    (master_apb_pready),
   .user_apb_pslverr_o   (master_apb_pslverr),

   .l0_mac_apb_paddr_o   (L0_mac_apb_paddr),
   .l0_mac_apb_psel_o    (L0_mac_apb_psel),
   .l0_mac_apb_penable_o (L0_mac_apb_penable),
   .l0_mac_apb_pwrite_o  (L0_mac_apb_pwrite),
   .l0_mac_apb_pwdata_o  (L0_mac_apb_pwdata),
   .l0_mac_apb_prdata_i  (L0_mac_apb_prdata),
   .l0_mac_apb_pready_i  (L0_mac_apb_pready),
   .l0_mac_apb_pslverr_i (L0_mac_apb_pslverr),
   
   .l3_mac_apb_paddr_o   (L3_mac_apb_paddr),
   .l3_mac_apb_psel_o    (L3_mac_apb_psel),
   .l3_mac_apb_penable_o (L3_mac_apb_penable),
   .l3_mac_apb_pwrite_o  (L3_mac_apb_pwrite),
   .l3_mac_apb_pwdata_o  (L3_mac_apb_pwdata),
   .l3_mac_apb_prdata_i  (L3_mac_apb_prdata),
   .l3_mac_apb_pready_i  (L3_mac_apb_pready),
   .l3_mac_apb_pslverr_i (L3_mac_apb_pslverr),
   
   .serdes_apb_paddr_o   (serdes_apb_paddr),
   .serdes_apb_psel_o    (serdes_apb_psel),
   .serdes_apb_penable_o (serdes_apb_penable),
   .serdes_apb_pwrite_o  (serdes_apb_pwrite),
   .serdes_apb_pwdata_o  (serdes_apb_pwdata),
   .serdes_apb_prdata_i  (serdes_apb_prdata),
   .serdes_apb_pready_i  (serdes_apb_pready),
   .serdes_apb_pslverr_i (serdes_apb_pslverr)
);

//===============================================================
//==                         Lane 0                            ==
//===============================================================
efx_mac1gbe_exp_checker # (
   .AXIS_DW       (AXIS_DW)
) inst_L0_checker_1g (
   .clk               (L0_1gbe_clk),
   .rstn              (L0_PCS_RST_N_RX),
   .pcs_status_i      (L0_SYNC_STATUS),
 
   .m_axis_tvalid_i   (L0_rx_axis_tvalid),
   .m_axis_tlast_i    (L0_rx_axis_tlast),
   .m_axis_tuser_i    (L0_rx_axis_tuser),
   .m_axis_tdata_i    (L0_rx_axis_tdata),
   
   .data_cnt_o        (L0_data_cnt),
   .err_cnt_o         (L0_err_cnt),
   .frame_cnt_o       (L0_frame_cnt),
   .bad_frame_cnt_o   (L0_bad_frame_cnt)
);


efx_mac1gbe_exp_pat_gen  #(
   .AXIS_DW  (AXIS_DW)
) inst_L0_pat_gen (
   .clk          (L0_1gbe_clk),
   .rstn         (L0_pcs_rst_n),
   .pcs_status_i (L0_start_traffic),
   
   .s_axis_tready_out_from_mac (L0_tx_axis_tready),
   .s_axis_tvalid_in2mac       (L0_tx_axis_tvalid),
   .s_axis_tlast_in2mac        (L0_tx_axis_tlast),
   .s_axis_tdata_in2mac        (L0_tx_axis_tdata),
   .s_axis_tkeep_in2mac        (L0_tx_axis_tkeep),
   .s_axis_tuser_in2mac        (L0_tx_axis_tuser)
);

eth_mac inst_L0_sgmii_mac (
   .mac_reset          (~L0_pcs_rst_n),
   .proto_reset        (~L0_pcs_rst_n),
   .tx_mac_aclk        (L0_1gbe_clk), 
   .rx_mac_aclk        (/*NC*/), 
   .eth_speed          (/*NC*/),
   
   .rx_axis_clk        (L0_1gbe_clk),
   .rx_axis_mac_tdata  (L0_rx_axis_tdata),
   .rx_axis_mac_tvalid (L0_rx_axis_tvalid),
   .rx_axis_mac_tlast  (L0_rx_axis_tlast),
   .rx_axis_mac_tstrb  (/*NC*/),
   .rx_axis_mac_tuser  (L0_rx_axis_tuser),
   .rx_axis_mac_tready (1'b1),
   
   .tx_axis_clk        (L0_1gbe_clk),
   .tx_axis_mac_tdata  (L0_tx_axis_tdata),
   .tx_axis_mac_tvalid (L0_tx_axis_tvalid),
   .tx_axis_mac_tlast  (L0_tx_axis_tlast),
   .tx_axis_mac_tstrb  (L0_tx_axis_tkeep),
   .tx_axis_mac_tuser  (L0_tx_axis_tuser),
   .tx_axis_mac_tready (L0_tx_axis_tready),
   
   .s_paddr            (L0_mac_apb_paddr[9:0]),
   .s_pwdata           (L0_mac_apb_pwdata),
   .s_pwrite           (L0_mac_apb_pwrite),
   .s_penable          (L0_mac_apb_penable),
   .s_psel             (L0_mac_apb_psel),
   .s_prdata           (L0_mac_apb_prdata),
   .s_pready           (L0_mac_apb_pready),
   .s_perr             (L0_mac_apb_pslverr),
   .s_axi_aclk         (APB_CLK),
   
   .gm_rx_c            (L0_1gbe_clk),
   .gm_rx_d            (L0_GMII_RXD),
   .gm_rx_dv           (L0_GMII_RX_DV),
   .gm_rx_err          (L0_GMII_RX_ER),
   .gm_tx_c            (/*NC*/),
   .gm_tx_d            (L0_GMII_TXD),
   .gm_tx_en           (L0_GMII_TX_EN),
   .gm_tx_err          (L0_GMII_TX_ER),

   .init_clk                 (INIT_CLK),
   .init_rst_n               (IN_USER),
   .PMA_CMN_READY            (Q1_PMA_CMN_READY),
   .PMA_XCVR_PLLCLK_EN_ACK   (L0_PMA_XCVR_PLLCLK_EN_ACK),
   .PMA_XCVR_POWER_STATE_ACK (L0_PMA_XCVR_POWER_STATE_ACK),
   .PMA_RX_SIGNAL_DETECT     (L0_PMA_RX_SIGNAL_DETECT),
   .PMA_XCVR_PLLCLK_EN       (L0_PMA_XCVR_PLLCLK_EN),
   .PMA_XCVR_POWER_STATE_REQ (L0_PMA_XCVR_POWER_STATE_REQ),
   .phy_init_done            (L0_init_done)
);

//===============================================================
//==                         Lane 3                            ==
//===============================================================
efx_mac1gbe_exp_checker # (
   .AXIS_DW       (AXIS_DW)
) inst_L3_checker_1g (
   .clk               (L3_1gbe_clk),
   .rstn              (L3_PCS_RST_N_RX),
   .pcs_status_i      (L3_SYNC_STATUS),
   
   .m_axis_tvalid_i   (L3_rx_axis_tvalid),
   .m_axis_tlast_i    (L3_rx_axis_tlast),
   .m_axis_tuser_i    (L3_rx_axis_tuser),
   .m_axis_tdata_i    (L3_rx_axis_tdata),
   
   .data_cnt_o        (L3_data_cnt),
   .err_cnt_o         (L3_err_cnt),
   .frame_cnt_o       (L3_frame_cnt),
   .bad_frame_cnt_o   (L3_bad_frame_cnt)
);


efx_mac1gbe_exp_pat_gen  #(
   .AXIS_DW  (AXIS_DW)
) inst_L3_pat_gen (
   .clk          (L3_1gbe_clk),
   .rstn         (L3_pcs_rst_n),
   .pcs_status_i (L3_start_traffic),
   
   .s_axis_tready_out_from_mac (L3_tx_axis_tready),
   .s_axis_tvalid_in2mac       (L3_tx_axis_tvalid),
   .s_axis_tlast_in2mac        (L3_tx_axis_tlast),
   .s_axis_tdata_in2mac        (L3_tx_axis_tdata),
   .s_axis_tkeep_in2mac        (L3_tx_axis_tkeep),
   .s_axis_tuser_in2mac        (L3_tx_axis_tuser)
);

eth_mac inst_L3_sgmii_mac (
   .mac_reset          (~L3_pcs_rst_n),
   .proto_reset        (~L3_pcs_rst_n),
   .tx_mac_aclk        (L3_1gbe_clk), 
   .rx_mac_aclk        (/*NC*/), 
   .eth_speed          (/*NC*/),
   
   .rx_axis_clk        (L3_1gbe_clk),
   .rx_axis_mac_tdata  (L3_rx_axis_tdata),
   .rx_axis_mac_tvalid (L3_rx_axis_tvalid),
   .rx_axis_mac_tlast  (L3_rx_axis_tlast),
   .rx_axis_mac_tstrb  (/*NC*/),
   .rx_axis_mac_tuser  (L3_rx_axis_tuser),
   .rx_axis_mac_tready (1'b1),
   
   .tx_axis_clk        (L3_1gbe_clk),
   .tx_axis_mac_tdata  (L3_tx_axis_tdata),
   .tx_axis_mac_tvalid (L3_tx_axis_tvalid),
   .tx_axis_mac_tlast  (L3_tx_axis_tlast),
   .tx_axis_mac_tstrb  (L3_tx_axis_tkeep),
   .tx_axis_mac_tuser  (L3_tx_axis_tuser),
   .tx_axis_mac_tready (L3_tx_axis_tready),

   .s_paddr            (L3_mac_apb_paddr[9:0]),
   .s_pwdata           (L3_mac_apb_pwdata),
   .s_pwrite           (L3_mac_apb_pwrite),
   .s_penable          (L3_mac_apb_penable),
   .s_psel             (L3_mac_apb_psel),
   .s_prdata           (L3_mac_apb_prdata),
   .s_pready           (L3_mac_apb_pready),
   .s_perr             (L3_mac_apb_pslverr),
   .s_axi_aclk         (APB_CLK),

   .gm_rx_c            (L3_1gbe_clk),
   .gm_rx_d            (L3_GMII_RXD),
   .gm_rx_dv           (L3_GMII_RX_DV),
   .gm_rx_err          (L3_GMII_RX_ER),
   .gm_tx_c            (/*NC*/),
   .gm_tx_d            (L3_GMII_TXD),
   .gm_tx_en           (L3_GMII_TX_EN),
   .gm_tx_err          (L3_GMII_TX_ER),

   .init_clk                 (INIT_CLK),
   .init_rst_n               (IN_USER),
   .PMA_CMN_READY            (Q1_PMA_CMN_READY),
   .PMA_XCVR_PLLCLK_EN_ACK   (L3_PMA_XCVR_PLLCLK_EN_ACK),
   .PMA_XCVR_POWER_STATE_ACK (L3_PMA_XCVR_POWER_STATE_ACK),
   .PMA_RX_SIGNAL_DETECT     (L3_PMA_RX_SIGNAL_DETECT),
   .PMA_XCVR_PLLCLK_EN       (L3_PMA_XCVR_PLLCLK_EN),
   .PMA_XCVR_POWER_STATE_REQ (L3_PMA_XCVR_POWER_STATE_REQ),
   .phy_init_done            (L3_init_done)
);


`ifndef EXP_DESIGN_SIM
   edb_top edb_top_inst (
       .bscan_CAPTURE      (jtag_vio_CAPTURE),
       .bscan_DRCK         (jtag_vio_DRCK),
       .bscan_RESET        (jtag_vio_RESET),
       .bscan_RUNTEST      (jtag_vio_RUNTEST),
       .bscan_SEL          (jtag_vio_SEL),
       .bscan_SHIFT        (jtag_vio_SHIFT),
       .bscan_TCK          (jtag_vio_TCK),
       .bscan_TDI          (jtag_vio_TDI),
       .bscan_TMS          (jtag_vio_TMS),
       .bscan_UPDATE       (jtag_vio_UPDATE),
       .bscan_TDO          (jtag_vio_TDO),
   
       .vio0_clk           (L3_1gbe_clk),
   
       .vio0_pma_cmn_ready       (Q1_PMA_CMN_READY),
   
       .vio0_l0_sync_status      (L0_SYNC_STATUS),
       .vio0_l3_sync_status      (L3_SYNC_STATUS),
   
       .vio0_l0_init_done        (L0_init_done),
       .vio0_l3_init_done        (L3_init_done),
   
       .vio0_pll_locked          (PLL_LOCKED),
   
       .vio0_l0_rx_signal_detect (L0_PMA_RX_SIGNAL_DETECT),
       .vio0_l3_rx_signal_detect (L3_PMA_RX_SIGNAL_DETECT),
   
       .vio0_ram_dout_d          (ram_dout_d_w),
       .vio0_ram_dout_a          (ram_dout_a_w),

       .vio0_usr_apb_start       (usr_apb_start_w),
       .vio0_usr_apb_write       (usr_apb_write_w),
       .vio0_usr_apb_addr        (usr_apb_addr_w),
       .vio0_usr_apb_pwdata      (usr_apb_pwdata_w),
   
       .vio0_l0_data_cnt         (L0_data_cnt),
       .vio0_l0_err_cnt          (L0_err_cnt),
       .vio0_l0_frame_cnt        (L0_frame_cnt),
       .vio0_l0_bad_frame_cnt    (L0_bad_frame_cnt),
   
       .vio0_l3_data_cnt         (L3_data_cnt),
       .vio0_l3_err_cnt          (L3_err_cnt),
       .vio0_l3_frame_cnt        (L3_frame_cnt),
       .vio0_l3_bad_frame_cnt    (L3_bad_frame_cnt),
   
       .vio0_l0_sgmii_speed      (L0_SGMII_MODE),
       .vio0_l0_speed_chg_active (L0_speed_chg_active),
   
       .vio0_l3_sgmii_speed      (L3_SGMII_MODE),
       .vio0_l3_speed_chg_active (L3_speed_chg_active)
   );                            
`endif

endmodule
