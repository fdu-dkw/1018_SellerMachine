`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/19 16:05:57
// Design Name: 
// Module Name: disp_on_8seg
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


module disp_on_8seg(
    input cp,
    input [3:0] i_en,
    input [15:0] i_data,
    input [3:0] i_dp,
    output reg [7:0]o_seg8,
    output reg [3:0]o_sel4
    );
    
    reg [1:0] cnt;
    always @(posedge cp) cnt <= cnt + 1'b1;
    
    always @(*)
        begin
            o_sel4 = i_en & (4'b0001 << cnt);
            o_sel4 = ~o_sel4;
            o_seg8[7] = i_dp[cnt];
            case(i_data[cnt * 4 +: 4])
            4'h0:
                o_seg8[6:0] = 7'h3f;
            4'h1:
                o_seg8[6:0] = 7'h06;
            4'h2:
                o_seg8[6:0] = 7'h5b;
            4'h3:
                o_seg8[6:0] = 7'h4f;
            4'h4:
                o_seg8[6:0] = 7'h66;
            4'h5:
                o_seg8[6:0] = 7'h6d;
            4'h6:
                o_seg8[6:0] = 7'h7d;
            4'h7:
                o_seg8[6:0] = 7'h07;
            4'h8:
                o_seg8[6:0] = 7'h7f;
            4'h9:
                o_seg8[6:0] = 7'h6f;
            default:
                o_seg8[6:0] = 7'h3f;
            endcase
            o_seg8 = ~o_seg8;
        end
    
    
endmodule
