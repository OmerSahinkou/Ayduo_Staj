module efx_mac1gbe_exp_pat_gen #(
   parameter AXIS_DW = 16
) (
   input clk,
   input rstn,
   input pcs_status_i,
   
   input                      s_axis_tready_out_from_mac,
   output reg                 s_axis_tvalid_in2mac,
   output reg                 s_axis_tlast_in2mac,
   output reg [AXIS_DW-1:0]   s_axis_tdata_in2mac,
   output reg [AXIS_DW/8-1:0] s_axis_tkeep_in2mac,
   output reg                 s_axis_tuser_in2mac
);

`ifdef JUMBO
   localparam ROLL_OVER = 14'd8773;
   localparam CNT_WIDTH = 14;
`else
   localparam ROLL_OVER = 10'd761;
   localparam CNT_WIDTH = 10;
`endif

reg [CNT_WIDTH-1:0] cnt;

always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
      cnt <= '0;
   end
   else begin
      if (pcs_status_i) begin
         if (cnt == ROLL_OVER)                cnt <= '0;
         else if (s_axis_tready_out_from_mac) cnt <= cnt + 1'b1;
		 else                                 cnt <= cnt;
      end
   end
end

// Data: 128 cycles
// Idle: 64 cycles
always @ (posedge clk or negedge rstn) begin
   if (~rstn) begin
      s_axis_tvalid_in2mac <= 1'b0;
      s_axis_tlast_in2mac  <= 1'b0;
      s_axis_tdata_in2mac  <= 64'b0;
      s_axis_tkeep_in2mac  <= 8'b0;
      s_axis_tuser_in2mac  <= 1'b0;
   end 
   else if (pcs_status_i) begin
      if (s_axis_tready_out_from_mac) begin
         if (cnt == 'd0) begin
            s_axis_tvalid_in2mac <= 1'b1;
            s_axis_tlast_in2mac  <= 1'b0;
            s_axis_tdata_in2mac  <= 16'h207a;
            s_axis_tkeep_in2mac  <= 2'b11;
         end
         else if (cnt == 'd1) begin
            s_axis_tvalid_in2mac <= 1'b1;
            s_axis_tlast_in2mac  <= 1'b0;
            s_axis_tdata_in2mac  <= 16'h3aae;
            s_axis_tkeep_in2mac  <= 2'b11;
         end
         else if (cnt >= 'd2 & cnt <= 'd748) begin
            s_axis_tvalid_in2mac <= 1'b1;
            s_axis_tlast_in2mac  <= 1'b0;
            s_axis_tdata_in2mac  <= {cnt[0],cnt};
            s_axis_tkeep_in2mac  <= 2'b11;
         end
         else if (cnt == 'd749) begin
            s_axis_tvalid_in2mac <= 1'b1;
            s_axis_tlast_in2mac  <= 1'b1;
            s_axis_tdata_in2mac  <= {cnt[0],cnt};
            s_axis_tkeep_in2mac  <= 2'b11;
         end
         `ifdef JUMBO
            else if (cnt == 'd762) begin
               s_axis_tvalid_in2mac <= 1'b1;
               s_axis_tlast_in2mac  <= 1'b0;
               s_axis_tdata_in2mac  <= 16'h3160;
               s_axis_tkeep_in2mac  <= 2'b11;
            end
            else if (cnt == 'd763) begin
               s_axis_tvalid_in2mac <= 1'b1;
               s_axis_tlast_in2mac  <= 1'b0;
               s_axis_tdata_in2mac  <= 16'h7030;
               s_axis_tkeep_in2mac  <= 2'b11;
            end
            else if (cnt >= 'd764 & cnt <= 'd8760) begin
               s_axis_tvalid_in2mac <= 1'b1;
               s_axis_tlast_in2mac  <= 1'b0;
               s_axis_tdata_in2mac  <= {2{cnt[7:0]}};
               s_axis_tkeep_in2mac  <= 2'b11;
            end
            else if (cnt == 'd8761) begin
               s_axis_tvalid_in2mac <= 1'b1;
               s_axis_tlast_in2mac  <= 1'b1;
               s_axis_tdata_in2mac  <= {2{cnt[7:0]}};
               s_axis_tkeep_in2mac  <= 2'b11;
            end
         `endif
         else begin
            s_axis_tvalid_in2mac <= '0;
            s_axis_tlast_in2mac  <= '0;
            s_axis_tdata_in2mac  <= '0;
            s_axis_tkeep_in2mac  <= '0;
         end
      end
	  else begin
	     s_axis_tvalid_in2mac <= s_axis_tvalid_in2mac;
         s_axis_tlast_in2mac  <= s_axis_tlast_in2mac;
         s_axis_tdata_in2mac  <= s_axis_tdata_in2mac;
         s_axis_tkeep_in2mac  <= s_axis_tkeep_in2mac;
	  end
   end
   else begin
      s_axis_tvalid_in2mac <= '0;
      s_axis_tlast_in2mac  <= '0;
      s_axis_tdata_in2mac  <= '0;
      s_axis_tkeep_in2mac  <= '0;
   end
end

endmodule
