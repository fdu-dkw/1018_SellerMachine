`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/19 14:54:30
// Design Name: 
// Module Name: seller_machine_core
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


module seller_machine_core(
    input cp,
    input areset,
    input i_1yuan,
    input i_5mao,
    output [3:0] o_8segdisp_en,
    output [15:0] o_8segdisp_data,
    output [3:0] o_8segdisp_dp,
    output o_sell,
    output o_refund
    );
    
    wire [2:0] money_bin;
    wire [1:0] sell_refund_request;
    
    async_moore_fsm fsm (.areset               (areset             ),
                         .i_1yuan              (i_1yuan            ),
                         .i_5mao               (i_5mao             ),
                         .o_money_bin          (money_bin          ),
                         .o_sell_refund_request(sell_refund_request));
    
    sell_refund_fifo fifo (.cp                   (cp                 ),
                           .areset               (areset             ),
                           .i_sell_refund_request(sell_refund_request),
                           .o_sell               (o_sell             ),
                           .o_refund             (o_refund           ));
    
    money_bin_to_bcd8421 cvt (.i_bin (money_bin      ),
                              .o_en  (o_8segdisp_en  ),
                              .o_data(o_8segdisp_data),
                              .o_dp  (o_8segdisp_dp  ));
                            
endmodule                   
