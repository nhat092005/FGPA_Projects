`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:31:02 09/11/2025
// Design Name:   Demux1_8
// Module Name:   /home/ise/Working_Space/Week3/Demux1_8/Testbecnh_Demux1_8.v
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

module Testbecnh_Demux1_8;

	// Inputs
	reg I;
	reg [2:0] S;
	reg E;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Demux1_8 uut (
		.I(I), 
		.S(S), 
		.E(E), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		S = 0;
		E = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		I = 1;
		E = 1;

	end
	
	always forever #200	S = S + 1'b1;
	always forever #25	I = ~I;
      
endmodule

