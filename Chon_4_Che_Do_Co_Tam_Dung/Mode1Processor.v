`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:20 10/16/2025 
// Design Name: 
// Module Name:    Mode1Processor 
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
// Module 3: Xử lý MODE 1 - 8 LED sáng dần từ X tới Y, tắt dần từ Y tới X và lặp lại
module Mode1Processor(
    input  wire clk,
    input  wire reset,
    input  wire tick,
    input  wire pause,
    output reg [7:0] leds
);
    reg [3:0] counter;  // Đếm từ 0-15 (0-7: sáng dần, 8-15: tắt dần)
    reg direction;      // 0: sáng dần, 1: tắt dần
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            direction <= 0;
            leds <= 8'b00000000;
        end
		  
        else if (tick && !pause) begin
            if (!direction) begin  // Sáng dần từ X(0) tới Y(7)
                leds[counter] <= 1'b1;
                if (counter == 7) begin
                    direction <= 1;
                    counter <= 7;
                end
                else
                    counter <= counter + 1;
            end
				
            else begin  // Tắt dần từ Y(7) tới X(0)
                leds[counter] <= 1'b0;
                if (counter == 0) begin
                    direction <= 0;
                    counter <= 0;
                end
                else
                    counter <= counter - 1;
            end
        end
    end
endmodule
