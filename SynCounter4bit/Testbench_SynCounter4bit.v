`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:49:37 09/21/2025
// Design Name:   SynCounter4bit
// Module Name:   /home/ise/Working_Space/Week5/SynCounter4bit/Testbench_SynCounter4bit.v
// Project Name:  SynCounter4bit
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
	reg clki;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	SynCounter4bit uut (
		.clki(clki), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clki = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;

	end
	
	always forever #20 clki = ~clki;
      
endmodule

