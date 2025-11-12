`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:22:25 09/20/2025
// Design Name:   clockDiv_1Hz
// Module Name:   /home/ise/Working_Space/Week5/clockDiv_1Hz/Testbench_clockDiv_1Hz.v
// Project Name:  clockDiv_1Hz
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clockDiv_1Hz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_clockDiv_1Hz;

	// Inputs
	reg clki;

	// Outputs
	wire clko;

	// Instantiate the Unit Under Test (UUT)
	clockDiv_1Hz uut (
		.clki(clki), 
		.clko(clko)
	);

	initial begin
		// Initialize Inputs
		clki = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always forever #10 clki = ~clki;
      
endmodule

