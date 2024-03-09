`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/19 17:27:32
// Design Name: 
// Module Name: calc_money
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


module money_bin_to_bcd8421(
    input [2:0] i_bin,
    output reg [3:0] o_en,
    output reg [15:0] o_data,
    output reg [3:0] o_dp
    );
    
    always @(*)
        begin
            // format: ___._
            o_dp = 4'b0010;
            // ___.?
            o_en[0] = 1'b1;
            o_data[3:0] = i_bin[0] ? 4'h5 : 4'h0;
            // __?._
            o_en[1] = 1'b1;
            o_data[7:4] = i_bin[2:1];
            // _?_._
            o_en[2] = 1'b0;
            o_data[11:8] = 4'h0;
            // ?__._
            o_en[3] = 1'b0;
            o_data[15:12] = 4'h0;
        end
    
endmodule
