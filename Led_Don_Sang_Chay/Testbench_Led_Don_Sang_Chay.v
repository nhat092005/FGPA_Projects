`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:20 10/03/2025
// Design Name:   Led_Don_Sang_Chay
// Module Name:   /home/ise/Working_Space/Week7/Led_Don_Sang_Chay/Testbench_Led_Don_Sang_Chay.v
// Project Name:  Led_Don_Sang_Chay
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Led_Don_Sang_Chay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Led_Don_Sang_Chay;

	// Inputs
	reg clk;
	reg reset;
	reg enable;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Led_Don_Sang_Chay uut (
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
		reset = 1;
		#100;
		reset = 0;
	end
      
		always forever #10 clk = ~clk;
		always forever #10 enable = ~enable;
      
endmodule

