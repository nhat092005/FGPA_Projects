`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:16:29 10/03/2025 
// Design Name: 
// Module Name:    Sang_Dan_Tat_Dan 
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
module Sang_Dan_Tat_Dan(
    input wire clk,
    input wire reset,
    input wire enable,
    output reg [7:0] q
    );

	reg data;
    
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			q <= 8'b0000_0001;
			data <= 1'b1;
		end else if (enable) begin
			if (q == 8'b1111_1111) begin
				data <= 1'b0;
			end else if (q == 8'b0000_0000) begin
				data <= 1'b1;
			end			
			q <= {q[6:0], data};
		end
	end
	
endmodule
