`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:35:58 10/10/2025 
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
	 input wire tick,
    output wire [3:0] q1,	// 0 - 5
    output wire [3:0] q0	// 0 - 9
);

	wire carry_q0;
	
	SynCounter4bit_WithEnable count_0_9 (
		.clk(clk),
		.reset(reset),
		.enable(tick),
		.max_count(4'd9),
		.q(q0),
		.carry(carry_q0)
	);
	
	SynCounter4bit_WithEnable count_5_9 (
		.clk(clk),
		.reset(reset),
		.enable(tick & carry_q0),
		.max_count(4'd5),
		.q(q1),
		.carry()
	);


endmodule
