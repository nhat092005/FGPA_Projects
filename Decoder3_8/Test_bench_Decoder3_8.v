`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:26:02 08/29/2025
// Design Name:   Decoder3_8
// Module Name:   /home/ise/Working_Space/Chapter_2/Decoder3_8/Test_bench_Decoder3_8.v
// Project Name:  Decoder3_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder3_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_bench_Decoder3_8;

	// Inputs
	reg E;
	reg [2:0] w;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	Decoder3_8 uut (
		.E(E), 
		.w(w), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		E = 0;
		w = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		w = 3'b000; #100;
		w = 3'b001; #100;
		w = 3'b010; #100;
		w = 3'b011; #100;
		w = 3'b100; #100;
		w = 3'b101; #100;
		w = 3'b110; #100;
		w = 3'b111; #100;
		
		E = 1;
		w = 3'b000; #100;
		w = 3'b001; #100;
		w = 3'b010; #100;
		w = 3'b011; #100;
		w = 3'b100; #100;
		w = 3'b101; #100;
		w = 3'b110; #100;
		w = 3'b111; #100;

	end
      
endmodule

