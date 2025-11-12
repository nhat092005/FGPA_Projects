`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:21:42 09/09/2025 
// Design Name: 
// Module Name:    Mux10_1_E_High 
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
module Mux10_1_E_High(
    input wire [9:0] I,
    input wire [3:0] S,
    input wire E,
    output wire Y
    );

wire y0, y1, y2;

wire g0 = E & (S[3:2] == 2'b00);
wire g1 = E & (S[3:2] == 2'b01);
wire g2 = E & (S[3:2] == 2'b10);

Mux4_1_E_High U0 (.I(I[3:0]), .S(S[1:0]), .E(g0), .Y(y0));
Mux4_1_E_High U1 (.I(I[7:4]), .S(S[1:0]), .E(g1), .Y(y1));
Mux4_1_E_High U2 (.I({1'b0,1'b0,I[9],I[8]}), .S(S[1:0]), .E(g2), .Y(y2));

Mux4_1_E_High UF (.I({1'b0, y2, y1, y0}), .S(S[3:2]), .E(E), .Y(Y));

endmodule
