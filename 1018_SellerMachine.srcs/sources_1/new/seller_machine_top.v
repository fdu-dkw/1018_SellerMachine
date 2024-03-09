`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 13:58:32
// Design Name: 
// Module Name: seller_machine_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seller_machine_top(
    input cp,
    input areset,
    input i_btn_1yuan,
    input i_btn_5mao,
    output [7:0] o_seg8,
    output [3:0] o_sel4,
    output o_sell,
    output o_refund
    );
    
    wire [3:0] en;
    wire [15:0] data;
    wire [3:0] dp;
    
    reg [25:0] clk_cnt;
    always @(posedge cp) clk_cnt <= clk_cnt + 1'b1;
    
    seller_machine_core core (.cp             (clk_cnt[25]),
                              .areset         (areset     ),
                              .i_1yuan        (i_btn_1yuan),
                              .i_5mao         (i_btn_5mao ),
                              .o_8segdisp_en  (en         ),   
                              .o_8segdisp_data(data       ),
                              .o_8segdisp_dp  (dp         ),
                              .o_sell         (o_sell     ),
                              .o_refund       (o_refund   ));
    
    disp_on_8seg disp (.cp    (clk_cnt[16]),
                       .i_en  (en         ),
                       .i_data(data       ),
                       .i_dp  (dp         ),
                       .o_seg8(o_seg8     ),
                       .o_sel4(o_sel4     ));
    
endmodule
