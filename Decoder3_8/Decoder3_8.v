`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:14:21 08/29/2025 
// Design Name: 
// Module Name:    Decoder3_8 
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
module Decoder3_8(
    input wire E,
    input wire [2:0] w,
    output reg [7:0] y
    );

always @* begin
	y = 8'b0000_0000;
	if (E == 1'b0) begin
		case (w)
			0 : y = 8'b0000_0001;
			1 : y = 8'b0000_0010;
			2 : y = 8'b0000_0100;
			3 : y = 8'b0000_1000;
			4 : y = 8'b0001_0000;
			5 : y = 8'b0010_0000;
			6 : y = 8'b0100_0000;
			7 : y = 8'b1000_0000;
			default: y = 8'b0000_0000;
		endcase	
	end
end
endmodule
