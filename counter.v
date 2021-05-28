`timescale 1ns / 1ps

module counter(
    input clk,
    input reset,
    output [3:0] out_ten,
    output [3:0] out_one
    );
    wire carry, tmp;
    bcd_counter b1(clk, reset, out_one, carry);
    bcd_counter b2(carry, reset, out_ten, tmp);   

endmodule
