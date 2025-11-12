`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:52 08/25/2025 
// Design Name: 
// Module Name:    Decoder2_4_if 
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
module Decoder2_4_if(
    input wire [1:0] w,
    output reg[3:0] y
    );
always @* begin
	if (w == 2'b00)
		y = 4'b1000;
	else if (w == 2'b01)
		y = 4'b0100;
	else if ( w == 2'b10)
		y = 4'b0010;
	else 
		y = 4'b0001;
end
endmodule
