`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/19 18:52:14
// Design Name: 
// Module Name: seller_machine_sim
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


module seller_machine_sim();
    
    reg cp;
    reg btn_1yuan, btn_5mao, areset;
//    wire [7:0] seg8;
//    wire [3:0] sel4;
    wire sell, refund;
    
    initial begin
        btn_1yuan = 1'b0;
        btn_5mao  = 1'b0;
        cp        = 1'b0;
        areset    = 1'b1;
        
    #10 areset    = 1'b0;
    
    #10 btn_5mao  = 1'b1;
    #25 btn_5mao  = 1'b0;
    #10 btn_5mao  = 1'b1;
    #25 btn_5mao  = 1'b0;
    #10 btn_5mao  = 1'b1;
    #25 btn_5mao  = 1'b0;
    
    #200 btn_1yuan = 1'b1;
    #25 btn_1yuan = 1'b0;
    #10 btn_1yuan = 1'b1;
    #25 btn_1yuan = 1'b0;
    
    #200 btn_5mao  = 1'b1;
    #25 btn_5mao  = 1'b0;
    #10 btn_1yuan = 1'b1;
    #25 btn_1yuan = 1'b0;
    
    #200 btn_1yuan = 1'b1;
    #25 btn_1yuan = 1'b0;
    #10 btn_5mao  = 1'b1;
    #25 btn_5mao  = 1'b0;
    
    #200 btn_1yuan = 1'b1;
    #10 btn_5mao  = 1'b1;
    #10 btn_5mao  = 1'b0;
    #10 btn_5mao  = 1'b1;
    #10 btn_5mao  = 1'b0;
    #10 btn_5mao  = 1'b1;
    #10 btn_5mao  = 1'b0;
    #10 btn_5mao  = 1'b1;
    #10 btn_5mao  = 1'b0;
    #15 btn_1yuan = 1'b0;
    
    #200 btn_5mao  = 1'b1;
    #10 btn_1yuan = 1'b1;
    #10 btn_1yuan = 1'b0;
    #10 btn_1yuan = 1'b1;
    #10 btn_1yuan = 1'b0;
    #10 btn_1yuan = 1'b1;
    #10 btn_1yuan = 1'b0;
    #15 btn_5mao  = 1'b0;
    
    #200 btn_5mao  = 1'b1;
    #10 btn_1yuan = 1'b1;
    #10 btn_5mao  = 1'b0;
    #10 btn_1yuan = 1'b0;
    #10 btn_1yuan = 1'b1;
    #10 btn_5mao  = 1'b1;
    #10 btn_1yuan = 1'b0;
    #10 btn_5mao  = 1'b0;
    end
    
    always @(cp) cp <= # 25 ~cp;
    
    seller_machine_core core (.cp             (cp       ),
                              .areset         (areset   ),
                              .i_1yuan        (btn_1yuan),
                              .i_5mao         (btn_5mao ),
                              .o_sell         (sell     ),
                              .o_refund       (refund   ));
    
endmodule
