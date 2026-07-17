//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2026 12:01:20 AM
// Design Name: 
// Module Name: clk_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_divider#(
        parameter CLK_IN_FREQ   = 100_000_000,
        parameter CLK_OUT_FREQ  = 1_000_000
    )
    (
        input clk_in,
        input rst_n,
        output reg clk_out
    );
    
    
    
    localparam  bit_limit = (CLK_IN_FREQ / CLK_OUT_FREQ)/2;
    reg      [$clog2(bit_limit)-1:0] bitcounter;
    
    always @(posedge clk_in)begin
        if(!rst_n)begin
            bitcounter <= 0 ;
            clk_out    <= 0 ;
        end else begin
            if(bitcounter < bit_limit - 1)begin
                bitcounter <= bitcounter + 1 ;
            end else begin
                bitcounter <= 0 ;
                clk_out <= ~ clk_out;
            end
        end
    end
endmodule
