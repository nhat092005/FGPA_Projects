`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:40:51 09/26/2025
// Design Name:   Dem_0_9_AND_9_0_Single
// Module Name:   /home/ise/Working_Space/Week6/Dem_0_9_AND_9_0/Testbench_Dem_0_9_AND_9_0.v
// Project Name:  Dem_0_9_AND_9_0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dem_0_9_AND_9_0_Single
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Dem_0_9_AND_9_0;

	// Inputs
	reg S;
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Dem_0_9_AND_9_0_Single uut (
		.S(S), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	localparam time ONE_S  = 1_000_000_000;   // 1 s
	localparam time TEN_S  = 10*ONE_S;        // 10 s

	initial begin
		// Initialize Inputs
		S = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#ONE_S;
        
		// Add stimulus here
		reset = 1;
		#ONE_S;
		reset = 0;
		#TEN_S;
		S = 1'b1;
		
	end
      
	always forever #10 clk = ~clk;
		
endmodule

