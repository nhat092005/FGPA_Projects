`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:07:44 09/26/2025
// Design Name:   Auto_Bidirectional_Counter
// Module Name:   /home/ise/Working_Space/Week6/Auto_Counter_0_9/Testbench_Auto_Bidirectional_Counter.v
// Project Name:  Auto_Counter_0_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Auto_Bidirectional_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Auto_Bidirectional_Counter;

	// Inputs
	reg clki;
	reg reset;
	reg enable;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Auto_Bidirectional_Counter uut (
		.clki(clki), 
		.reset(reset), 
		.enable(enable), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clki = 0;
		reset = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#100;
		reset = 0;
		
	end
    
	always forever #10 clki = ~clki;
	always forever #10 enable = ~enable;	 
	
endmodule

