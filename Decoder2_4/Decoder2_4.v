`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:06 08/25/2025 
// Design Name: 
// Module Name:    Decoder2_4 
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
module Decoder2_4(
    input wire [1:0] w,
	 input wire E,
    output reg [3:0] y
    );
always @* begin
	y = 4'b0000;
	if (E == 1'b0) begin
		case (w)
			0 : y = 4'b0001;
			1 : y = 4'b0010;
			2 : y = 4'b0100;
			3 : y = 4'b1000;
			default: y = 4'b0000;
		endcase	
	end
end
endmodule
