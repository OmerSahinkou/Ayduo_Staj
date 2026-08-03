module efx_mac1gbe_exp_checker # (
   parameter CNT_ROLLOVER = 8'd50,
   parameter AXIS_DW      = 16
) (
   input  logic       clk,
   input  logic       rstn,
   input  logic       pcs_status_i,
   
   input  logic               m_axis_tvalid_i,
   input  logic               m_axis_tlast_i,
   input  logic               m_axis_tuser_i,
   input  logic [AXIS_DW-1:0] m_axis_tdata_i,
  
   output logic [7:0]      data_cnt_o,
   output logic [7:0]      err_cnt_o,
   output logic [7:0]      frame_cnt_o,
   output logic [7:0]      bad_frame_cnt_o,
   output logic            test_done_o
);

`ifdef JUMBO
   localparam ROLL_OVER = 14'd8772;
   localparam CNT_WIDTH = 14;
`else
   localparam ROLL_OVER = 10'd761;
   localparam CNT_WIDTH = 10;
`endif


logic [CNT_WIDTH-1:0]  cnt_exp_r;
logic [15:0]           exp_data;

//======================================================================
//                   Generating the expected data 
//======================================================================
`ifdef JUMBO
   logic is_jumbo;
   logic m_axis_tvalid_r;
   logic tvalid_posedge;

   always @ (posedge clk or negedge rstn) begin
      if (~rstn)               is_jumbo <= '0;
      else begin
         if (m_axis_tlast_i)   is_jumbo <= ~is_jumbo;
         else                  is_jumbo <= is_jumbo;
      end
   end

   always @ (posedge clk or negedge rstn) begin
      if (~rstn) m_axis_tvalid_r <= '0;
      else       m_axis_tvalid_r <= m_axis_tvalid_i;
   end

   assign tvalid_posedge = m_axis_tvalid_i & ~m_axis_tvalid_r & ~m_axis_tlast_i;
`else
   assign is_jumbo = '0;
   assign tvalid_posedge = '0;
`endif

// Standard mode:
// - cnt_exp_r is reset at tlast, such that it increments from 0 for every frame
//
// Jumbo mode:
// - Standard frame and Jumbo frame are sent alternatively
// - cnt_exp_r is set to 201 upon the start of jumbo packet
always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
      cnt_exp_r <= '0;
   end
   else if (pcs_status_i) begin
      if (cnt_exp_r == ROLL_OVER)         cnt_exp_r <= '0;
`ifdef JUMBO
      else if (tvalid_posedge & is_jumbo) cnt_exp_r <= 14'd763;
      else if (m_axis_tlast_i & is_jumbo) cnt_exp_r <= '0;
`else
      else if (m_axis_tlast_i)            cnt_exp_r <= '0;
`endif
      else if (m_axis_tvalid_i)           cnt_exp_r <= cnt_exp_r + 1'b1;
      else                                cnt_exp_r <= cnt_exp_r;
   end
   else begin
      cnt_exp_r <= '0;
   end
end

`ifdef JUMBO
   always @ (*) begin
      if (tvalid_posedge & is_jumbo)                     exp_data  <= 16'h3160; // 1st cycle of Jumbo packet (cnt_exp_r is not reloaded with right value yet)
      else if (cnt_exp_r == 'd0)                         exp_data  <= 16'h207a;
      else if (cnt_exp_r == 'd1)                         exp_data  <= 16'h3aae;
      else if (cnt_exp_r >= 'd2 & cnt_exp_r <= 'd748)    exp_data  <= {cnt_exp_r[0],cnt_exp_r};
      else if (cnt_exp_r == 'd749)                       exp_data  <= {cnt_exp_r[0],cnt_exp_r};
      else if (cnt_exp_r == 'd763)                       exp_data  <= 16'h7030;
      else if (cnt_exp_r >= 'd764 & cnt_exp_r <= 'd8761) exp_data  <= {2{cnt_exp_r[7:0]}};
      else exp_data  <= '0;
   end
`else
   always @ (*) begin
      if      (cnt_exp_r == 'd0)                          exp_data  <= 16'h207a;
      else if (cnt_exp_r == 'd1)                          exp_data  <= 16'h3aae;
      else if (cnt_exp_r >= 'd2 & cnt_exp_r <= 'd748)     exp_data  <= {cnt_exp_r[0],cnt_exp_r};
      else if (cnt_exp_r == 'd749)                        exp_data  <= {cnt_exp_r[0],cnt_exp_r};
      else exp_data  <= '0;
   end
`endif



//======================================================================
//                           Comparing Data 
//======================================================================
always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
      frame_cnt_o <= '0;
   end
   else begin
      if (m_axis_tvalid_i && m_axis_tlast_i) frame_cnt_o <= frame_cnt_o + 1'd1;
      else                                   frame_cnt_o <= frame_cnt_o;
   end
end

always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
      test_done_o    <= '0;
   end
   else begin
      if (frame_cnt_o == CNT_ROLLOVER) test_done_o <= 1'b1;
      else                             test_done_o <= test_done_o;
   end
end


always @(posedge clk or negedge rstn) begin
   if(~rstn) begin
      bad_frame_cnt_o <= '0;
   end
   else begin
      if (m_axis_tvalid_i && m_axis_tlast_i && m_axis_tuser_i)
         bad_frame_cnt_o <= bad_frame_cnt_o + 1'd1;
      else
         bad_frame_cnt_o <= bad_frame_cnt_o;
   end
end


always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
         data_cnt_o <= '0;
   end
   else begin
      if (m_axis_tvalid_i) begin
         data_cnt_o <= data_cnt_o + 1;
      end
      else begin
         data_cnt_o <= data_cnt_o;
      end
   end
end

always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
      err_cnt_o <= '0;
   end
   else begin
      if (m_axis_tvalid_i & exp_data != m_axis_tdata_i) begin
         err_cnt_o       <= err_cnt_o + 1'b1;
      end
      else begin
         err_cnt_o       <= err_cnt_o;
      end
   end
end


endmodule

