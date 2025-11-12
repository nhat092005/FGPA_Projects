`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:00:36 10/03/2025 
// Design Name: 
// Module Name:    Led_Don_Sang_Chay 
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
module Led_Don_Sang_Chay(
	input wire clk,
	input wire reset,
	input wire enable,
	output reg [7:0] q
);

	always @(posedge clk or posedge reset) begin
		if (reset) begin
			q <= 8'b0000_0001;
		end 
		else if (enable) begin
			q <= (q == 8'b1000_0000) ? 8'b0000_0001 : (q << 1);
		end
	end
	
endmodule
