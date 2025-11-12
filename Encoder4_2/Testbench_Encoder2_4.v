`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:09:49 08/25/2025
// Design Name:   Encoder4_2
// Module Name:   /home/ise/Working_Space/Encoder2_4/Testbench_Encoder2_4.v
// Project Name:  Encoder2_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder4_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Encoder2_4;

	// Inputs
	reg [3:0] w;

	// Outputs
	wire [1:0] y;

	// Instantiate the Unit Under Test (UUT)
	Encoder4_2 uut (
		.w(w), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		w = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		w = 4'b0001;
		#100;
		w = 4'b0010;
		#100;
		w = 4'b0100;
		#100;
		w = 4'b1000;
		#100;
		w = 4'b0000;
		#100;
		
	end
      
endmodule

