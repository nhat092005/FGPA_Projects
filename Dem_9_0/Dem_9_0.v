`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:07 09/26/2025 
// Design Name: 
// Module Name:    Dem_9_0 
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
module Dem_9_0(
    input wire clk,
    input wire reset,
    output wire [3:0] q
    );
	
	wire clk_1;
	
	clockDiv clk_1Hz (.clki(clk), .clko(clk_1));
	
	SynCounter4bit_Down Down (.clki(clk), .reset(reset), .enable(clk_1),.q(q));

endmodule
