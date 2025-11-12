`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:44 10/02/2025 
// Design Name: 
// Module Name:    SynCounter4bit_WithEnable 
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
module SynCounter4bit_WithEnable(
    input wire clk,
    input wire reset,
    input wire enable,
    input wire [3:0] max_count,
    output reg [3:0] q,
    output wire carry
    );
	 
always @(posedge clk or posedge reset) begin
	if (reset)
		q <= 4'd0;
	else if (enable) begin
		if (q == max_count)
			q <= 4'd0;
		else
			q <= q + 1;
	end
end
  
	assign carry = (q == max_count);

endmodule
