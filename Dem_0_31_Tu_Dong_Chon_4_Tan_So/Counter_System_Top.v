`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:37 10/16/2025 
// Design Name: 
// Module Name:    Counter_System_Top 
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
module Counter_System_Top(
    input wire clk,           // 50MHz
    input wire btn_reset,     // Nút nhấn reset
    input wire btn_pause,     // Nút nhấn pause
    input wire [1:0] sw_freq, // 2 switch chọn tần số
    output wire [3:0] q1,     // Hàng chục
    output wire [3:0] q0      // Hàng đơn vị
);

	 // Tín hiệu xung từ các bộ chia
    wire tick_05Hz, tick_1Hz, tick_2Hz, tick_10Hz;
    wire tick_selected;
    wire enable_counter;
    
    // Tạo 4 xung khác nhau
    TickGen #(100_000_000) TickGen_05Hz (.clki(clk), .reset(btn_reset), .tick(tick_05Hz));
    TickGen #(50_000_000)  TickGen_1Hz (.clki(clk), .reset(btn_reset), .tick(tick_1Hz));
    TickGen #(25_000_000) TickGen_2Hz (.clki(clk), .reset(btn_reset), .tick(tick_2Hz));
    TickGen #(5_000_000) TickGen_10Hz (.clki(clk), .reset(btn_reset), .tick(tick_10Hz));
	 
    Mux4to1_Tick mux_freq (
        .tick_05Hz(tick_05Hz),
        .tick_1Hz(tick_1Hz),
        .tick_2Hz(tick_2Hz),
        .tick_10Hz(tick_10Hz),
        .sel(sw_freq),
        .tick_out(tick_selected)
    );
    
    // Logic pause: khi btn_pause = 1 thì dừng đếm
    assign enable_counter = tick_selected & ~btn_pause;
    
    // Bộ đếm BCD 0-31 tự đảo chiều
    Dem_BCD_0_31_UpDown counter (
        .clk(clk),
        .reset(btn_reset),
        .enable(enable_counter),
        .q1(q1),
        .q0(q0)
    );
endmodule	 