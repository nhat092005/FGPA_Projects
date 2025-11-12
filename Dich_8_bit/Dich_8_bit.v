`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:14:47 10/03/2025 
// Design Name: 
// Module Name:    Dich_8_bit 
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
module Dich_8_bit(
	input wire clk,
	input wire reset,
	input wire enable,
	input wire data,
	output reg [7:0] q
);

	always @(posedge clk or posedge reset) begin
		if (reset) begin
			q <= ({7'b0, data});
		end 
		else if (enable) begin
			q <= {q[6:0], data};
		end
	end
	
endmodule
