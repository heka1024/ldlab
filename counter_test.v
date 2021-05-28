`timescale 1ns / 1ps

module counter_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] out_ten;
	wire [3:0] out_one;

	integer i;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.reset(reset), 
		.out_ten(out_ten), 
		.out_one(out_one)
	);

	initial begin
		clk = 0; 
		reset = 0;
		#10;
		
		for (i = 0; i < 32'd100; i = i + 1) begin
			clk = ~clk;
			#10;
		end
		
		reset = 1;
		
		for (i = 0; i < 32'd100; i = i + 1) begin
			clk = ~clk;
			#10;
		end
		
		

	end
      
endmodule

