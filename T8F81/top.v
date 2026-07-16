
module top(
    input clk,
    input rst_n,
    output reg led1
    );



    wire clk_out;
    
    clk_divider#(
        .CLK_IN_FREQ(100_000_000),
        .CLK_OUT_FREQ(5)
    )clk_divider_i
    (
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_out)
    );
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            led1 <= 1'b0;
        end else begin
            led1 <= clk_out ? 1'b1 : 1'b0 ;
        end
    end
    
endmodule