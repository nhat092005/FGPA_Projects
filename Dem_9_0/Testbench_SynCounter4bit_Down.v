`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:30:56 09/26/2025
// Design Name:   SynCounter4bit_Down
// Module Name:   /home/ise/Working_Space/Week6/Dem_9_0/Testbench_SynCounter4bit_Down.v
// Project Name:  Dem_9_0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SynCounter4bit_Down
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_SynCounter4bit_Down;

	// Inputs
	reg clki;
	reg reset;
	reg enable;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	SynCounter4bit_Down uut (
		.clki(clki), 
		.reset(reset), 
		.enable(enable), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clki = 0;
		reset = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;
	end
	
	always forever #10 clki = ~clki;
	always forever #10 enable = ~enable;
      
endmodule

