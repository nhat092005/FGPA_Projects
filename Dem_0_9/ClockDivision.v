`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:28:48 09/19/2025 
// Design Name: 
// Module Name:    ClockDivision 
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
module ClockDivision(
    input wire clk,
    output wire [2:0] clko
    );

	clockDiv #(100000000) cd0 (clk,clko[0]);
	clockDiv #(50000000) cd1 (clk,clko[1]);
	clockDiv #(25000000) cd2 (clk,clko[2]);

endmodule
