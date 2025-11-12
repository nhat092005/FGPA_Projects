`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:01:39 10/03/2025 
// Design Name: 
// Module Name:    Led_Don_Sang_Chay_05Hz 
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
module Led_Don_Sang_Chay_05Hz(
    input wire clk,
    input wire reset,
    output wire [7:0] q
);

	wire tick_05Hz;
	
	TickGen #(25_000_000) u_tick (.clk(clk), .reset(reset), .tick(tick_05Hz));
	
	Led_Don_Sang_Chay Led_Don_Sang_Chay_05Hz(.clk(clk),.reset(reset), .enable(tick_05Hz), .q(q));

endmodule
