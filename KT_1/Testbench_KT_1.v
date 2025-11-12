`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:30:59 09/12/2025
// Design Name:   KT_1
// Module Name:   /home/ise/Working_Space/Chapter_2/KT_1/Testbench_KT_1.v
// Project Name:  KT_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KT_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_KT_1;

	// Inputs
	reg A;
	reg B;
	reg [1:0] S;
	reg [3:0] Im;
	reg Idm;

	// Outputs
	wire Ym;
	wire [3:0] Ydm;

	// Instantiate the Unit Under Test (UUT)
	KT_1 uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Im(Im), 
		.Idm(Idm), 
		.Ym(Ym), 
		.Ydm(Ydm)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		S = 0;
		Im = 0;
		Idm = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 1;
		S = 2'b00;
		#100;
		S = 2'b01;
		#100;
		S = 2'b10;
		#100;
		S = 2'b11;
		#100;
		A = 0;
		B = 1;
		S = 2'b00;
		#100;
		S = 2'b01;
		#100;
		S = 2'b10;
		#100;
		S = 2'b11;
		#100;
	end
      
	always forever # 5 Im[0] = ~Im[0];
	always forever # 10 Im[1] = ~Im[1];
	always forever # 20 Im[2] = ~Im[2];
	always forever # 30 Im[3] = ~Im[3];
	always forever # 40 Idm = ~Idm;
		
endmodule

