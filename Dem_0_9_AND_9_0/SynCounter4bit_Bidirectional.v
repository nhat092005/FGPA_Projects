`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:02:22 09/26/2025 
// Design Name: 
// Module Name:    SynCounter4bit_Bidirectional 
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
module SynCounter4bit_Bidirectional(
    input wire clki,
    input wire reset,
    input wire enable,
    input wire direction,	   // 0 = count up, 1 = count down
    output wire [3:0] q
    );
	 
    reg [3:0] r_reg;
    wire [3:0] r_next;

    // Register logic
    always @(posedge clki, posedge reset) begin
        if (reset)
            r_reg <= direction ? 4'd9 : 4'd0;  // Reset to 9 if counting down, 0 if counting up
        else if (enable)
            r_reg <= r_next;
    end
	 
	 // Next state logic
    assign r_next = direction ? 
                    ((r_reg == 4'd0) ? 4'd9 : (r_reg - 1)) :  // Count down: 9->8->...->1->0->9
                    ((r_reg == 4'd9) ? 4'd0 : (r_reg + 1));   // Count up: 0->1->...->8->9->0
    
    // Output logic
    assign q = r_reg;
	 
endmodule
