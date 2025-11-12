`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:06:07 10/16/2025
// Design Name:   Dem_BCD_0_31_UpDown
// Module Name:   /home/ise/Working_Space/Backup/Dem_0_31_tu_dong/Testbench_Dem_BCD_0_31_UpDown.v
// Project Name:  Dem_0_31_tu_dong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dem_BCD_0_31_UpDown
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Dem_BCD_0_31_UpDown;

	// Inputs
	reg clk;
	reg reset;
	reg enable;

	// Outputs
	wire [3:0] q1;
	wire [3:0] q0;

	// Instantiate the Unit Under Test (UUT)
	Dem_BCD_0_31_UpDown uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.q1(q1), 
		.q0(q0)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;
		
	end
      
		always forever #10 clk = ~clk;
		always forever #20 enable = ~enable;
		
endmodule

