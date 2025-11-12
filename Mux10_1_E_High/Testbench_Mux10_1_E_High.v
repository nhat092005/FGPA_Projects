`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:24:02 09/09/2025
// Design Name:   Mux10_1_E_High
// Module Name:   /home/ise/Working_Space/Week3/Mux10_1_E_High/Testbench_Mux10_1_E_High.v
// Project Name:  Mux10_1_E_High
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux10_1_E_High
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Mux10_1_E_High;

	// Inputs
	reg [9:0] I;
	reg [3:0] S;
	reg E;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	Mux10_1_E_High uut (
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
	
		//00
		S = 4'b0000;
		#600;
		S = 4'b0001;
		#500;
		S = 4'b0010;
		#500;
		S = 4'b0011;
		#500;
		
		//01
		S = 4'b0100;
		#500;
		S = 4'b0101;
		#500;
		S = 4'b0110;
		#500;
		S = 4'b0111;
		#500;		

		//10
		S = 4'b1000;
		#500;
		S = 4'b1001;
		#500;
		
	end
	always #5 I[9] = ~I[9];
	always #10 I[8] = ~I[8];
	always #15 I[7] = ~I[7];
	always #20 I[6] = ~I[6];
	always #25 I[5] = ~I[5];
	always #30 I[4] = ~I[4];
	always #35 I[3] = ~I[3];
	always #40 I[2] = ~I[2];
	always #45 I[1] = ~I[1];
	always #50 I[0] = ~I[0];
	
 
endmodule

