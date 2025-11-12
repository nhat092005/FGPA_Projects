`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:08:58 10/11/2025
// Design Name:   LED_Pattern
// Module Name:   /home/ise/Working_Space/Week8/SANG_DON_TM1638/Testbench_LED_Pattern.v
// Project Name:  SANG_DON_TM1638
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LED_Pattern
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_LED_Pattern;

	// Inputs
	reg clk;
	reg reset;
	reg tick;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	LED_Pattern uut (
		.clk(clk), 
		.reset(reset), 
		.tick(tick), 
		.led(led)
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

