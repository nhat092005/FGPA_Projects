`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:00 10/12/2025 
// Design Name: 
// Module Name:    LCD_display 
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
module LCD_Display(
	input wire clk,
	input wire tick,
	output wire lcd_rs, lcd_rw, lcd_e, lcd_4, lcd_5, lcd_6, lcd_7
);

	reg [255:0] chars;
	reg [4:0] shift_pos = 0;
	
	reg [7:0] line1 [0:31];
	reg [7:0] line2 [0:31];
	
	reg [7:0] line1_shifted [0:31];
	reg [7:0] line2_shifted [0:31];

	integer i, idx;
	
	initial begin
		line1[0]  = "L"; line1[1]  = "E"; line1[2]  = " "; line1[3]  = "Q";
		line1[4]  = "U"; line1[5]  = "A"; line1[6]  = "N"; line1[7]  = "G";
		line1[8]  = " "; line1[9]  = "M"; line1[10] = "I"; line1[11] = "N";
		line1[12] = "H"; line1[13] = " "; line1[14] = "N"; line1[15] = "H";
		line1[16] = "A"; line1[17] = "T"; 
		line1[18] = " "; line1[19] = " "; line1[20] = " "; line1[21] = " ";
		line1[22] = " "; line1[23] = " "; line1[24] = " "; line1[25] = " ";
		line1[26] = " "; line1[27] = " "; line1[28] = " "; line1[29] = " ";
		line1[30] = " "; line1[31] = " ";

		line2[0]  = "N"; line2[1]  = "G"; line2[2]  = "U"; line2[3]  = "Y";
		line2[4]  = "E"; line2[5]  = "N"; line2[6]  = " "; line2[7]  = "Q";
		line2[8]  = "U"; line2[9]  = "O"; line2[10] = "C"; line2[11] = " ";
		line2[12] = "H"; line2[13] = "U"; line2[14] = "N"; line2[15] = "G";
		line2[16] = " "; line2[17] = " "; line2[18] = " "; line2[19] = " ";
		line2[20] = " "; line2[21] = " "; line2[22] = " "; line2[23] = " ";
		line2[24] = " "; line2[25] = " "; line2[26] = " "; line2[27] = " ";
		line2[28] = " "; line2[29] = " "; line2[30] = " "; line2[31] = " ";			
	end
	
	LCD lcd( 
		.clk(clk),
		.chars(chars),
		.lcd_rs(lcd_rs), 
		.lcd_rw(lcd_rw), 
		.lcd_e(lcd_e), 
		.lcd_4(lcd_4), 
		.lcd_5(lcd_5), 
		.lcd_6(lcd_6), 
		.lcd_7(lcd_7)
);

	always @(posedge clk) begin
		if (tick) begin
			if (shift_pos == 31)
				shift_pos <= 0;
			else
				shift_pos <= shift_pos + 1;
		end	
			
		for (i = 0; i < 16; i = i + 1) begin
			idx = shift_pos + i;
			if (idx >= 32)
				idx = idx - 32;		
				
			chars[255 - i*8 -: 8] <= line1[idx];
			chars[127 - i*8 -: 8] <= line2[idx];				
		end
	end
endmodule

