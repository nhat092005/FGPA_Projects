`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:44:31 09/19/2025 
// Design Name: 
// Module Name:    Mux4_1 
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
module Mux4_1(
    input wire [3:0] I,
    input wire [1:0] S,
    input wire E,
    output reg Y
    );
	always @* begin
		if (E == 1'b0) begin
			Y = 1'b0;
		end
		else begin
			case(S)
				2'b00: Y = I[0];
				2'b01: Y = I[1];
				2'b10: Y = I[2];
				2'b11: Y = I[3];
				default: Y = 0;
			endcase
		end
	end

endmodule
