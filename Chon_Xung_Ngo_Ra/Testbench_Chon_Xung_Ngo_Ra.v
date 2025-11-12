`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:16:07 09/21/2025
// Design Name:   Chon_Xung_Ngo_Ra
// Module Name:   /home/ise/Working_Space/Week5/Chon_Xung_Ngo_Ra/Testbench_Chon_Xung_Ngo_Ra.v
// Project Name:  Chon_Xung_Ngo_Ra
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Chon_Xung_Ngo_Ra
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Chon_Xung_Ngo_Ra;

	// Inputs
	reg clki;
	reg [1:0] S;
	reg E;

	// Outputs
	wire clko;

	// Instantiate the Unit Under Test (UUT)
	Chon_Xung_Ngo_Ra uut (
		.clki(clki), 
		.S(S), 
		.E(E), 
		.clko(clko)
	);

	localparam time ONE_S  = 1_000_000_000;   // 1 s
	localparam time TEN_S  = 10*ONE_S;        // 10 s
	
	initial begin
		// Initialize Inputs
		clki = 0;
		S = 0;
		E = 0;

		// Wait 1s for global reset to finish
		#(ONE_S);
        
		// Add stimulus here
		E = 1;
		#(TEN_S);
		S = 1;
		#(TEN_S);
		S = 2;
		#(TEN_S);
		S = 3;
		#(TEN_S);
		S = 0;

	end
	
	always forever #10 clki = ~clki;
      
endmodule

