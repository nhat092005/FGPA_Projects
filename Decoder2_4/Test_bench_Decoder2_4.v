`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:58:10 08/29/2025
// Design Name:   Decoder2_4
// Module Name:   /home/ise/Working_Space/Chapter_2/Decoder2_4/Test_bench_Decoder2_4.v
// Project Name:  Decoder2_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder2_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_bench_Decoder2_4;

	// Inputs
	reg [1:0] w;
	reg E;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	Decoder2_4 uut (
		.w(w), 
		.E(E), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		w = 0;
		E = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		w = 2'b00; #100;
		w = 2'b01; #100;
		w = 2'b10; #100;
		w = 2'b11; #100;
		
		E = 1;
		w = 2'b00; #100;
		w = 2'b01; #100;
		w = 2'b10; #100;
		w = 2'b11; #100;
		

	end
      
endmodule

