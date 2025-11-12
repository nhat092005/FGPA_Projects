`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:36:21 09/19/2025
// Design Name:   Mux4_1
// Module Name:   /home/ise/Working_Space/Week5/Dem_0_9/Testbench_Mux4_1.v
// Project Name:  Dem_0_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Mux4_1;

	// Inputs
	reg [3:0] I;
	reg [1:0] S;
	reg E;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	Mux4_1 uut (
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
	E = 1;
	
	I = 1;
	#100;
	I = 0;
	#100;
	I = 1;
	#100;
	I = 0;
	#100;
	I = 1;
	#100;
	I = 0;
	#100;
	
	end
      
endmodule

