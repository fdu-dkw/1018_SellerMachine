`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/20 23:48:20
// Design Name: 
// Module Name: sell_refund_fifo
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


module sell_refund_fifo(
    input cp,
    input areset,
    input [1:0] i_sell_refund_request,
    output reg o_sell,
    output reg o_refund
    );
    
    wire write0_request;
    wire write1_request;
    assign write0_request = i_sell_refund_request[1];
    assign write1_request = i_sell_refund_request[0];
    
    wire [15:0] mem;
    reg [15:0] mem_xor [1:0];
    assign mem = mem_xor[0] ^ mem_xor[1];
    
    wire [3:0] ptr_write;
    reg [3:0] ptr_wr_xor [1:0];
    assign ptr_write = ptr_wr_xor[0] ^ ptr_wr_xor[1];
    
    reg [3:0] ptr_read;
    
    // record "sell but not refund" deals
    always @(negedge write0_request, posedge areset)
        if(areset)
            begin
                mem_xor[0] <= 16'b0;
                ptr_wr_xor[0] <= 4'b0;
            end
        else
            begin
                mem_xor[0][ptr_write] <= mem_xor[0][ptr_write] ^ mem[ptr_write] ^ 1'b0;
                if(ptr_write == ptr_read - 1'b1)
                    ptr_wr_xor[0] <= ptr_wr_xor[0];
                else
                    ptr_wr_xor[0] <= ptr_wr_xor[0] ^ ptr_write ^ (ptr_write + 1'b1);
            end
    
    // record "sell and refund" deals
    always @(negedge write1_request, posedge areset)
        if(areset)
            begin
                mem_xor[1] <= 16'b0;
                ptr_wr_xor[1] <= 4'b0;
            end
        else
            begin
                mem_xor[1][ptr_write] <= mem_xor[1][ptr_write] ^ mem[ptr_write] ^ 1'b1;
                if(ptr_write == ptr_read - 1'b1)
                    ptr_wr_xor[1] <= ptr_wr_xor[1];
                else
                    ptr_wr_xor[1] <= ptr_wr_xor[1] ^ ptr_write ^ (ptr_write + 1'b1);
            end
    
    // read logic
    always @(posedge cp, posedge areset)
        if(areset)
            ptr_read <= 4'b0;
        else
            ptr_read <= ptr_read + o_sell;
    
    // output logic
    always @(posedge cp, posedge areset)
        if(areset)
            {o_sell, o_refund} <= 2'b00;
        else if(o_sell || ptr_read == ptr_write)
            {o_sell, o_refund} <= 2'b00;
        else
            {o_sell, o_refund} <= {1'b1, mem[ptr_read]};
    
endmodule
