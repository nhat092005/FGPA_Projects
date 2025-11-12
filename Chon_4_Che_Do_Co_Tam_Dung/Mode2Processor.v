`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:17 10/16/2025 
// Design Name: 
// Module Name:    Mode2Processor 
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
// Module 4: Xử lý MODE 2 - 8 LED sáng-tắt xen kẽ, dịch từ X sang Y và lặp lại
module Mode2Processor(
    input  wire clk,
    input  wire reset,
    input  wire tick,
    input  wire pause,
    output reg [7:0] leds
);

    reg [2:0] shift_count;  // Đếm số lần dịch (0-7)
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            leds <= 8'b10101010;  // Pattern ban đầu: xen kẽ
            shift_count <= 0;
        end
        else if (tick && !pause) begin
            leds <= {leds[6:0], leds[7]};  // Dịch trái 1 bit
            if (shift_count == 7)
                shift_count <= 0;
            else
                shift_count <= shift_count + 1;
        end
    end

endmodule
