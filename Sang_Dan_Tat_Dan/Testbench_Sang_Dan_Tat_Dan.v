`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:28:57 10/03/2025
// Design Name:   Sang_Dan_Tat_Dan
// Module Name:   /home/ise/Working_Space/Week7/Sang_Dan_Tat_Dan/Testbench_Sang_Dan_Tat_Dan.v
// Project Name:  Sang_Dan_Tat_Dan
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sang_Dan_Tat_Dan
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Sang_Dan_Tat_Dan;

	// Inputs
	reg clk;
	reg reset;
	reg enable;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Sang_Dan_Tat_Dan uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;
	end
      
	always forever #10 clk = ~clk;
	always forever #100 enable = ~enable;
	
endmodule

