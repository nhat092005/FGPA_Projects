`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:56:34 08/26/2025 
// Design Name: 
// Module Name:    Demux1_8 
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
module Demux1_8(
    input wire i,
    input wire [2:0] s,
    output wire [7:0] y
    );

assign y = i ? (8'b0000_0001 << s) : 8'b0000_0000;

endmodule
