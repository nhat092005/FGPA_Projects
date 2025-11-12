`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:37:16 09/19/2025
// Design Name:   ClockDivision
// Module Name:   /home/ise/Working_Space/Week5/Dem_0_9/Testbench_ClockDivision.v
// Project Name:  Dem_0_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ClockDivision
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_ClockDivision;

	// Inputs
	reg clk;

	// Outputs
	wire [2:0] clko;

	// Instantiate the Unit Under Test (UUT)
	ClockDivision uut (
		.clk(clk), 
		.clko(clko)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always forever # 20 clk = ~clk;
      
endmodule

