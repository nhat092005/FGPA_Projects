`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:52 10/16/2025 
// Design Name: 
// Module Name:    PauseController 
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
// Module 7: Xử lý tạm dừng
module PauseController(
    input  wire clk,
    input  wire reset,
    input  wire sw_pause,  // SW tạm dừng
    output reg  pause
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            pause <= 0;
        else
            pause <= sw_pause;
    end
endmodule
