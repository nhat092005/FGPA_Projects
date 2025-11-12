`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:56:11 10/10/2025 
// Design Name: 
// Module Name:    LED_Pattern 
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
module LED_Pattern(
    input wire clk,
    input wire reset,
	 input wire tick,
    output reg [7:0] led
    );

	reg [7:0] pattern [0:36];
	
	initial begin
        pattern[0]  = 8'b0000_0000;
        pattern[1]  = 8'b1000_0000;
        pattern[2]  = 8'b0100_0000;
        pattern[3]  = 8'b0010_0000;
        pattern[4]  = 8'b0001_0000;
        pattern[5]  = 8'b0000_1000;
        pattern[6]  = 8'b0000_0100;
        pattern[7]  = 8'b0000_0010;
        pattern[8]  = 8'b0000_0001;
		  pattern[9]  = 8'b1000_0001;
        pattern[10] = 8'b0100_0001;
        pattern[11] = 8'b0010_0001;
        pattern[12] = 8'b0001_0001;
        pattern[13] = 8'b0000_1001;
        pattern[14] = 8'b0000_0101;
        pattern[15] = 8'b0000_0011;
        pattern[16] = 8'b1000_0011;
        pattern[17] = 8'b0100_0011;
        pattern[18] = 8'b0010_0011;
        pattern[19] = 8'b0001_0011;
        pattern[20] = 8'b0000_1011;
        pattern[21] = 8'b0000_0111;
        pattern[22] = 8'b1000_0111;
        pattern[23] = 8'b0100_0111;
        pattern[24] = 8'b0010_0111;
        pattern[25] = 8'b0001_0111;
        pattern[26] = 8'b0000_1111;
        pattern[27] = 8'b1000_1111;
        pattern[28] = 8'b0100_1111;
        pattern[29] = 8'b0010_1111;
        pattern[30] = 8'b0001_1111;
        pattern[31] = 8'b1001_1111;
        pattern[32] = 8'b0101_1111;
		  pattern[33] = 8'b0011_1111;
        pattern[34] = 8'b1011_1111;
        pattern[35] = 8'b0111_1111;
        pattern[36] = 8'b1111_1111;
	end
	
	reg [5:0] state;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 6'd0;
            led <= 8'b00000000;
        end
        else if (tick) begin
            if (state == 6'd36)
                state <= 6'd0;
            else
                state <= state + 1;
            
            led <= pattern[state];
        end
    end

endmodule
