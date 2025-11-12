`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:03 08/25/2025 
// Design Name: 
// Module Name:    Encoder4_2 
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
module Encoder4_2(
    input wire [3:0] w,
    output reg [1:0] y
    );
	 
always @* begin
  if      (w == 4'b0001) y = 2'b00;
  else if (w == 4'b0010) y = 2'b01;
  else if (w == 4'b0100) y = 2'b10;
  else if (w == 4'b1000) y = 2'b11;
  else y = 2'b00;
end

endmodule
