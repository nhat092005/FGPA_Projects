`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:23 10/16/2025 
// Design Name: 
// Module Name:    Mode3Processor 
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
// Module 5: Xử lý MODE 3 - 8 LED tắt dần từ X tới Y, sau đó sáng hết
module Mode3Processor(
    input  wire clk,
    input  wire reset,
    input  wire tick,
    input  wire pause,
    output reg [7:0] leds
);

    reg [3:0] counter;  // Đếm từ 0-8
    reg state;          // 0: đang tắt dần, 1: đã sáng hết
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            state <= 0;
            leds <= 8'b11111111;  // Bắt đầu với tất cả LED sáng
        end
        else if (tick && !pause) begin
            if (!state) begin  // Tắt dần từ X(0) tới Y(7)
                if (counter < 8) begin
                    leds[counter] <= 1'b0;
                    counter <= counter + 1;
                end
                else begin
                    state <= 1;
                    leds <= 8'b11111111;  // Sáng hết
                    counter <= 0;
                end
            end
            else begin  // Giữ trạng thái sáng hết 1 tick rồi reset
                state <= 0;
            end
        end
    end
endmodule