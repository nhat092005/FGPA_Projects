`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:01:06 09/26/2025 
// Design Name: 
// Module Name:    Dem_0_9_AND_9_0_Single 
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
module Dem_0_9_AND_9_0_Single(
    input wire S,           // Direction: 0 = count up, 1 = count down
    input wire clk,
    input wire reset,
    output wire [3:0] q
);
    wire clk_en;
    
    // Clock divider generates enable signal
    clockDiv_Enable clk_1Hz (.clki(clk), .clko_en(clk_en));
    
    // Single bidirectional counter
    SynCounter4bit_Bidirectional Counter (
        .clki(clk), 
        .reset(reset), 
        .enable(clk_en), 
        .direction(S),      // 0 = up, 1 = down
        .q(q)
    );
endmodule
