`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:48:28 10/03/2025 
// Design Name: 
// Module Name:    Sang_Dan_Tat_Dan_05Hz 
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
module Sang_Dan_Tat_Dan_05Hz(
    input wire clk,
    input wire reset,
    output wire [7:0] q
    );

	wire tick_05Hz;
	
	TickGen #(25_000_000) u_tick (.clk(clk), .reset(reset), .tick(tick_05Hz));
	
	Sang_Dan_Tat_Dan Sang_Dan_Tat_Dan_05Hz(.clk(clk),.reset(reset), .enable(tick_05Hz), .q(q));

endmodule
