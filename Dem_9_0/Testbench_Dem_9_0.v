`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:18:12 09/26/2025
// Design Name:   Dem_9_0
// Module Name:   /home/ise/Working_Space/Week6/Dem_9_0/Testbench_Dem_9_0.v
// Project Name:  Dem_9_0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dem_9_0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Dem_9_0;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Dem_9_0 uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	localparam time ONE_S  = 1_000_000_000;   // 1 s
	localparam time TEN_S  = 10*ONE_S;        // 10 s

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
        
		// Add stimulus here
		#(ONE_S);
		reset = 1;
		#(ONE_S);
		reset = 0;
		#(ONE_S);
	end
	
	always forever #10 clk = ~clk;
      
endmodule

