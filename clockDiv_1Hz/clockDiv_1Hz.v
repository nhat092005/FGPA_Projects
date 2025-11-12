`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:18:24 09/20/2025 
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
module clockDiv_1Hz
#(parameter M=50000000)
(
    input wire clki,
    output wire clko
    );

	wire [30:0] r_next;
	reg [30:0] r_reg ;
	
	initial r_reg =0;
	
	always @(posedge clki)
		r_reg <=r_next;
		
	assign r_next =(r_reg==M)?0:r_reg+1;
	assign clko = (r_reg<=M/2)?0:1 ;

endmodule
