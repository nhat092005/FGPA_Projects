`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:06 10/02/2025 
// Design Name: 
// Module Name:    Dem_BCD_0_59 
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
module Dem_BCD_0_59(
    input wire clk,
    input wire reset,
    output wire [3:0] q1,
    output wire [3:0] q0
    );
	
	wire tick_05Hz;
	
	TickGen #(25000000) u_tick (.clki(clk), .reset(reset), .tick(tick_05Hz));

	wire carry_q0;
	
	SynCounter4bit_WithEnable count_0_9 (
		.clk(clk),
		.reset(reset),
		.enable(tick_05Hz),
		.max_count(4'd9),
		.q(q0),
		.carry(carry_q0)
	);
	
	SynCounter4bit_WithEnable count_5_9 (
		.clk(clk),
		.reset(reset),
		.enable(tick_05Hz & carry_q0),
		.max_count(4'd5),
		.q(q1),
		.carry()
	);

endmodule
