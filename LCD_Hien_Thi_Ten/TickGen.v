`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:30 10/12/2025 
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
#(parameter M=50000000)
(
    input  wire clki,   // 50 MHz
    input  wire reset,
    output wire tick
);
	reg [30:0] r_reg;
	always @(posedge clki or posedge reset) begin
		if (reset) 
			r_reg <= 0;
		else if (r_reg == M-1) 
			r_reg <= 0;
		else 
			r_reg <= r_reg + 1;
	end
	
	assign tick = (r_reg == M-1);
	 
endmodule

