`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:58:59 10/17/2025 
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
	 input  wire sw_mode0,     // SW MODE bit 0
    input  wire sw_mode1,     // SW MODE bit 1
    input  wire sw_pause,     // SW tam dung
    output wire clk,
    output wire stb,
    output wire dio
    );

	wire clko;
	
	ClockDiv clock (.clki(clk_50M), .clko(clko));

	wire [7:0] LED_OUT;
	
	LEDController led_control(
    .clki(clk_50M),        
    .reset(reset),
    .sw_mode0(sw_mode0),     
    .sw_mode1(sw_mode1),    
    .sw_pause(sw_pause),     
    .leds(LED_OUT)
	 );
	
	TM1638 tm (
		.led(LED_OUT),
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
