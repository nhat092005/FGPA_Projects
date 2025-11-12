`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:12:05 10/11/2025
// Design Name:   Dem_BCD_0_59
// Module Name:   /home/ise/Working_Space/Week8/TM1638/Testbench_Dem_BCD_0_59.v
// Project Name:  TM1638
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dem_BCD_0_59
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Dem_BCD_0_59;

	// Inputs
	reg clk;
	reg reset;
	reg tick;

	// Outputs
	wire [3:0] q1;
	wire [3:0] q0;

	// Instantiate the Unit Under Test (UUT)
	Dem_BCD_0_59 uut (
		.clk(clk), 
		.reset(reset), 
		.tick(tick), 
		.q1(q1), 
		.q0(q0)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		tick = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;

	end
	
	always forever #10 clk = ~clk;
	always forever #20 tick = ~tick;
      
endmodule

