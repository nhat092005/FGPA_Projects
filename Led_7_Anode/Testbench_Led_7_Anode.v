`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:46:57 09/14/2025
// Design Name:   gm_led_7doan
// Module Name:   /home/ise/Working_Space/Week3/Led_7_Anode/Testbench_Led_7_Anode.v
// Project Name:  Led_7_Anode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gm_led_7doan
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Led_7_Anode;

	// Inputs
	reg [3:0] so_gma;

	// Outputs
	wire [6:0] sseg;

	// Instantiate the Unit Under Test (UUT)
	gm_led_7doan uut (
		.so_gma(so_gma), 
		.sseg(sseg)
	);

	initial begin
		// Initialize Inputs
		so_gma = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always forever #50 so_gma = so_gma + 1'b1;
      
endmodule

