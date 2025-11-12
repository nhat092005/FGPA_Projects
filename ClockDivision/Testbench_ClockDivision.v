`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:22:53 09/21/2025
// Design Name:   ClockDivision
// Module Name:   /home/ise/Working_Space/Week5/ClockDivision/Testbench_ClockDivision.v
// Project Name:  ClockDivision
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
	reg [0:0] clki;

	// Outputs
	wire [2:0] clko;

	// Instantiate the Unit Under Test (UUT)
	ClockDivision uut (
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

