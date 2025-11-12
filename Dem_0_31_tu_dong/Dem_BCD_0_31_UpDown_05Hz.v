`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:53 10/16/2025 
// Design Name: 
// Module Name:    Dem_BCD_0_31_UpDown_05Hz 
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
module Dem_BCD_0_31_UpDown_05Hz(
    input wire clk,
    input wire reset,
    output wire [3:0] q1,  // CHUC
    output wire [3:0] q0   // DON VI
    );
	 
	wire tick_05Hz;
	
	TickGen #(25000000) u_tick (.clki(clk), .reset(reset), .tick(tick_05Hz));
	
	Dem_BCD_0_31_UpDown counter_updown (
		.clk(clk),
		.reset(reset),
		.enable(tick_05Hz),
		.q1(q1),
		.q0(q0)
	);
	
endmodule