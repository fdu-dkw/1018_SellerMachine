`timescale 1ns / 1ps
module async_moore_fsm(
    input areset,
    input i_1yuan,
    input i_5mao,
    output reg [2:0] o_money_bin,
    output [1:0] o_sell_refund_request
    );
    
    // I spent 2 days designing these states in rid of race hazard
    parameter S0     = 3'b000, // initial, or previous deal finished
              S5mao  = 3'b001, // got 0.5yuan
              S1yuan = 3'b011, // got 1yuan
              S1y5m  = 3'b101, // got 1.5yuan
              S2yuan = 3'b110; // got 2yuan
              // other arbitary states are seen as S0=3'b000
    
    // multi-trigger struct
    wire [2:0] state;
    reg [2:0] state_xor [3:0];
    assign state = state_xor[0] ^ state_xor[1] ^ state_xor[2] ^ state_xor[3];
    
    // detect asynchoronous 0.5yuan input
    always @(posedge i_5mao, posedge areset)
        if(areset)
            state_xor[0] <= 3'b000;
        else
            case(state)
            S0     : state_xor[0] <= state_xor[0] ^ state ^ S5mao;
            S5mao  : state_xor[0] <= state_xor[0] ^ state ^ S1yuan;
            S1yuan : state_xor[0] <= state_xor[0] ^ state ^ S1y5m;
            S1y5m  : state_xor[0] <= state_xor[0];
            S2yuan : state_xor[0] <= state_xor[0];
            default: state_xor[0] <= state_xor[0] ^ state ^ S5mao;
            endcase
    
    // detect asynchoronous 1yuan input
    always @(posedge i_1yuan, posedge areset)
        if(areset)
            state_xor[1] <= 3'b000;
        else
            case(state)
            S0     : state_xor[1] <= state_xor[1] ^ state ^ S1yuan;
            S5mao  : state_xor[1] <= state_xor[1] ^ state ^ S1y5m;
            S1yuan : state_xor[1] <= state_xor[1] ^ state ^ S2yuan;
            S1y5m  : state_xor[1] <= state_xor[1];
            S2yuan : state_xor[1] <= state_xor[1];
            default: state_xor[1] <= state_xor[1] ^ state ^ S1yuan;
            endcase
    
    // if selling, reset state when RELEASE ANY BUTTON
    always @(negedge i_5mao, posedge areset)
        if(areset)
            state_xor[2] <= 3'b000;
        else
            case(state)
            S1y5m  : state_xor[2] <= state_xor[2] ^ state ^ S0;
            S2yuan : state_xor[2] <= state_xor[2] ^ state ^ S0;
            default: state_xor[2] <= state_xor[2];
            endcase
    always @(negedge i_1yuan, posedge areset)
        if(areset)
            state_xor[3] <= 3'b000;
        else
            case(state)
            S1y5m  : state_xor[3] <= state_xor[3] ^ state ^ S0;
            S2yuan : state_xor[3] <= state_xor[3] ^ state ^ S0;
            default: state_xor[3] <= state_xor[3];
            endcase
    
    // output logic
    assign o_sell_refund_request[1] = state == S1y5m;
    assign o_sell_refund_request[0] = state == S2yuan;
    always @(state)
        case(state)
        S0     : o_money_bin = 3'b000;
        S5mao  : o_money_bin = 3'b001;
        S1yuan : o_money_bin = 3'b010;
        S1y5m  : o_money_bin = 3'b011;
        S2yuan : o_money_bin = 3'b100;
        default: o_money_bin = 3'b000;
        endcase
    
endmodule
