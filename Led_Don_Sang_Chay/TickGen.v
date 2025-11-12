`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:59:46 10/03/2025 
// Design Name: 
// Module Name:    TickGen 
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
module TickGen
#(parameter M = 50_000_000)
(
    input wire clk,
    input wire reset,
    output wire tick
    );

	reg [30:0] r;
	always @(posedge clk or posedge reset) begin
		if (reset) 
			r <= 0;
		else if (r == M-1) 
			r <= 0;
		else 
			r <= r + 1;
  end
  
  assign tick = (r == M-1);

endmodule
