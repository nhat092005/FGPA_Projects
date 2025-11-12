`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:01:17 10/11/2025
// Design Name:   top
// Module Name:   /home/ise/Working_Space/Week8/TM1638/Testbench_top.v
// Project Name:  TM1638
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_top;

	// Inputs
	reg clk_50M;
	reg reset;

	// Outputs
	wire clk;
	wire stb;
	wire dio;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk_50M(clk_50M), 
		.reset(reset), 
		.clk(clk), 
		.stb(stb), 
		.dio(dio)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset =0;
	end
      
	always forever #10 clk_50M = ~clk_50M;
		
endmodule

