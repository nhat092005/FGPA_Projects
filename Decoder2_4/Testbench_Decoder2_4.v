`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:03:16 08/25/2025
// Design Name:   Decoder2_4
// Module Name:   /home/ise/Working_Space/Decoder2_4/Testbench_Decoder2_4.v
// Project Name:  Decoder2_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder2_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Decoder2_4;

	// Inputs
	reg [1:0] w;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	Decoder2_4 uut (
		.w(w), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		w = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		w = 1;
		#100;
		w = 2;
		#100;
		w = 3;
		#100;
		
	end
      
endmodule

