`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:55:52 09/26/2025 
// Design Name: 
// Module Name:    SynCounter4bit_Down 
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
module SynCounter4bit_Down(
    input wire clki,
    input wire reset,
	 input wire enable,
    output wire [3:0] q
    );
	 
    // signal declaration
    reg [3:0] r_reg;
    wire [3:0] r_next;

	 // body, register
    always @(posedge clki, posedge reset)
        if (reset)
            r_reg <= 4'd9;        // reset ve9
        else if (enable)
            r_reg <= r_next;      // cap nhat gia tri moi
	
	// next state logic
    assign r_next = (r_reg == 4'd0) ? 4'd9 : (r_reg - 1);

    // output logic
    assign q = r_reg;
	
endmodule
