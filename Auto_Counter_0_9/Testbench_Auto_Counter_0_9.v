`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:14:31 09/26/2025
// Design Name:   Auto_Counter_0_9
// Module Name:   /home/ise/Working_Space/Week6/Auto_Counter_0_9/Testbench_Auto_Counter_0_9.v
// Project Name:  Auto_Counter_0_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Auto_Counter_0_9
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Auto_Counter_0_9;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Auto_Counter_0_9 uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	localparam time ONE_S  = 1_000_000_000;   // 1 s
	localparam time TEN_S  = 10*ONE_S;        // 10 s

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
        
		// Add stimulus here
		
		
	end
      
endmodule

