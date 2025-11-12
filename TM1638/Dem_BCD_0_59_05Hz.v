`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:53:58 10/11/2025 
// Design Name: 
// Module Name:    Dem_BCD_0_59_05Hz 
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
module Dem_BCD_0_59_05Hz(
    input clk,
    input reset,
    output [3:0] q1,	// 0 - 5
    output [3:0] q0	// 0 - 9
    );

	wire tick_05Hz;
	
	TickGen #(25_000_000) u_tick (.clki(clk), .reset(reset), .tick(tick_05Hz));
	
	Dem_BCD_0_59 BCD_0_59(.clk(clk), .reset(reset), .tick(tick_05Hz), .q1(q1), .q0(q0));

endmodule
