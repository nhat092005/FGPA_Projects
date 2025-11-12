`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:29:12 09/12/2025 
// Design Name: 
// Module Name:    Demux1_4_E_High 
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
module Demux1_4_E_High(
input wire I,
input wire [1:0] S,
input wire E,
output reg [3:0] Y
);
always @(*) begin
	if (E==0) begin
		Y = 4'b1111;
	end
	else begin
		Y = 4'b1111;
			case(S)
				2'b00: Y[0] = I;
				2'b01: Y[1] = I;
				2'b10: Y[2] = I;
				2'b11: Y[3] = I;
				default: Y = 4'b1111;
		endcase
	end
end
endmodule
