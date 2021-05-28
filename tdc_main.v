`timescale 1ns / 1ps

module tdc_main(
    input clk,
    input reset,
    output [6:0] ten,
    output [6:0] one
    );
    wire modified_clk;
    frequency_divider f1(clk, reset, modified_clk);
    
    wire [3:0] v1;
    wire [3:0] v0;
    counter c1(modified_clk, reset, v1, v0);

    bcd_to_7seg b1(v1, ten);
    bcd_to_7seg b0(v0, one);
endmodule
