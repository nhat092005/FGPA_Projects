`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:04 10/16/2025 
// Design Name: 
// Module Name:    Mode4Processor 
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
// Module 6: Xử lý MODE 4 - 4 LED sáng dần X->Y, 4 LED sáng dần Y->X và lặp lại
module Mode4Processor(
    input  wire clk,
    input  wire reset,
    input  wire tick,
    input  wire pause,
    output reg [7:0] leds
);

    reg [2:0] counter;  // Đếm từ 0-7
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            leds <= 8'b00000000;
        end
        else if (tick && !pause) begin
            if (counter < 4) begin
                // 4 LED đầu (0-3) sáng dần từ X sang Y
                leds[counter] <= 1'b1;
                // 4 LED cuối (7-4) sáng dần từ Y sang X
                leds[7-counter] <= 1'b1;
            end
            else begin
                // Reset về trạng thái ban đầu
                leds <= 8'b00000000;
            end
            
            if (counter == 7)
                counter <= 0;
            else
                counter <= counter + 1;
        end
    end
endmodule
