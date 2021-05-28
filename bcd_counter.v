`timescale 1ns / 1ps

module bcd_counter(
    input clk,
    input reset,
    output reg [3:0] out,
    output reg carry
    );
    initial begin
        out <= 4'd0;
        carry <= 1'd0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 4'd0;
            carry <= 1'd0;
        end else begin
            if (out == 4'd9) begin
                carry <= 1'd1;
                out <= 4'd0;
            end else begin
                carry <= 1'd0;
                out <= out + 1;
            end
        end
    end

endmodule
