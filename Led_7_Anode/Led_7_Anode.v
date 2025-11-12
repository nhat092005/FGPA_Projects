`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:55 09/11/2025 
// Design Name: 
// Module Name:    Led_7_Anode 
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
module Led_7_Anode(
    input wire [3:0] sw,
    output wire [7:0] anode,
    output wire [6:0] sseg
    );

assign anode = 8'b0111_1111;
gm_led_7doan u_decode (.so_gma(sw), .sseg(sseg));

endmodule
