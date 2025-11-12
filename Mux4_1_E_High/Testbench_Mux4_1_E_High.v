`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:33:25 09/09/2025
// Design Name:   Mux4_1_E_High
// Module Name:   /home/ise/Working_Space/Week3/Mux4_1_E_High/Testbench_Mux4_1_E_High.v
// Project Name:  Mux4_1_E_High
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4_1_E_High
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Mux4_1_E_High;

	// Inputs
	reg [3:0] I;
	reg [1:0] S;
	reg E;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	Mux4_1_E_High uut (
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

	end
	always #10	I[0] = ~I[0];
	always #20	I[1] = ~I[1];
	always #30	I[2] = ~I[2];
	always #40	I[3] = ~I[3];
	
	always #100 S =  S + 1'b1;
      
endmodule

