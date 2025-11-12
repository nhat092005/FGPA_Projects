`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:18:23 10/16/2025
// Design Name:   Mode4Processor
// Module Name:   /home/ise/Working_Space/Backup/Chon_4_Che_Do_Co_Tam_Dung/Testbench_Mode4Processor.v
// Project Name:  Chon_4_Che_Do_Co_Tam_Dung
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mode4Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Mode4Processor;

	// Inputs
	reg clk;
	reg reset;
	reg tick;
	reg pause;

	// Outputs
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	Mode4Processor uut (
		.clk(clk), 
		.reset(reset), 
		.tick(tick), 
		.pause(pause), 
		.leds(leds)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		tick = 0;
		pause = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		reset = 0;
		#500;
		pause = 1;
		#500;
		pause = 0;

	end
     
	always forever #10 clk = ~clk;
	always forever #20 tick = ~tick;
      
endmodule

