`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:17 09/26/2025 
// Design Name: 
// Module Name:    Dem_0_9 
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
module Dem_0_9(
    input wire clk,
    input wire reset,
    output wire [3:0] q
    );

	wire clk_1Hz;

	clockDiv gen (.clki(clk) ,.clko(clk_1Hz));
	
	SynCounter4bit Up (.clki(clk_1Hz), .reset(reset), .q(q));

endmodule
