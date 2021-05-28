`timescale 1ns / 1ps

module bcd_to_7seg(
    input [3:0] bcd,
    output reg [6:0] seg
    );

    always @(bcd) begin
		case(bcd)
            4'd0: seg <= 7'b0111_111;
            4'd1: seg <= 7'b0000_110;
            4'd2: seg <= 7'b1011_011;
            4'd3: seg <= 7'b1001_111;
            4'd4: seg <= 7'b1100_110;
            4'd5: seg <= 7'b1101_101;
            4'd6: seg <= 7'b1111_101;
            4'd7: seg <= 7'b0000_111;
            4'd8: seg <= 7'b1111_111;
            4'd9: seg <= 7'b110_1111;
        endcase
    end


endmodule
