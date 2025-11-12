`timescale 1ns/1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:16:31 09/19/2025
// Design Name:   Dem_0_9
// Module Name:   /home/ise/Working_Space/Week5/Dem_0_9/Testbench_Dem_0_9.v
// Project Name:  Dem_0_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dem_0_9
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Dem_0_9;

	// Inputs
	reg clki;
	reg [1:0] S;
	reg E;
	reg rst_n;

	// Outputs
	wire [6:0] sseg;

	// Instantiate the Unit Under Test (UUT)
	Dem_0_9 uut (
		.clki(clki), 
		.S(S), 
		.E(E), 
		.rst_n(rst_n), 
		.sseg(sseg)
	);

	initial begin
		// Initialize Inputs
		clki = 0;
		S = 0;
		E = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst_n = 1'b1;
		#20;
		rst_n = 1'b0;
		#20;
		E = 1'b1;
		
		#50_000;  S = 2'b01;
		#50_000;  S = 2'b10;
		#30_000;  S = 2'b11;
		#20_000;  S = 2'b00;
		#60_000;
	end
	
	always forever #10 clki = ~clki;
      
endmodule

