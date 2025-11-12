`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:27:36 09/12/2025 
// Design Name: 
// Module Name:    KT_1 
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
module KT_1(
input wire A,
input wire B,
input wire [1:0] S,
input wire [3:0] Im,
input wire Idm,
output wire Ym,
output wire [3:0] Ydm
);
Mux4_1_E_High Mux4_1 (.I(Im), .S(S[1:0]), .E(A), .Y(Ym));
Demux1_4_E_High Demux1_4 (.I(Idm), .S(S[1:0]), .E(B), .Y(Ydm));
endmodule

