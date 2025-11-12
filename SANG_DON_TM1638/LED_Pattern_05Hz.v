`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:58:09 10/11/2025 
// Design Name: 
// Module Name:    LED_Pattern_05Hz 
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
module LED_Pattern_05Hz(
    input wire clk,
    input wire reset,
    output wire [7:0] led
    );

	wire tick_05Hz;
	
	TickGen #(25_000_000) u_tick(
		.clki(clk),
		.reset(reset),
		.tick(tick_05Hz)
    );
	 
	LED_Pattern Pattern_05Hz(.clk(clk), .reset(reset),.tick(tick_05Hz), .led(led));

endmodule
