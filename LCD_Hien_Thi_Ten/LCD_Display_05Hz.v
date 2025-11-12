`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:18 10/12/2025 
// Design Name: 
// Module Name:    LCD_Display_05Hz 
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
module LCD_Display_05Hz(
    input wire clk,
    input wire reset,
    output wire lcd_rs, lcd_rw, lcd_e, lcd_4, lcd_5, lcd_6, lcd_7
);

	wire tick_05Hz;

	TickGen #(.M(25_000_000)) tick_gen (
		.clki(clk),
		.reset(reset),
		.tick(tick_05Hz)
    );
	 
	// LCD Display
	LCD_Display lcd_disp (
		.clk(clk),
		.tick(tick_05Hz),
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_e(lcd_e),
		.lcd_4(lcd_4),
		.lcd_5(lcd_5),
		.lcd_6(lcd_6),
		.lcd_7(lcd_7)
	);

endmodule
