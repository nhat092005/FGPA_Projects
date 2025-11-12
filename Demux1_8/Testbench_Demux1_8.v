`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:16:03 08/26/2025
// Design Name:   Demux1_8
// Module Name:   /home/ise/Working_Space/Chapter_2/Demux1_8/Testbench_Demux1_8.v
// Project Name:  Demux1_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Demux1_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Demux1_8;

	// Inputs
	reg i;
	reg [2:0] s;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	Demux1_8 uut (
		.i(i), 
		.s(s), 
		.y(y)
	);

	integer k;

	initial begin
		// Initialize Inputs
		i = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		i = 1;
		for (k = 0; k < 8; k = k + 1) begin
			s = k[2:0];;
			#100;
		end
		i = 0;
		#100;
	end
      
endmodule

