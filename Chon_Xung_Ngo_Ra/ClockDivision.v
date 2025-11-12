`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:03:30 09/21/2025 
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
    input wire clki,
    output wire [2:0] clko
    );

	clockDiv #(100000000) cd0 (.clki(clki), .clko(clko[0]));
	clockDiv #(50000000) cd1 (.clki(clki), .clko(clko[1]));
	clockDiv #(25000000) cd2 (.clki(clki), .clko(clko[2]));

endmodule

