`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:05:40 09/26/2025 
// Design Name: 
// Module Name:    clockDiv_Enable 
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
module clockDiv_Enable
#(parameter M=50000000)
(
    input wire clki,
    output wire clko_en
);
    reg [30:0] r_reg;
    
    initial r_reg = 0;
    
    always @(posedge clki) begin
        if (r_reg == M-1)
            r_reg <= 0;
        else
            r_reg <= r_reg + 1;
    end
    
    assign clko_en = (r_reg == M-1);
endmodule
