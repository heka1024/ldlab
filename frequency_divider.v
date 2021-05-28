`timescale 1ns / 1ps

module frequency_divider(
    input clkin,
    input clr,
    output reg clkout
    );

    reg [31:0] cnt;

    always @(posedge clkin) begin
        if (clr) begin
            cnt <= 32'd0;
            clkout <= 1'b0;
        end else if (cnt == 32'd25000000) begin
            cnt <= 32'd0;
            clkout <= ~clkout;
        end else begin
            cnt <= cnt + 1;
        end
    end

endmodule
