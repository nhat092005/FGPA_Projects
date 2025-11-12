`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:59:03 09/19/2025 
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
    input wire clki,
    input wire [1:0] S,
    input wire E,
	 input wire rst_n,
    output wire [6:0] sseg
    );

	wire tick0p5, tick1, tick2;
	
	ClockDivision TickGen(.clk(clki), .clko({tick2, tick1, tick0p5}));
	
	wire clko_mux;
	
	Mux4_1 Mux (.I({1'b0, tick2, tick1, tick0p5}), .S(S), .E(E), .Y(clko_mux));
	
	wire [3:0] sys_counter_out;
	
	SynCounter4bit SynCounter (.clk(clko_mux), .reset(rst_n), .q(sys_counter_out));
	
	gm_led_7doan gm (.so_gma(sys_counter_out), .sseg(sseg));
	
endmodule
