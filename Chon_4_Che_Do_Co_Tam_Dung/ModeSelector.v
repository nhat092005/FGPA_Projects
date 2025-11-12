`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:16 10/16/2025 
// Design Name: 
// Module Name:    ModeSelector 
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
// Module 2: Chọn chế độ - Xử lý 2 SW để chọn MODE
module ModeSelector(
    input  wire clk,
    input  wire reset,
    input  wire sw0,      // SW bit 0
    input  wire sw1,      // SW bit 1
    output reg [1:0] mode // 00=MODE1, 01=MODE2, 10=MODE3, 11=MODE4
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            mode <= 2'b00;
        else
            mode <= {sw1, sw0};
    end
endmodule
