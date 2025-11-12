`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:41 10/16/2025 
// Design Name: 
// Module Name:    Dem_BCD_0_31_UpDown 
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
module Dem_BCD_0_31_UpDown(
    input wire clk,
    input wire reset,
    input wire enable,    
    output wire [3:0] q1,  // Chuc
    output wire [3:0] q0   // Don vi
    );
	 
	reg direction;  // 1: UP - 2:DOWN
	
	wire carry_q0, borrow_q0;
	
	// (0-9)
	SynCounter4bit_UpDown count_0_9 (
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.up_down(direction),
		.max_count(4'd9),
		.q(q0),
		.carry(carry_q0),
		.borrow(borrow_q0)
	);

	// (0-3)
	SynCounter4bit_UpDown count_0_3 (
		.clk(clk),
		.reset(reset),
		.enable((enable & carry_q0) | (enable & borrow_q0)),
		.up_down(direction),
		.max_count(4'd3),
		.q(q1),
		.carry(),
		.borrow()
	);
	
	always @(posedge clk or posedge reset) begin
		if (reset)
			direction <= 1'b1;  
		else if (enable) begin
			//  31 -> down
			if (direction && q1 == 4'd3 && q0 == 4'd0)
				direction <= 1'b0;
			//  00 -> up
			else if (~direction && q1 == 4'd0 && q0 == 4'd1)
				direction <= 1'b1;
		end
	end
	
endmodule