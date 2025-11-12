`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:16:40 10/10/2025 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
    input clk_50M,
	 input wire reset,
    output wire clk,
    output wire stb,
    output wire dio
    );

	wire clko;
	wire [7:0] led_pattern;
	
	ClockDiv clock (.clki(clk_50M), .clko(clko));
	
	// LED Pattern Generator
	LED_Pattern_05Hz led_gen (
		.clk(clk_50M),
		.reset(reset),
		.led(led_pattern)
	);
	
	TM1638 tm (
		.led(led_pattern),
		.seg7(4'd0),
		.seg6(4'd0),
		.seg5(4'd0),
		.seg4(4'd0),
		.seg3(4'd0),
		.seg2(4'd0),
		.seg1(4'd0),
		.seg0(4'd0),
		.clkinput(clko),
		.clk(clk),
		.stb(stb),
		.dio(dio)
	);

endmodule
