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
	wire [3:0] count_chuc;   // 0 - 5
	wire [3:0] count_donvi;  // 0 - 9
	
	ClockDiv clock (.clki(clk_50M), .clko(clko));
	wire [4:0] seg [7:0];
	
	Dem_BCD_0_59_05Hz counter (
		.clk(clk_50M),
		.reset(reset),
		.q1(count_chuc),   // 0 - 5
		.q0(count_donvi)   // 0 - 9
    );
	 
	
	TM1638 tm (
		.led(0),
		.seg7(4'd0),
		.seg6(4'd0),
		.seg5(4'd0),
		.seg4(4'd0),
		.seg3(4'd0),
		.seg2(4'd0),
		.seg1(count_donvi),
		.seg0(count_chuc),
		.clkinput(clko),
		.clk(clk),
		.stb(stb),
		.dio(dio)
	);

endmodule
