`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:15:07 09/26/2025 
// Design Name: 
// Module Name:    Auto_Counter_0_9 
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
module Auto_Counter_0_9(
    input wire clk,
    input wire reset,
    output wire [3:0] q
);
    wire clk_en;
    
    // Clock divider tạo enable signal
    clockDiv_Enable clk_1Hz (.clki(clk), .clko_en(clk_en));
    
    // Auto
    Auto_Bidirectional_Counter Counter (
        .clki(clk), 
        .reset(reset), 
        .enable(clk_en), 
        .q(q)
    );
endmodule

