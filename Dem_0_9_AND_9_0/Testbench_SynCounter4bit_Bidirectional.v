`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:47:02 09/26/2025
// Design Name:   SynCounter4bit_Bidirectional
// Module Name:   /home/ise/Working_Space/Week6/Dem_0_9_AND_9_0/Testbench_SynCounter4bit_Bidirectional.v
// Project Name:  Dem_0_9_AND_9_0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SynCounter4bit_Bidirectional
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_SynCounter4bit_Bidirectional;

	// Inputs
	reg clki;
	reg reset;
	reg enable;
	reg direction;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	SynCounter4bit_Bidirectional uut (
		.clki(clki), 
		.reset(reset), 
		.enable(enable), 
		.direction(direction), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clki = 0;
		reset = 0;
		enable = 0;
		direction = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;
		#100;
		#1000;
		direction = 1;
		#1000;
		direction = 0;
	end
      
	always forever #10 clki = ~clki;
	always forever #10 enable = ~enable;
		
endmodule

