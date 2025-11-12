`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:12 10/03/2025
// Design Name:   Dich_8_bit
// Module Name:   /home/ise/Working_Space/Week7/Dich_8_bit/Testbench_Dich_8_bit.v
// Project Name:  Dich_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dich_8_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Dich_8_bit;

	// Inputs
	reg clk;
	reg reset;
	reg enable;
	reg data;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Dich_8_bit uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.data(data), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;
		data = 1;
		#1000;
		data = 0;
	end
      
		always forever #10 clk = ~clk;
		always forever #10 enable = ~enable;
		
endmodule

