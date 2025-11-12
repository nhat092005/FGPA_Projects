`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:37:20 10/03/2025 
// Design Name: 
// Module Name:    Dich_8_bit_05Hz 
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
module Dich_8_bit_05Hz(
    input wire clk,
    input wire reset,
	 input wire data,
    output wire [7:0] q
);

	wire tick_05Hz;
	
	TickGen #(25_000_000) u_tick (.clk(clk), .reset(reset), .tick(tick_05Hz));
	
	Dich_8_bit Dich_05hz(.clk(clk),.reset(reset), .enable(tick_05Hz), .data(data), .q(q));

endmodule
