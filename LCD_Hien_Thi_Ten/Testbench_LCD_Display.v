`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:33:34 10/12/2025
// Design Name:   LCD_Display
// Module Name:   /home/ise/Working_Space/Week8/LCD/Testbench_LCD_Display.v
// Project Name:  LCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LCD_Display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_LCD_Display;

	// Inputs
	reg clk;
	reg tick;

	// Outputs
	wire lcd_rs;
	wire lcd_rw;
	wire lcd_e;
	wire lcd_4;
	wire lcd_5;
	wire lcd_6;
	wire lcd_7;

	reg [7:0] display_line1 [0:15];
	reg [7:0] display_line2 [0:15];
	integer i;

	// Instantiate the Unit Under Test (UUT)
	LCD_Display uut (
		.clk(clk), 
		.tick(tick), 
		.lcd_rs(lcd_rs), 
		.lcd_rw(lcd_rw), 
		.lcd_e(lcd_e), 
		.lcd_4(lcd_4), 
		.lcd_5(lcd_5), 
		.lcd_6(lcd_6), 
		.lcd_7(lcd_7)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		tick = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
	always forever #10 clk = ~clk;
	always forever #20 tick = ~tick;
	
	task display_lcd;
		begin
			for (i = 0; i < 16; i = i + 1) begin
				display_line1[i] = uut.chars[255 - i*8 -: 8];
				display_line2[i] = uut.chars[127 - i*8 -: 8];
			end
			$display("\n===================");
			$write  (" ");
			for (i = 0; i < 16; i = i + 1) begin
				$write("%c", display_line1[i]);
			end
			$display("");
            
			$write  (" ");
			for (i = 0; i < 16; i = i + 1) begin
				$write("%c", display_line2[i]);
			end
			$display("");
			$display("===================");
		end
	endtask			
		
	initial begin
		repeat(35) begin
			@(posedge tick);
				#100;
				display_lcd();
				#1000;
		end
	end
			
endmodule

