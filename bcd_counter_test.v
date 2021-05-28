`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:23 05/28/2021
// Design Name:   bcd_counter
// Module Name:   /csehome/heka1024/lab/lab7/bcd_counter_test.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_counter_test;

	// Inputs
	reg clk;
	reg reset;
	integer i;
	wire [3:0] out;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	bcd_counter uut (
		.clk(clk), 
		.reset(reset),
		.out(out),
		.carry(cout)
	);

	initial begin
		clk = 0;
		reset = 1; #10;		reset = 0; #10;


		for (i = 0; i < 32'hf; i = i + 1) begin
			clk = ~clk;
			#10;
		end

		reset = 1;
		for (i = 0; i < 32'hff; i = i + 1) begin
			clk = ~clk;
			#10;
		end
	end
      
endmodule

