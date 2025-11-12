`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:19:34 08/26/2025
// Design Name:   Multiplexer4_1
// Module Name:   /home/ise/Working_Space/Multiplexer4_1/Testbench_Multiplexer4_1.v
// Project Name:  Multiplexer4_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplexer4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Multiplexer4_1;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Multiplexer4_1 uut (
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
		for (k = 0; k < 4; k = k + 1) begin
			i = 4'b0001 << k;
			s = 2'b00; #50;
			s = 2'b01; #50;
			s = 2'b10; #50;
			s = 2'b11; #50;
		end
	end
      
endmodule

