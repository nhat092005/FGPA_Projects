`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:48 10/16/2025 
// Design Name: 
// Module Name:    LEDController 
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
// Module 9: Module ngoài cùng - Top module
module LEDController
#(parameter TICK_FREQ = 50000000)  // 1 Hz tick (50MHz/50M = 1Hz)
(
    input  wire clki,         // 50 MHz clock
    input  wire reset,
    input  wire sw_mode0,     // SW chọn MODE bit 0
    input  wire sw_mode1,     // SW chọn MODE bit 1
    input  wire sw_pause,     // SW tạm dừng
    output wire [7:0] leds    // 8 LED output
);
    wire tick;
    wire [1:0] mode;
    wire pause;

    // Module tạo tick
    TickGen #(.M(TICK_FREQ)) tick_gen(
        .clki(clki),
        .reset(reset),
        .tick(tick)
    );
    
    // Module chọn MODE
    ModeSelector mode_sel(
        .clk(clki),
        .reset(reset),
        .sw0(sw_mode0),
        .sw1(sw_mode1),
        .mode(mode)
    );
	 
    // Module xử lý tạm dừng
    PauseController pause_ctrl(
        .clk(clki),
        .reset(reset),
        .sw_pause(sw_pause),
        .pause(pause)
    );
    
    // Module xử lý các MODE
    ModeProcessors mode_proc(
        .clk(clki),
        .reset(reset),
        .tick(tick),
        .pause(pause),
        .mode(mode),
        .leds(leds)
    );
endmodule
