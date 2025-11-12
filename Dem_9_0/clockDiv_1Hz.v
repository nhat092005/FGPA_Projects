`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:18 09/26/2025 
// Design Name: 
// Module Name:    clockDiv_1Hz 
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
module clockDiv
#(parameter M=50000000)
(
    input wire clki,
    output wire clko
    );

	reg [30:0] r_reg ;
	
	initial r_reg =0;
	
	always @(posedge clki) begin
		if (r_reg == M-1)
			r_reg <= 0;
		else
			r_reg <= r_reg + 1;
		end
		
	assign clko = (r_reg == M-1);
	 
endmodule
