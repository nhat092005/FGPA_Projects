`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:09:22 09/21/2025 
// Design Name: 
// Module Name:    Chon_Xung_Ngo_Ra 
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
module Chon_Xung_Ngo_Ra(
    input wire clki,
    input wire [1:0] S,
    input wire E,
    output wire clko
    );

	wire tick0p5, tick1, tick2;
	
	ClockDivision TickGen(.clki(clki), .clko({tick2, tick1, tick0p5}));
	
	Mux4_1 Mux (.I({1'b0, tick2, tick1, tick0p5}), .S(S), .E(E), .Y(clko));

endmodule
