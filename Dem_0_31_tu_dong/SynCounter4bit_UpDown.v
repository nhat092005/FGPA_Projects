`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:52 10/16/2025 
// Design Name: 
// Module Name:    SynCounter4bit_UpDown 
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
module SynCounter4bit_UpDown(
    input wire clk,
    input wire reset,
    input wire enable,
    input wire up_down,			// UP - DOWN
    input wire [3:0] max_count,
    output reg [3:0] q,
    output wire carry,
    output wire borrow
    );
	 
	always @(posedge clk or posedge reset) begin
		if (reset)
			q <= 4'd0;
		else if (enable) begin
			if (up_down) begin  // UP
				if (q == max_count)
					q <= 4'd0;
				else
					q <= q + 1;
			end
			else begin  // DOWN
				if (q == 4'd0)
					q <= max_count;
				else
					q <= q - 1;
			end
		end
	end
	  
	assign carry = (q == max_count) && up_down;
	assign borrow = (q == 4'd0) && ~up_down;
		
endmodule
