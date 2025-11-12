`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:16:15 09/19/2025
// Design Name:   SynCounter4bit
// Module Name:   /home/ise/Working_Space/Week5/Dem_0_9/Testbench_SynCounter4bit.v
// Project Name:  Dem_0_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SynCounter4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_SynCounter4bit;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	SynCounter4bit uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);
	
	integer i;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		#100;
		reset = 1;
		#100;
		reset = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i=0;i<32;i=i+1)
			#10 clk = ~clk;
	end
      
endmodule

