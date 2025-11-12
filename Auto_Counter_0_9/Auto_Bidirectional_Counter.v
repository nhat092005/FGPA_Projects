`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:16:05 09/26/2025 
// Design Name: 
// Module Name:    Auto_Bidirectional_Counter 
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
module Auto_Bidirectional_Counter(
    input wire clki,
    input wire reset,
    input wire enable,
    output wire [3:0] q
    );
	 
    reg [3:0] count_reg;        
    reg direction_reg;          //  0=up, 1=down

    // Register logic
    always @(posedge clki, posedge reset) begin
        if (reset) begin
            count_reg <= 4'd0;      // Reset 0
            direction_reg <= 1'b0;  // Reset up
        end
        else if (enable) begin
            // Logic counter
            if (direction_reg == 0) begin  // Up
                if (count_reg == 4'd9) begin
                    count_reg <= 4'd8;      // 9 -> 0
                    direction_reg <= 1'b1;  // Down
                end
                else begin
                    count_reg <= count_reg + 1;  // Count continue
                end
            end	  
            else begin  // Down
                if (count_reg == 4'd0) begin
                    count_reg <= 4'd1;      // 0 -> 9
                    direction_reg <= 1'b0;  // Up
                end
                else begin
                    count_reg <= count_reg - 1;  // Count continue
                end
            end
        end
    end
	 
	 // Output
    assign q = count_reg;
	 
endmodule
