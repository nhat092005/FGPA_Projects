`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:36 08/21/2025
// Design Name:   Adder_4bits
// Module Name:   /home/ise/Working_Space/Adder_4bits/Testbench_Adder_4bits.v
// Project Name:  Adder_4bits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_4bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Adder_4bits;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire Cout;
	wire [3:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	Adder_4bits uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Cout(Cout), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000;
		B = 4'b0000;
		Cin = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

	always forever #10 A = A + 1;
	always forever #20 B = B + 1;

endmodule

