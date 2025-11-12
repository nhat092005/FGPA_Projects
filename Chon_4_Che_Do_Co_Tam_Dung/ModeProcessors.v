`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:22 10/16/2025 
// Design Name: 
// Module Name:    ModeProcessors 
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
// Module 8: Module lớn gồm các module xử lý MODE
module ModeProcessors(
    input  wire clk,
    input  wire reset,
    input  wire tick,
    input  wire pause,
    input  wire [1:0] mode,
    output reg [7:0] leds
);

    wire [7:0] leds_mode1, leds_mode2, leds_mode3, leds_mode4;
    
    // Khởi tạo các module xử lý
    Mode1Processor mode1(
        .clk(clk),
        .reset(reset),
        .tick(tick),
        .pause(pause),
        .leds(leds_mode1)
    );
	 
    Mode2Processor mode2(
        .clk(clk),
        .reset(reset),
        .tick(tick),
        .pause(pause),
        .leds(leds_mode2)
    );
    
    Mode3Processor mode3(
        .clk(clk),
        .reset(reset),
        .tick(tick),
        .pause(pause),
        .leds(leds_mode3)
    );

    Mode4Processor mode4(
        .clk(clk),
        .reset(reset),
        .tick(tick),
        .pause(pause),
        .leds(leds_mode4)
    );
    
    // Multiplexer chọn output theo MODE
    always @(*) begin
        case (mode)
            2'b00: leds = leds_mode1;
            2'b01: leds = leds_mode2;
            2'b10: leds = leds_mode3;
            2'b11: leds = leds_mode4;
            default: leds = 8'b00000000;
        endcase
    end
endmodule	 
