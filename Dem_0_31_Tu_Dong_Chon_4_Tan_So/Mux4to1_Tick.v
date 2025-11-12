`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:49 10/16/2025 
// Design Name: 
// Module Name:    Mux4to1_Tick 
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
module Mux4to1_Tick(
    input wire tick_05Hz,
    input wire tick_1Hz,
    input wire tick_2Hz,
    input wire tick_10Hz,
    input wire [1:0] sel,  // 2 switch
    output reg tick_out
);
    always @(*) begin
        case(sel)
            2'b00: tick_out = tick_05Hz;  // 0.5Hz
            2'b01: tick_out = tick_1Hz;   // 1Hz
            2'b10: tick_out = tick_2Hz;   // 2Hz
            2'b11: tick_out = tick_10Hz;  // 10Hz
            default: tick_out = tick_1Hz;
        endcase
    end
endmodule
