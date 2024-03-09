// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Oct 21 22:06:12 2023
// Host        : LAPTOP-AMC1T352 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Coding/Vivado_workspace/1018_SellerMachine/1018_SellerMachine.sim/sim_1/synth/timing/xsim/seller_machine_sim_time_synth.v
// Design      : seller_machine_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* S0 = "3'b000" *) (* S1y5m = "3'b101" *) (* S1yuan = "3'b011" *) 
(* S2yuan = "3'b110" *) (* S5mao = "3'b001" *) 
module async_moore_fsm
   (areset,
    i_1yuan,
    i_5mao,
    o_money_bin,
    o_sell_refund_request);
  input areset;
  input i_1yuan;
  input i_5mao;
  output [2:0]o_money_bin;
  output [1:0]o_sell_refund_request;

  wire areset;
  wire i_1yuan;
  wire i_5mao;
  wire [2:0]o_money_bin;
  wire [1:0]o_sell_refund_request;
  wire [2:0]state;
  wire \state_xor[0][0]_i_1_n_0 ;
  wire \state_xor[0][1]_i_1_n_0 ;
  wire \state_xor[0][2]_i_1_n_0 ;
  wire \state_xor[1][0]_i_1_n_0 ;
  wire \state_xor[1][1]_i_1_n_0 ;
  wire \state_xor[1][2]_i_1_n_0 ;
  wire \state_xor[2][0]_i_1_n_0 ;
  wire \state_xor[2][1]_i_1_n_0 ;
  wire \state_xor[2][2]_i_1_n_0 ;
  wire \state_xor[3][0]_i_1_n_0 ;
  wire \state_xor[3][1]_i_1_n_0 ;
  wire \state_xor[3][2]_i_1_n_0 ;
  wire \state_xor_reg_n_0_[0][0] ;
  wire \state_xor_reg_n_0_[0][1] ;
  wire \state_xor_reg_n_0_[0][2] ;
  wire \state_xor_reg_n_0_[1][0] ;
  wire \state_xor_reg_n_0_[1][1] ;
  wire \state_xor_reg_n_0_[1][2] ;
  wire \state_xor_reg_n_0_[2][0] ;
  wire \state_xor_reg_n_0_[2][1] ;
  wire \state_xor_reg_n_0_[2][2] ;
  wire \state_xor_reg_n_0_[3][0] ;
  wire \state_xor_reg_n_0_[3][1] ;
  wire \state_xor_reg_n_0_[3][2] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00006996)) 
    \o_money_bin[0]_INST_0 
       (.I0(\state_xor_reg_n_0_[3][0] ),
        .I1(\state_xor_reg_n_0_[0][0] ),
        .I2(\state_xor_reg_n_0_[1][0] ),
        .I3(\state_xor_reg_n_0_[2][0] ),
        .I4(state[1]),
        .O(o_money_bin[0]));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \o_money_bin[1]_INST_0 
       (.I0(state[0]),
        .I1(\state_xor_reg_n_0_[2][2] ),
        .I2(\state_xor_reg_n_0_[1][2] ),
        .I3(\state_xor_reg_n_0_[0][2] ),
        .I4(\state_xor_reg_n_0_[3][2] ),
        .I5(state[1]),
        .O(o_money_bin[1]));
  LUT6 #(
    .INIT(64'h1441411400000000)) 
    \o_money_bin[2]_INST_0 
       (.I0(state[0]),
        .I1(\state_xor_reg_n_0_[2][2] ),
        .I2(\state_xor_reg_n_0_[1][2] ),
        .I3(\state_xor_reg_n_0_[0][2] ),
        .I4(\state_xor_reg_n_0_[3][2] ),
        .I5(state[1]),
        .O(o_money_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \o_money_bin[2]_INST_0_i_1 
       (.I0(\state_xor_reg_n_0_[2][0] ),
        .I1(\state_xor_reg_n_0_[1][0] ),
        .I2(\state_xor_reg_n_0_[0][0] ),
        .I3(\state_xor_reg_n_0_[3][0] ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \o_money_bin[2]_INST_0_i_2 
       (.I0(\state_xor_reg_n_0_[2][1] ),
        .I1(\state_xor_reg_n_0_[1][1] ),
        .I2(\state_xor_reg_n_0_[0][1] ),
        .I3(\state_xor_reg_n_0_[3][1] ),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h0000000028828228)) 
    \o_sell_refund_request[0]_INST_0 
       (.I0(state[1]),
        .I1(\state_xor_reg_n_0_[2][2] ),
        .I2(\state_xor_reg_n_0_[1][2] ),
        .I3(\state_xor_reg_n_0_[0][2] ),
        .I4(\state_xor_reg_n_0_[3][2] ),
        .I5(state[0]),
        .O(o_sell_refund_request[0]));
  LUT6 #(
    .INIT(64'h0000000069960000)) 
    \o_sell_refund_request[1]_INST_0 
       (.I0(\state_xor_reg_n_0_[2][2] ),
        .I1(\state_xor_reg_n_0_[1][2] ),
        .I2(\state_xor_reg_n_0_[0][2] ),
        .I3(\state_xor_reg_n_0_[3][2] ),
        .I4(state[0]),
        .I5(state[1]),
        .O(o_sell_refund_request[1]));
  LUT6 #(
    .INIT(64'h8FF80770F88F7007)) 
    \state_xor[0][0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\state_xor_reg_n_0_[2][0] ),
        .I3(\state_xor_reg_n_0_[1][0] ),
        .I4(\state_xor_reg_n_0_[0][0] ),
        .I5(\state_xor_reg_n_0_[3][0] ),
        .O(\state_xor[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h82D7287DEB41BE14)) 
    \state_xor[0][1]_i_1 
       (.I0(state[2]),
        .I1(\state_xor_reg_n_0_[2][1] ),
        .I2(\state_xor_reg_n_0_[1][1] ),
        .I3(\state_xor_reg_n_0_[0][1] ),
        .I4(\state_xor_reg_n_0_[3][1] ),
        .I5(state[0]),
        .O(\state_xor[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333CCCCCCCCA55A)) 
    \state_xor[0][2]_i_1 
       (.I0(\state_xor_reg_n_0_[3][2] ),
        .I1(\state_xor_reg_n_0_[0][2] ),
        .I2(\state_xor_reg_n_0_[1][2] ),
        .I3(\state_xor_reg_n_0_[2][2] ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\state_xor[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B47B874B8748B47)) 
    \state_xor[1][0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\state_xor_reg_n_0_[2][0] ),
        .I3(\state_xor_reg_n_0_[1][0] ),
        .I4(\state_xor_reg_n_0_[0][0] ),
        .I5(\state_xor_reg_n_0_[3][0] ),
        .O(\state_xor[1][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \state_xor[1][0]_i_2 
       (.I0(\state_xor_reg_n_0_[2][2] ),
        .I1(\state_xor_reg_n_0_[1][2] ),
        .I2(\state_xor_reg_n_0_[0][2] ),
        .I3(\state_xor_reg_n_0_[3][2] ),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCC5AA5)) 
    \state_xor[1][1]_i_1 
       (.I0(\state_xor_reg_n_0_[2][1] ),
        .I1(\state_xor_reg_n_0_[1][1] ),
        .I2(\state_xor_reg_n_0_[0][1] ),
        .I3(\state_xor_reg_n_0_[3][1] ),
        .I4(state[0]),
        .O(\state_xor[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F6699F0F09966)) 
    \state_xor[1][2]_i_1 
       (.I0(\state_xor_reg_n_0_[3][2] ),
        .I1(\state_xor_reg_n_0_[0][2] ),
        .I2(\state_xor_reg_n_0_[1][2] ),
        .I3(\state_xor_reg_n_0_[2][2] ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\state_xor[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF009696FF00FF00)) 
    \state_xor[2][0]_i_1 
       (.I0(\state_xor_reg_n_0_[3][0] ),
        .I1(\state_xor_reg_n_0_[0][0] ),
        .I2(\state_xor_reg_n_0_[1][0] ),
        .I3(\state_xor_reg_n_0_[2][0] ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\state_xor[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEBBE4114FFFF0000)) 
    \state_xor[2][1]_i_1 
       (.I0(state[0]),
        .I1(\state_xor_reg_n_0_[3][1] ),
        .I2(\state_xor_reg_n_0_[0][1] ),
        .I3(\state_xor_reg_n_0_[1][1] ),
        .I4(\state_xor_reg_n_0_[2][1] ),
        .I5(state[2]),
        .O(\state_xor[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9696FF00969600)) 
    \state_xor[2][2]_i_1 
       (.I0(\state_xor_reg_n_0_[3][2] ),
        .I1(\state_xor_reg_n_0_[0][2] ),
        .I2(\state_xor_reg_n_0_[1][2] ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\state_xor_reg_n_0_[2][2] ),
        .O(\state_xor[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAC33CAAAAAAAA)) 
    \state_xor[3][0]_i_1 
       (.I0(\state_xor_reg_n_0_[3][0] ),
        .I1(\state_xor_reg_n_0_[0][0] ),
        .I2(\state_xor_reg_n_0_[1][0] ),
        .I3(\state_xor_reg_n_0_[2][0] ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\state_xor[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD88D8DD8CCCCCCCC)) 
    \state_xor[3][1]_i_1 
       (.I0(state[0]),
        .I1(\state_xor_reg_n_0_[3][1] ),
        .I2(\state_xor_reg_n_0_[0][1] ),
        .I3(\state_xor_reg_n_0_[1][1] ),
        .I4(\state_xor_reg_n_0_[2][1] ),
        .I5(state[2]),
        .O(\state_xor[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9696FF00969600)) 
    \state_xor[3][2]_i_1 
       (.I0(\state_xor_reg_n_0_[0][2] ),
        .I1(\state_xor_reg_n_0_[1][2] ),
        .I2(\state_xor_reg_n_0_[2][2] ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\state_xor_reg_n_0_[3][2] ),
        .O(\state_xor[3][2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_xor_reg[0][0] 
       (.C(i_5mao),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[0][0]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_xor_reg[0][1] 
       (.C(i_5mao),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[0][1]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_xor_reg[0][2] 
       (.C(i_5mao),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[0][2]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_xor_reg[1][0] 
       (.C(i_1yuan),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[1][0]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_xor_reg[1][1] 
       (.C(i_1yuan),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[1][1]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_xor_reg[1][2] 
       (.C(i_1yuan),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[1][2]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[1][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_xor_reg[2][0] 
       (.C(i_5mao),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[2][0]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[2][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_xor_reg[2][1] 
       (.C(i_5mao),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[2][1]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[2][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_xor_reg[2][2] 
       (.C(i_5mao),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[2][2]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[2][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_xor_reg[3][0] 
       (.C(i_1yuan),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[3][0]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[3][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_xor_reg[3][1] 
       (.C(i_1yuan),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[3][1]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[3][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_xor_reg[3][2] 
       (.C(i_1yuan),
        .CE(1'b1),
        .CLR(areset),
        .D(\state_xor[3][2]_i_1_n_0 ),
        .Q(\state_xor_reg_n_0_[3][2] ));
endmodule

module disp_on_8seg
   (o_sel4_OBUF,
    Q,
    o_en,
    CLK);
  output [3:0]o_sel4_OBUF;
  output [1:0]Q;
  input [3:0]o_en;
  input CLK;

  wire CLK;
  wire [1:0]Q;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire [3:0]o_en;
  wire [3:0]o_sel4_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel4_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(o_en[0]),
        .O(o_sel4_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_sel4_OBUF[1]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(o_en[1]),
        .O(o_sel4_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_sel4_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(o_en[2]),
        .O(o_sel4_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_sel4_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(o_en[3]),
        .O(o_sel4_OBUF[3]));
endmodule

module money_bin_to_bcd8421
   (i_bin,
    o_en,
    o_data,
    o_dp);
  input [2:0]i_bin;
  output [3:0]o_en;
  output [15:0]o_data;
  output [3:0]o_dp;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]i_bin;

  assign o_data[15] = \<const0> ;
  assign o_data[14] = \<const0> ;
  assign o_data[13] = \<const0> ;
  assign o_data[12] = \<const0> ;
  assign o_data[11] = \<const0> ;
  assign o_data[10] = \<const0> ;
  assign o_data[9] = \<const0> ;
  assign o_data[8] = \<const0> ;
  assign o_data[7] = \<const0> ;
  assign o_data[6] = \<const0> ;
  assign o_data[5:4] = i_bin[2:1];
  assign o_data[3] = \<const0> ;
  assign o_data[2] = i_bin[0];
  assign o_data[1] = \<const0> ;
  assign o_data[0] = i_bin[0];
  assign o_dp[3] = \<const0> ;
  assign o_dp[2] = \<const0> ;
  assign o_dp[1] = \<const1> ;
  assign o_dp[0] = \<const0> ;
  assign o_en[3] = \<const0> ;
  assign o_en[2] = \<const0> ;
  assign o_en[1] = \<const1> ;
  assign o_en[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

module sell_refund_fifo
   (o_sell_reg_0,
    o_refund_OBUF,
    CLK,
    areset_IBUF,
    o_sell_refund_request);
  output o_sell_reg_0;
  output o_refund_OBUF;
  input CLK;
  input areset_IBUF;
  input [1:0]o_sell_refund_request;

  wire CLK;
  wire areset_IBUF;
  wire \mem_xor[0][0]_i_1_n_0 ;
  wire \mem_xor[0][10]_i_1_n_0 ;
  wire \mem_xor[0][11]_i_1_n_0 ;
  wire \mem_xor[0][12]_i_1_n_0 ;
  wire \mem_xor[0][13]_i_1_n_0 ;
  wire \mem_xor[0][14]_i_1_n_0 ;
  wire \mem_xor[0][15]_i_1_n_0 ;
  wire \mem_xor[0][15]_i_2_n_0 ;
  wire \mem_xor[0][15]_i_3_n_0 ;
  wire \mem_xor[0][15]_i_4_n_0 ;
  wire \mem_xor[0][15]_i_5_n_0 ;
  wire \mem_xor[0][15]_i_6_n_0 ;
  wire \mem_xor[0][15]_i_7_n_0 ;
  wire \mem_xor[0][15]_i_8_n_0 ;
  wire \mem_xor[0][15]_i_9_n_0 ;
  wire \mem_xor[0][1]_i_1_n_0 ;
  wire \mem_xor[0][2]_i_1_n_0 ;
  wire \mem_xor[0][3]_i_1_n_0 ;
  wire \mem_xor[0][4]_i_1_n_0 ;
  wire \mem_xor[0][5]_i_1_n_0 ;
  wire \mem_xor[0][6]_i_1_n_0 ;
  wire \mem_xor[0][7]_i_1_n_0 ;
  wire \mem_xor[0][8]_i_1_n_0 ;
  wire \mem_xor[0][9]_i_1_n_0 ;
  wire \mem_xor[1][0]_i_1_n_0 ;
  wire \mem_xor[1][0]_i_2_n_0 ;
  wire \mem_xor[1][10]_i_1_n_0 ;
  wire \mem_xor[1][10]_i_2_n_0 ;
  wire \mem_xor[1][11]_i_1_n_0 ;
  wire \mem_xor[1][11]_i_2_n_0 ;
  wire \mem_xor[1][12]_i_1_n_0 ;
  wire \mem_xor[1][12]_i_2_n_0 ;
  wire \mem_xor[1][13]_i_1_n_0 ;
  wire \mem_xor[1][13]_i_2_n_0 ;
  wire \mem_xor[1][14]_i_1_n_0 ;
  wire \mem_xor[1][14]_i_2_n_0 ;
  wire \mem_xor[1][15]_i_10_n_0 ;
  wire \mem_xor[1][15]_i_11_n_0 ;
  wire \mem_xor[1][15]_i_12_n_0 ;
  wire \mem_xor[1][15]_i_13_n_0 ;
  wire \mem_xor[1][15]_i_14_n_0 ;
  wire \mem_xor[1][15]_i_1_n_0 ;
  wire \mem_xor[1][15]_i_2_n_0 ;
  wire \mem_xor[1][15]_i_3_n_0 ;
  wire \mem_xor[1][15]_i_4_n_0 ;
  wire \mem_xor[1][15]_i_5_n_0 ;
  wire \mem_xor[1][15]_i_6_n_0 ;
  wire \mem_xor[1][15]_i_7_n_0 ;
  wire \mem_xor[1][15]_i_8_n_0 ;
  wire \mem_xor[1][15]_i_9_n_0 ;
  wire \mem_xor[1][1]_i_1_n_0 ;
  wire \mem_xor[1][1]_i_2_n_0 ;
  wire \mem_xor[1][2]_i_1_n_0 ;
  wire \mem_xor[1][2]_i_2_n_0 ;
  wire \mem_xor[1][3]_i_1_n_0 ;
  wire \mem_xor[1][3]_i_2_n_0 ;
  wire \mem_xor[1][4]_i_1_n_0 ;
  wire \mem_xor[1][4]_i_2_n_0 ;
  wire \mem_xor[1][5]_i_1_n_0 ;
  wire \mem_xor[1][5]_i_2_n_0 ;
  wire \mem_xor[1][6]_i_1_n_0 ;
  wire \mem_xor[1][6]_i_2_n_0 ;
  wire \mem_xor[1][7]_i_1_n_0 ;
  wire \mem_xor[1][7]_i_2_n_0 ;
  wire \mem_xor[1][8]_i_1_n_0 ;
  wire \mem_xor[1][8]_i_2_n_0 ;
  wire \mem_xor[1][9]_i_1_n_0 ;
  wire \mem_xor[1][9]_i_2_n_0 ;
  wire \mem_xor_reg_n_0_[0][0] ;
  wire \mem_xor_reg_n_0_[0][10] ;
  wire \mem_xor_reg_n_0_[0][11] ;
  wire \mem_xor_reg_n_0_[0][12] ;
  wire \mem_xor_reg_n_0_[0][13] ;
  wire \mem_xor_reg_n_0_[0][14] ;
  wire \mem_xor_reg_n_0_[0][15] ;
  wire \mem_xor_reg_n_0_[0][1] ;
  wire \mem_xor_reg_n_0_[0][2] ;
  wire \mem_xor_reg_n_0_[0][3] ;
  wire \mem_xor_reg_n_0_[0][4] ;
  wire \mem_xor_reg_n_0_[0][5] ;
  wire \mem_xor_reg_n_0_[0][6] ;
  wire \mem_xor_reg_n_0_[0][7] ;
  wire \mem_xor_reg_n_0_[0][8] ;
  wire \mem_xor_reg_n_0_[0][9] ;
  wire \mem_xor_reg_n_0_[1][0] ;
  wire \mem_xor_reg_n_0_[1][10] ;
  wire \mem_xor_reg_n_0_[1][11] ;
  wire \mem_xor_reg_n_0_[1][12] ;
  wire \mem_xor_reg_n_0_[1][13] ;
  wire \mem_xor_reg_n_0_[1][14] ;
  wire \mem_xor_reg_n_0_[1][15] ;
  wire \mem_xor_reg_n_0_[1][1] ;
  wire \mem_xor_reg_n_0_[1][2] ;
  wire \mem_xor_reg_n_0_[1][3] ;
  wire \mem_xor_reg_n_0_[1][4] ;
  wire \mem_xor_reg_n_0_[1][5] ;
  wire \mem_xor_reg_n_0_[1][6] ;
  wire \mem_xor_reg_n_0_[1][7] ;
  wire \mem_xor_reg_n_0_[1][8] ;
  wire \mem_xor_reg_n_0_[1][9] ;
  wire o_refund_OBUF;
  wire o_refund_i_10_n_0;
  wire o_refund_i_11_n_0;
  wire o_refund_i_12_n_0;
  wire o_refund_i_13_n_0;
  wire o_refund_i_14_n_0;
  wire o_refund_i_1_n_0;
  wire o_refund_i_7_n_0;
  wire o_refund_i_8_n_0;
  wire o_refund_i_9_n_0;
  wire o_refund_reg_i_2_n_0;
  wire o_refund_reg_i_3_n_0;
  wire o_refund_reg_i_4_n_0;
  wire o_refund_reg_i_5_n_0;
  wire o_refund_reg_i_6_n_0;
  wire o_sell_i_1_n_0;
  wire o_sell_i_2_n_0;
  wire o_sell_i_3_n_0;
  wire o_sell_i_4_n_0;
  wire [1:0]o_sell_refund_request;
  wire o_sell_reg_0;
  wire p_0_in;
  wire [3:0]p_0_in__0;
  wire [2:0]p_2_out;
  wire [2:0]p_4_out;
  wire \ptr_read[1]_i_1_n_0 ;
  wire \ptr_read[2]_i_1_n_0 ;
  wire [3:0]ptr_read_reg;
  wire \ptr_wr_xor[0][3]_i_1_n_0 ;
  wire \ptr_wr_xor[0][3]_i_2_n_0 ;
  wire \ptr_wr_xor[1][3]_i_2_n_0 ;
  wire \ptr_wr_xor[1][3]_i_3_n_0 ;
  wire \ptr_wr_xor[1][3]_i_4_n_0 ;
  wire [3:0]\ptr_wr_xor_reg[0]_1 ;
  wire [3:0]\ptr_wr_xor_reg[1]_0 ;

  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][0]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][0]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][0] ),
        .O(\mem_xor[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][10]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][10]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][10] ),
        .O(\mem_xor[0][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][11]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][11]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][11] ),
        .O(\mem_xor[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][12]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][12]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][12] ),
        .O(\mem_xor[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][13]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][13]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][13] ),
        .O(\mem_xor[0][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][14]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][14]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][14] ),
        .O(\mem_xor[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][15]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][15]_i_6_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][15] ),
        .O(\mem_xor[0][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2020202A202)) 
    \mem_xor[0][15]_i_2 
       (.I0(\mem_xor[1][15]_i_11_n_0 ),
        .I1(\mem_xor[0][15]_i_6_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[1][10] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[1][11] ),
        .O(\mem_xor[0][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2020202A202)) 
    \mem_xor[0][15]_i_3 
       (.I0(\mem_xor[1][15]_i_7_n_0 ),
        .I1(\mem_xor[0][15]_i_7_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[1][14] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[1][15] ),
        .O(\mem_xor[0][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2020202A202)) 
    \mem_xor[0][15]_i_4 
       (.I0(\mem_xor[1][15]_i_13_n_0 ),
        .I1(\mem_xor[0][15]_i_8_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[1][6] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[1][7] ),
        .O(\mem_xor[0][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h222EEE2EFFFFFFFF)) 
    \mem_xor[0][15]_i_5 
       (.I0(\mem_xor[0][15]_i_9_n_0 ),
        .I1(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I2(\mem_xor_reg_n_0_[1][2] ),
        .I3(o_sell_i_3_n_0),
        .I4(\mem_xor_reg_n_0_[1][3] ),
        .I5(\mem_xor[1][15]_i_9_n_0 ),
        .O(\mem_xor[0][15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \mem_xor[0][15]_i_6 
       (.I0(\mem_xor_reg_n_0_[1][9] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[1][8] ),
        .O(\mem_xor[0][15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \mem_xor[0][15]_i_7 
       (.I0(\mem_xor_reg_n_0_[1][13] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[1][12] ),
        .O(\mem_xor[0][15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \mem_xor[0][15]_i_8 
       (.I0(\mem_xor_reg_n_0_[1][5] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[1][4] ),
        .O(\mem_xor[0][15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \mem_xor[0][15]_i_9 
       (.I0(\mem_xor_reg_n_0_[1][1] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[1][0] ),
        .O(\mem_xor[0][15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][1]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][1]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][1] ),
        .O(\mem_xor[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][2]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][2]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][2] ),
        .O(\mem_xor[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][3]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][3]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][3] ),
        .O(\mem_xor[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][4]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][4]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][4] ),
        .O(\mem_xor[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][5]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][5]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][5] ),
        .O(\mem_xor[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][6]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][6]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][6] ),
        .O(\mem_xor[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][7]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][7]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][7] ),
        .O(\mem_xor[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][8]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][8]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][8] ),
        .O(\mem_xor[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \mem_xor[0][9]_i_1 
       (.I0(\mem_xor[0][15]_i_2_n_0 ),
        .I1(\mem_xor[0][15]_i_3_n_0 ),
        .I2(\mem_xor[0][15]_i_4_n_0 ),
        .I3(\mem_xor[0][15]_i_5_n_0 ),
        .I4(\mem_xor[1][9]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[0][9] ),
        .O(\mem_xor[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][0]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][0]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][0] ),
        .O(\mem_xor[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \mem_xor[1][0]_i_2 
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(\ptr_wr_xor_reg[0]_1 [3]),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I5(o_sell_i_3_n_0),
        .O(\mem_xor[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][10]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][10]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][10] ),
        .O(\mem_xor[1][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400440040000)) 
    \mem_xor[1][10]_i_2 
       (.I0(o_sell_i_3_n_0),
        .I1(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor_reg[1]_0 [3]),
        .I5(\ptr_wr_xor_reg[0]_1 [3]),
        .O(\mem_xor[1][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][11]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][11]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][11] ),
        .O(\mem_xor[1][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800880080000)) 
    \mem_xor[1][11]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor_reg[1]_0 [3]),
        .I5(\ptr_wr_xor_reg[0]_1 [3]),
        .O(\mem_xor[1][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][12]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][12]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][12] ),
        .O(\mem_xor[1][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000011001100000)) 
    \mem_xor[1][12]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][13]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][13]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][13] ),
        .O(\mem_xor[1][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000044004400000)) 
    \mem_xor[1][13]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][14]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][14]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][14] ),
        .O(\mem_xor[1][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000044004400000)) 
    \mem_xor[1][14]_i_2 
       (.I0(o_sell_i_3_n_0),
        .I1(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][15]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][15]_i_6_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][15] ),
        .O(\mem_xor[1][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \mem_xor[1][15]_i_10 
       (.I0(\mem_xor_reg_n_0_[0][1] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[0][0] ),
        .O(\mem_xor[1][15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \mem_xor[1][15]_i_11 
       (.I0(\ptr_wr_xor_reg[0]_1 [3]),
        .I1(\ptr_wr_xor_reg[1]_0 [3]),
        .I2(\ptr_wr_xor_reg[0]_1 [2]),
        .I3(\ptr_wr_xor_reg[1]_0 [2]),
        .O(\mem_xor[1][15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \mem_xor[1][15]_i_12 
       (.I0(\mem_xor_reg_n_0_[0][9] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[0][8] ),
        .O(\mem_xor[1][15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \mem_xor[1][15]_i_13 
       (.I0(\ptr_wr_xor_reg[0]_1 [2]),
        .I1(\ptr_wr_xor_reg[1]_0 [2]),
        .I2(\ptr_wr_xor_reg[0]_1 [3]),
        .I3(\ptr_wr_xor_reg[1]_0 [3]),
        .O(\mem_xor[1][15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \mem_xor[1][15]_i_14 
       (.I0(\mem_xor_reg_n_0_[0][5] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[0][4] ),
        .O(\mem_xor[1][15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \mem_xor[1][15]_i_2 
       (.I0(\mem_xor[1][15]_i_7_n_0 ),
        .I1(\mem_xor[1][15]_i_8_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[0][14] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[0][15] ),
        .O(\mem_xor[1][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h575757F7F7F757F7)) 
    \mem_xor[1][15]_i_3 
       (.I0(\mem_xor[1][15]_i_9_n_0 ),
        .I1(\mem_xor[1][15]_i_10_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[0][2] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[0][3] ),
        .O(\mem_xor[1][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \mem_xor[1][15]_i_4 
       (.I0(\mem_xor[1][15]_i_11_n_0 ),
        .I1(\mem_xor[1][15]_i_12_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[0][10] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[0][11] ),
        .O(\mem_xor[1][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \mem_xor[1][15]_i_5 
       (.I0(\mem_xor[1][15]_i_13_n_0 ),
        .I1(\mem_xor[1][15]_i_14_n_0 ),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(\mem_xor_reg_n_0_[0][6] ),
        .I4(o_sell_i_3_n_0),
        .I5(\mem_xor_reg_n_0_[0][7] ),
        .O(\mem_xor[1][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000088008800000)) 
    \mem_xor[1][15]_i_6 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \mem_xor[1][15]_i_7 
       (.I0(\ptr_wr_xor_reg[0]_1 [2]),
        .I1(\ptr_wr_xor_reg[1]_0 [2]),
        .I2(\ptr_wr_xor_reg[0]_1 [3]),
        .I3(\ptr_wr_xor_reg[1]_0 [3]),
        .O(\mem_xor[1][15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \mem_xor[1][15]_i_8 
       (.I0(\mem_xor_reg_n_0_[0][13] ),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .I3(\mem_xor_reg_n_0_[0][12] ),
        .O(\mem_xor[1][15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_xor[1][15]_i_9 
       (.I0(\ptr_wr_xor_reg[0]_1 [2]),
        .I1(\ptr_wr_xor_reg[1]_0 [2]),
        .I2(\ptr_wr_xor_reg[0]_1 [3]),
        .I3(\ptr_wr_xor_reg[1]_0 [3]),
        .O(\mem_xor[1][15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][1]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][1]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][1] ),
        .O(\mem_xor[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000900900000000)) 
    \mem_xor[1][1]_i_2 
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(\ptr_wr_xor_reg[0]_1 [3]),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I5(o_sell_i_3_n_0),
        .O(\mem_xor[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][2]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][2]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][2] ),
        .O(\mem_xor[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000900900000000)) 
    \mem_xor[1][2]_i_2 
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(\ptr_wr_xor_reg[0]_1 [3]),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(o_sell_i_3_n_0),
        .I5(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .O(\mem_xor[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][3]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][3]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][3] ),
        .O(\mem_xor[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \mem_xor[1][3]_i_2 
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(\ptr_wr_xor_reg[0]_1 [3]),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I5(o_sell_i_3_n_0),
        .O(\mem_xor[1][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][4]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][4]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][4] ),
        .O(\mem_xor[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100110010000)) 
    \mem_xor[1][4]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][5]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][5]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][5] ),
        .O(\mem_xor[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400440040000)) 
    \mem_xor[1][5]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][6]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][6]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][6] ),
        .O(\mem_xor[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400440040000)) 
    \mem_xor[1][6]_i_2 
       (.I0(o_sell_i_3_n_0),
        .I1(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][7]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][7]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][7] ),
        .O(\mem_xor[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800880080000)) 
    \mem_xor[1][7]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [3]),
        .I3(\ptr_wr_xor_reg[0]_1 [3]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\mem_xor[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][8]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][8]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][8] ),
        .O(\mem_xor[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100110010000)) 
    \mem_xor[1][8]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor_reg[1]_0 [3]),
        .I5(\ptr_wr_xor_reg[0]_1 [3]),
        .O(\mem_xor[1][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \mem_xor[1][9]_i_1 
       (.I0(\mem_xor[1][15]_i_2_n_0 ),
        .I1(\mem_xor[1][15]_i_3_n_0 ),
        .I2(\mem_xor[1][15]_i_4_n_0 ),
        .I3(\mem_xor[1][15]_i_5_n_0 ),
        .I4(\mem_xor[1][9]_i_2_n_0 ),
        .I5(\mem_xor_reg_n_0_[1][9] ),
        .O(\mem_xor[1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400440040000)) 
    \mem_xor[1][9]_i_2 
       (.I0(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[1]_0 [2]),
        .I3(\ptr_wr_xor_reg[0]_1 [2]),
        .I4(\ptr_wr_xor_reg[1]_0 [3]),
        .I5(\ptr_wr_xor_reg[0]_1 [3]),
        .O(\mem_xor[1][9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][0] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][0]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][10] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][10]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][10] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][11] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][11]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][11] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][12] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][12]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][12] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][13] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][13]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][13] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][14] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][14]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][14] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][15] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][15]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][15] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][1] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][1]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][2] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][2]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][3] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][3]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][4] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][4]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][4] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][5] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][5]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][5] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][6] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][6]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][6] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][7] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][7]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][7] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][8] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][8]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][8] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[0][9] 
       (.C(o_sell_refund_request[1]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[0][9]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[0][9] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][0] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][0]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][10] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][10]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][10] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][11] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][11]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][11] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][12] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][12]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][12] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][13] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][13]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][13] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][14] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][14]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][14] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][15] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][15]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][15] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][1] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][1]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][2] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][2]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][3] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][3]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][4] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][4]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][4] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][5] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][5]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][5] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][6] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][6]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][6] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][7] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][7]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][7] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][8] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][8]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][8] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \mem_xor_reg[1][9] 
       (.C(o_sell_refund_request[0]),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\mem_xor[1][9]_i_1_n_0 ),
        .Q(\mem_xor_reg_n_0_[1][9] ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    o_refund_i_1
       (.I0(o_sell_i_1_n_0),
        .I1(o_refund_reg_i_2_n_0),
        .I2(ptr_read_reg[3]),
        .I3(o_refund_reg_i_3_n_0),
        .I4(ptr_read_reg[2]),
        .I5(o_refund_reg_i_4_n_0),
        .O(o_refund_i_1_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_10
       (.I0(\mem_xor_reg_n_0_[0][15] ),
        .I1(\mem_xor_reg_n_0_[1][15] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][14] ),
        .I4(\mem_xor_reg_n_0_[1][14] ),
        .O(o_refund_i_10_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_11
       (.I0(\mem_xor_reg_n_0_[0][1] ),
        .I1(\mem_xor_reg_n_0_[1][1] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][0] ),
        .I4(\mem_xor_reg_n_0_[1][0] ),
        .O(o_refund_i_11_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_12
       (.I0(\mem_xor_reg_n_0_[0][3] ),
        .I1(\mem_xor_reg_n_0_[1][3] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][2] ),
        .I4(\mem_xor_reg_n_0_[1][2] ),
        .O(o_refund_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_13
       (.I0(\mem_xor_reg_n_0_[0][5] ),
        .I1(\mem_xor_reg_n_0_[1][5] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][4] ),
        .I4(\mem_xor_reg_n_0_[1][4] ),
        .O(o_refund_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_14
       (.I0(\mem_xor_reg_n_0_[0][7] ),
        .I1(\mem_xor_reg_n_0_[1][7] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][6] ),
        .I4(\mem_xor_reg_n_0_[1][6] ),
        .O(o_refund_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_7
       (.I0(\mem_xor_reg_n_0_[0][9] ),
        .I1(\mem_xor_reg_n_0_[1][9] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][8] ),
        .I4(\mem_xor_reg_n_0_[1][8] ),
        .O(o_refund_i_7_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_8
       (.I0(\mem_xor_reg_n_0_[0][11] ),
        .I1(\mem_xor_reg_n_0_[1][11] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][10] ),
        .I4(\mem_xor_reg_n_0_[1][10] ),
        .O(o_refund_i_8_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    o_refund_i_9
       (.I0(\mem_xor_reg_n_0_[0][13] ),
        .I1(\mem_xor_reg_n_0_[1][13] ),
        .I2(ptr_read_reg[0]),
        .I3(\mem_xor_reg_n_0_[0][12] ),
        .I4(\mem_xor_reg_n_0_[1][12] ),
        .O(o_refund_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_refund_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(o_refund_i_1_n_0),
        .Q(o_refund_OBUF));
  MUXF8 o_refund_reg_i_2
       (.I0(o_refund_reg_i_5_n_0),
        .I1(o_refund_reg_i_6_n_0),
        .O(o_refund_reg_i_2_n_0),
        .S(ptr_read_reg[2]));
  MUXF7 o_refund_reg_i_3
       (.I0(o_refund_i_7_n_0),
        .I1(o_refund_i_8_n_0),
        .O(o_refund_reg_i_3_n_0),
        .S(ptr_read_reg[1]));
  MUXF7 o_refund_reg_i_4
       (.I0(o_refund_i_9_n_0),
        .I1(o_refund_i_10_n_0),
        .O(o_refund_reg_i_4_n_0),
        .S(ptr_read_reg[1]));
  MUXF7 o_refund_reg_i_5
       (.I0(o_refund_i_11_n_0),
        .I1(o_refund_i_12_n_0),
        .O(o_refund_reg_i_5_n_0),
        .S(ptr_read_reg[1]));
  MUXF7 o_refund_reg_i_6
       (.I0(o_refund_i_13_n_0),
        .I1(o_refund_i_14_n_0),
        .O(o_refund_reg_i_6_n_0),
        .S(ptr_read_reg[1]));
  LUT6 #(
    .INIT(64'h4554555555554554)) 
    o_sell_i_1
       (.I0(o_sell_reg_0),
        .I1(o_sell_i_2_n_0),
        .I2(o_sell_i_3_n_0),
        .I3(ptr_read_reg[0]),
        .I4(o_sell_i_4_n_0),
        .I5(ptr_read_reg[2]),
        .O(o_sell_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF9696FF96FFFF96)) 
    o_sell_i_2
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(\ptr_wr_xor_reg[0]_1 [3]),
        .I2(ptr_read_reg[3]),
        .I3(\ptr_wr_xor_reg[1]_0 [1]),
        .I4(\ptr_wr_xor_reg[0]_1 [1]),
        .I5(ptr_read_reg[1]),
        .O(o_sell_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    o_sell_i_3
       (.I0(\ptr_wr_xor_reg[1]_0 [0]),
        .I1(\ptr_wr_xor_reg[0]_1 [0]),
        .O(o_sell_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    o_sell_i_4
       (.I0(\ptr_wr_xor_reg[1]_0 [2]),
        .I1(\ptr_wr_xor_reg[0]_1 [2]),
        .O(o_sell_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_sell_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(o_sell_i_1_n_0),
        .Q(o_sell_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_read[0]_i_1 
       (.I0(o_sell_reg_0),
        .I1(ptr_read_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ptr_read[1]_i_1 
       (.I0(ptr_read_reg[1]),
        .I1(ptr_read_reg[0]),
        .I2(o_sell_reg_0),
        .O(\ptr_read[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ptr_read[2]_i_1 
       (.I0(ptr_read_reg[2]),
        .I1(ptr_read_reg[1]),
        .I2(o_sell_reg_0),
        .I3(ptr_read_reg[0]),
        .O(\ptr_read[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ptr_read[3]_i_1 
       (.I0(ptr_read_reg[3]),
        .I1(ptr_read_reg[0]),
        .I2(o_sell_reg_0),
        .I3(ptr_read_reg[1]),
        .I4(ptr_read_reg[2]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ptr_read_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(p_0_in__0[0]),
        .Q(ptr_read_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ptr_read_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\ptr_read[1]_i_1_n_0 ),
        .Q(ptr_read_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ptr_read_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(\ptr_read[2]_i_1_n_0 ),
        .Q(ptr_read_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ptr_read_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(areset_IBUF),
        .D(p_0_in__0[3]),
        .Q(ptr_read_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ptr_wr_xor[0][0]_i_1 
       (.I0(\ptr_wr_xor_reg[0]_1 [0]),
        .O(p_4_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \ptr_wr_xor[0][1]_i_1 
       (.I0(\ptr_wr_xor_reg[0]_1 [1]),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .O(p_4_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF99F0660)) 
    \ptr_wr_xor[0][2]_i_1 
       (.I0(\ptr_wr_xor_reg[0]_1 [0]),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [1]),
        .I3(\ptr_wr_xor_reg[1]_0 [1]),
        .I4(\ptr_wr_xor_reg[0]_1 [2]),
        .O(p_4_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h9FFF6000)) 
    \ptr_wr_xor[0][3]_i_1 
       (.I0(\ptr_wr_xor_reg[0]_1 [2]),
        .I1(\ptr_wr_xor_reg[1]_0 [2]),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(o_sell_i_3_n_0),
        .I4(\ptr_wr_xor_reg[0]_1 [3]),
        .O(\ptr_wr_xor[0][3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_wr_xor[0][3]_i_2 
       (.I0(\ptr_wr_xor_reg[1]_0 [1]),
        .I1(\ptr_wr_xor_reg[0]_1 [1]),
        .O(\ptr_wr_xor[0][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ptr_wr_xor[1][0]_i_1 
       (.I0(\ptr_wr_xor_reg[1]_0 [0]),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \ptr_wr_xor[1][1]_i_1 
       (.I0(\ptr_wr_xor_reg[1]_0 [1]),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [0]),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF99F0660)) 
    \ptr_wr_xor[1][2]_i_1 
       (.I0(\ptr_wr_xor_reg[0]_1 [0]),
        .I1(\ptr_wr_xor_reg[1]_0 [0]),
        .I2(\ptr_wr_xor_reg[0]_1 [1]),
        .I3(\ptr_wr_xor_reg[1]_0 [1]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .O(p_2_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FEFE01)) 
    \ptr_wr_xor[1][3]_i_1 
       (.I0(ptr_read_reg[1]),
        .I1(ptr_read_reg[0]),
        .I2(ptr_read_reg[2]),
        .I3(ptr_read_reg[3]),
        .I4(\ptr_wr_xor[1][3]_i_3_n_0 ),
        .I5(\ptr_wr_xor[1][3]_i_4_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAAAAA66AA66AAAAA)) 
    \ptr_wr_xor[1][3]_i_2 
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(o_sell_i_3_n_0),
        .I2(\ptr_wr_xor_reg[0]_1 [1]),
        .I3(\ptr_wr_xor_reg[1]_0 [1]),
        .I4(\ptr_wr_xor_reg[1]_0 [2]),
        .I5(\ptr_wr_xor_reg[0]_1 [2]),
        .O(\ptr_wr_xor[1][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_wr_xor[1][3]_i_3 
       (.I0(\ptr_wr_xor_reg[1]_0 [3]),
        .I1(\ptr_wr_xor_reg[0]_1 [3]),
        .O(\ptr_wr_xor[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBDFBFFDFFFDFBDFB)) 
    \ptr_wr_xor[1][3]_i_4 
       (.I0(o_sell_i_3_n_0),
        .I1(ptr_read_reg[0]),
        .I2(\ptr_wr_xor[0][3]_i_2_n_0 ),
        .I3(ptr_read_reg[1]),
        .I4(o_sell_i_4_n_0),
        .I5(ptr_read_reg[2]),
        .O(\ptr_wr_xor[1][3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[0][0] 
       (.C(o_sell_refund_request[1]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(p_4_out[0]),
        .Q(\ptr_wr_xor_reg[0]_1 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[0][1] 
       (.C(o_sell_refund_request[1]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(p_4_out[1]),
        .Q(\ptr_wr_xor_reg[0]_1 [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[0][2] 
       (.C(o_sell_refund_request[1]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(p_4_out[2]),
        .Q(\ptr_wr_xor_reg[0]_1 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[0][3] 
       (.C(o_sell_refund_request[1]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(\ptr_wr_xor[0][3]_i_1_n_0 ),
        .Q(\ptr_wr_xor_reg[0]_1 [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[1][0] 
       (.C(o_sell_refund_request[0]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(p_2_out[0]),
        .Q(\ptr_wr_xor_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[1][1] 
       (.C(o_sell_refund_request[0]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(p_2_out[1]),
        .Q(\ptr_wr_xor_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[1][2] 
       (.C(o_sell_refund_request[0]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(p_2_out[2]),
        .Q(\ptr_wr_xor_reg[1]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ptr_wr_xor_reg[1][3] 
       (.C(o_sell_refund_request[0]),
        .CE(p_0_in),
        .CLR(areset_IBUF),
        .D(\ptr_wr_xor[1][3]_i_2_n_0 ),
        .Q(\ptr_wr_xor_reg[1]_0 [3]));
endmodule

module seller_machine_core
   (o_en,
    o_sell_OBUF,
    o_refund_OBUF,
    o_seg8_OBUF,
    areset_IBUF,
    i_1yuan,
    i_5mao,
    CLK,
    Q);
  output [3:0]o_en;
  output o_sell_OBUF;
  output o_refund_OBUF;
  output [7:0]o_seg8_OBUF;
  input areset_IBUF;
  input i_1yuan;
  input i_5mao;
  input CLK;
  input [1:0]Q;

  wire CLK;
  wire [1:0]Q;
  wire areset_IBUF;
  wire [15:0]data;
  wire [3:0]dp;
  wire i_1yuan;
  wire i_5mao;
  wire [2:0]money_bin;
  wire [3:0]o_en;
  wire o_refund_OBUF;
  wire [7:0]o_seg8_OBUF;
  wire o_sell_OBUF;
  wire [3:0]sel0;
  wire [1:0]sell_refund_request;

  money_bin_to_bcd8421 cvt
       (.i_bin(money_bin),
        .o_data(data),
        .o_dp(dp),
        .o_en(o_en));
  sell_refund_fifo fifo
       (.CLK(CLK),
        .areset_IBUF(areset_IBUF),
        .o_refund_OBUF(o_refund_OBUF),
        .o_sell_refund_request(sell_refund_request),
        .o_sell_reg_0(o_sell_OBUF));
  (* S0 = "3'b000" *) 
  (* S1y5m = "3'b101" *) 
  (* S1yuan = "3'b011" *) 
  (* S2yuan = "3'b110" *) 
  (* S5mao = "3'b001" *) 
  async_moore_fsm fsm
       (.areset(areset_IBUF),
        .i_1yuan(i_1yuan),
        .i_5mao(i_5mao),
        .o_money_bin(money_bin),
        .o_sell_refund_request(sell_refund_request));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \o_seg8_OBUF[0]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(o_seg8_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \o_seg8_OBUF[1]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(o_seg8_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \o_seg8_OBUF[2]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(o_seg8_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \o_seg8_OBUF[3]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(o_seg8_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5704)) 
    \o_seg8_OBUF[4]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(o_seg8_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00B2)) 
    \o_seg8_OBUF[5]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(o_seg8_OBUF[5]));
  LUT4 #(
    .INIT(16'hECC3)) 
    \o_seg8_OBUF[6]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(o_seg8_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \o_seg8_OBUF[6]_inst_i_2 
       (.I0(data[8]),
        .I1(data[12]),
        .I2(data[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(data[4]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \o_seg8_OBUF[6]_inst_i_3 
       (.I0(data[11]),
        .I1(data[15]),
        .I2(data[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(data[7]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \o_seg8_OBUF[6]_inst_i_4 
       (.I0(data[10]),
        .I1(data[14]),
        .I2(data[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(data[6]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \o_seg8_OBUF[6]_inst_i_5 
       (.I0(data[9]),
        .I1(data[13]),
        .I2(data[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(data[5]),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \o_seg8_OBUF[7]_inst_i_1 
       (.I0(dp[1]),
        .I1(dp[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(dp[0]),
        .I5(dp[2]),
        .O(o_seg8_OBUF[7]));
endmodule

(* NotValidForBitStream *)
module seller_machine_top
   (cp,
    areset,
    i_btn_1yuan,
    i_btn_5mao,
    o_seg8,
    o_sel4,
    o_sell,
    o_refund);
  input cp;
  input areset;
  input i_btn_1yuan;
  input i_btn_5mao;
  output [7:0]o_seg8;
  output [3:0]o_sel4;
  output o_sell;
  output o_refund;

  wire areset;
  wire areset_IBUF;
  wire \clk_cnt[0]_i_2_n_0 ;
  wire [25:16]clk_cnt_reg;
  wire \clk_cnt_reg[0]_i_1_n_0 ;
  wire \clk_cnt_reg[0]_i_1_n_1 ;
  wire \clk_cnt_reg[0]_i_1_n_2 ;
  wire \clk_cnt_reg[0]_i_1_n_3 ;
  wire \clk_cnt_reg[0]_i_1_n_4 ;
  wire \clk_cnt_reg[0]_i_1_n_5 ;
  wire \clk_cnt_reg[0]_i_1_n_6 ;
  wire \clk_cnt_reg[0]_i_1_n_7 ;
  wire \clk_cnt_reg[12]_i_1_n_0 ;
  wire \clk_cnt_reg[12]_i_1_n_1 ;
  wire \clk_cnt_reg[12]_i_1_n_2 ;
  wire \clk_cnt_reg[12]_i_1_n_3 ;
  wire \clk_cnt_reg[12]_i_1_n_4 ;
  wire \clk_cnt_reg[12]_i_1_n_5 ;
  wire \clk_cnt_reg[12]_i_1_n_6 ;
  wire \clk_cnt_reg[12]_i_1_n_7 ;
  wire \clk_cnt_reg[16]_i_1_n_0 ;
  wire \clk_cnt_reg[16]_i_1_n_1 ;
  wire \clk_cnt_reg[16]_i_1_n_2 ;
  wire \clk_cnt_reg[16]_i_1_n_3 ;
  wire \clk_cnt_reg[16]_i_1_n_4 ;
  wire \clk_cnt_reg[16]_i_1_n_5 ;
  wire \clk_cnt_reg[16]_i_1_n_6 ;
  wire \clk_cnt_reg[16]_i_1_n_7 ;
  wire \clk_cnt_reg[20]_i_1_n_0 ;
  wire \clk_cnt_reg[20]_i_1_n_1 ;
  wire \clk_cnt_reg[20]_i_1_n_2 ;
  wire \clk_cnt_reg[20]_i_1_n_3 ;
  wire \clk_cnt_reg[20]_i_1_n_4 ;
  wire \clk_cnt_reg[20]_i_1_n_5 ;
  wire \clk_cnt_reg[20]_i_1_n_6 ;
  wire \clk_cnt_reg[20]_i_1_n_7 ;
  wire \clk_cnt_reg[24]_i_1_n_3 ;
  wire \clk_cnt_reg[24]_i_1_n_6 ;
  wire \clk_cnt_reg[24]_i_1_n_7 ;
  wire \clk_cnt_reg[4]_i_1_n_0 ;
  wire \clk_cnt_reg[4]_i_1_n_1 ;
  wire \clk_cnt_reg[4]_i_1_n_2 ;
  wire \clk_cnt_reg[4]_i_1_n_3 ;
  wire \clk_cnt_reg[4]_i_1_n_4 ;
  wire \clk_cnt_reg[4]_i_1_n_5 ;
  wire \clk_cnt_reg[4]_i_1_n_6 ;
  wire \clk_cnt_reg[4]_i_1_n_7 ;
  wire \clk_cnt_reg[8]_i_1_n_0 ;
  wire \clk_cnt_reg[8]_i_1_n_1 ;
  wire \clk_cnt_reg[8]_i_1_n_2 ;
  wire \clk_cnt_reg[8]_i_1_n_3 ;
  wire \clk_cnt_reg[8]_i_1_n_4 ;
  wire \clk_cnt_reg[8]_i_1_n_5 ;
  wire \clk_cnt_reg[8]_i_1_n_6 ;
  wire \clk_cnt_reg[8]_i_1_n_7 ;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[10] ;
  wire \clk_cnt_reg_n_0_[11] ;
  wire \clk_cnt_reg_n_0_[12] ;
  wire \clk_cnt_reg_n_0_[13] ;
  wire \clk_cnt_reg_n_0_[14] ;
  wire \clk_cnt_reg_n_0_[15] ;
  wire \clk_cnt_reg_n_0_[17] ;
  wire \clk_cnt_reg_n_0_[18] ;
  wire \clk_cnt_reg_n_0_[19] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[20] ;
  wire \clk_cnt_reg_n_0_[21] ;
  wire \clk_cnt_reg_n_0_[22] ;
  wire \clk_cnt_reg_n_0_[23] ;
  wire \clk_cnt_reg_n_0_[24] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \clk_cnt_reg_n_0_[5] ;
  wire \clk_cnt_reg_n_0_[6] ;
  wire \clk_cnt_reg_n_0_[7] ;
  wire \clk_cnt_reg_n_0_[8] ;
  wire \clk_cnt_reg_n_0_[9] ;
  wire [1:0]cnt;
  wire cp;
  wire cp_IBUF;
  wire cp_IBUF_BUFG;
  wire [3:0]en;
  wire i_btn_1yuan;
  wire i_btn_1yuan_IBUF;
  wire i_btn_1yuan_IBUF_BUFG;
  wire i_btn_5mao;
  wire i_btn_5mao_IBUF;
  wire i_btn_5mao_IBUF_BUFG;
  wire o_refund;
  wire o_refund_OBUF;
  wire [7:0]o_seg8;
  wire [7:0]o_seg8_OBUF;
  wire [3:0]o_sel4;
  wire [3:0]o_sel4_OBUF;
  wire o_sell;
  wire o_sell_OBUF;
  wire [3:1]\NLW_clk_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_clk_cnt_reg[24]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("seller_machine_sim_time_synth.sdf",,,,"tool_control");
end
  IBUF areset_IBUF_inst
       (.I(areset),
        .O(areset_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_2 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_1_n_7 ),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[0]_i_1_n_0 ,\clk_cnt_reg[0]_i_1_n_1 ,\clk_cnt_reg[0]_i_1_n_2 ,\clk_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_cnt_reg[0]_i_1_n_4 ,\clk_cnt_reg[0]_i_1_n_5 ,\clk_cnt_reg[0]_i_1_n_6 ,\clk_cnt_reg[0]_i_1_n_7 }),
        .S({\clk_cnt_reg_n_0_[3] ,\clk_cnt_reg_n_0_[2] ,\clk_cnt_reg_n_0_[1] ,\clk_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_5 ),
        .Q(\clk_cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_4 ),
        .Q(\clk_cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_7 ),
        .Q(\clk_cnt_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[12]_i_1 
       (.CI(\clk_cnt_reg[8]_i_1_n_0 ),
        .CO({\clk_cnt_reg[12]_i_1_n_0 ,\clk_cnt_reg[12]_i_1_n_1 ,\clk_cnt_reg[12]_i_1_n_2 ,\clk_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[12]_i_1_n_4 ,\clk_cnt_reg[12]_i_1_n_5 ,\clk_cnt_reg[12]_i_1_n_6 ,\clk_cnt_reg[12]_i_1_n_7 }),
        .S({\clk_cnt_reg_n_0_[15] ,\clk_cnt_reg_n_0_[14] ,\clk_cnt_reg_n_0_[13] ,\clk_cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_6 ),
        .Q(\clk_cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_5 ),
        .Q(\clk_cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_4 ),
        .Q(\clk_cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_7 ),
        .Q(clk_cnt_reg[16]),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[16]_i_1 
       (.CI(\clk_cnt_reg[12]_i_1_n_0 ),
        .CO({\clk_cnt_reg[16]_i_1_n_0 ,\clk_cnt_reg[16]_i_1_n_1 ,\clk_cnt_reg[16]_i_1_n_2 ,\clk_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[16]_i_1_n_4 ,\clk_cnt_reg[16]_i_1_n_5 ,\clk_cnt_reg[16]_i_1_n_6 ,\clk_cnt_reg[16]_i_1_n_7 }),
        .S({\clk_cnt_reg_n_0_[19] ,\clk_cnt_reg_n_0_[18] ,\clk_cnt_reg_n_0_[17] ,clk_cnt_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_6 ),
        .Q(\clk_cnt_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_5 ),
        .Q(\clk_cnt_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_4 ),
        .Q(\clk_cnt_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_1_n_6 ),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[20] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[20]_i_1_n_7 ),
        .Q(\clk_cnt_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[20]_i_1 
       (.CI(\clk_cnt_reg[16]_i_1_n_0 ),
        .CO({\clk_cnt_reg[20]_i_1_n_0 ,\clk_cnt_reg[20]_i_1_n_1 ,\clk_cnt_reg[20]_i_1_n_2 ,\clk_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[20]_i_1_n_4 ,\clk_cnt_reg[20]_i_1_n_5 ,\clk_cnt_reg[20]_i_1_n_6 ,\clk_cnt_reg[20]_i_1_n_7 }),
        .S({\clk_cnt_reg_n_0_[23] ,\clk_cnt_reg_n_0_[22] ,\clk_cnt_reg_n_0_[21] ,\clk_cnt_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[21] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[20]_i_1_n_6 ),
        .Q(\clk_cnt_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[22] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[20]_i_1_n_5 ),
        .Q(\clk_cnt_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[23] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[20]_i_1_n_4 ),
        .Q(\clk_cnt_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[24] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[24]_i_1_n_7 ),
        .Q(\clk_cnt_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[24]_i_1 
       (.CI(\clk_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_clk_cnt_reg[24]_i_1_CO_UNCONNECTED [3:1],\clk_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_cnt_reg[24]_i_1_O_UNCONNECTED [3:2],\clk_cnt_reg[24]_i_1_n_6 ,\clk_cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,clk_cnt_reg[25],\clk_cnt_reg_n_0_[24] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[25] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[24]_i_1_n_6 ),
        .Q(clk_cnt_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_1_n_5 ),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_1_n_4 ),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_7 ),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[4]_i_1 
       (.CI(\clk_cnt_reg[0]_i_1_n_0 ),
        .CO({\clk_cnt_reg[4]_i_1_n_0 ,\clk_cnt_reg[4]_i_1_n_1 ,\clk_cnt_reg[4]_i_1_n_2 ,\clk_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_1_n_4 ,\clk_cnt_reg[4]_i_1_n_5 ,\clk_cnt_reg[4]_i_1_n_6 ,\clk_cnt_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_reg_n_0_[7] ,\clk_cnt_reg_n_0_[6] ,\clk_cnt_reg_n_0_[5] ,\clk_cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_6 ),
        .Q(\clk_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_5 ),
        .Q(\clk_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_4 ),
        .Q(\clk_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_7 ),
        .Q(\clk_cnt_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \clk_cnt_reg[8]_i_1 
       (.CI(\clk_cnt_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_reg[8]_i_1_n_0 ,\clk_cnt_reg[8]_i_1_n_1 ,\clk_cnt_reg[8]_i_1_n_2 ,\clk_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_1_n_4 ,\clk_cnt_reg[8]_i_1_n_5 ,\clk_cnt_reg[8]_i_1_n_6 ,\clk_cnt_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_reg_n_0_[11] ,\clk_cnt_reg_n_0_[10] ,\clk_cnt_reg_n_0_[9] ,\clk_cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(cp_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_6 ),
        .Q(\clk_cnt_reg_n_0_[9] ),
        .R(1'b0));
  seller_machine_core core
       (.CLK(clk_cnt_reg[25]),
        .Q(cnt),
        .areset_IBUF(areset_IBUF),
        .i_1yuan(i_btn_1yuan_IBUF_BUFG),
        .i_5mao(i_btn_5mao_IBUF_BUFG),
        .o_en(en),
        .o_refund_OBUF(o_refund_OBUF),
        .o_seg8_OBUF(o_seg8_OBUF),
        .o_sell_OBUF(o_sell_OBUF));
  BUFG cp_IBUF_BUFG_inst
       (.I(cp_IBUF),
        .O(cp_IBUF_BUFG));
  IBUF cp_IBUF_inst
       (.I(cp),
        .O(cp_IBUF));
  disp_on_8seg disp
       (.CLK(clk_cnt_reg[16]),
        .Q(cnt),
        .o_en(en),
        .o_sel4_OBUF(o_sel4_OBUF));
  BUFG i_btn_1yuan_IBUF_BUFG_inst
       (.I(i_btn_1yuan_IBUF),
        .O(i_btn_1yuan_IBUF_BUFG));
  IBUF i_btn_1yuan_IBUF_inst
       (.I(i_btn_1yuan),
        .O(i_btn_1yuan_IBUF));
  BUFG i_btn_5mao_IBUF_BUFG_inst
       (.I(i_btn_5mao_IBUF),
        .O(i_btn_5mao_IBUF_BUFG));
  IBUF i_btn_5mao_IBUF_inst
       (.I(i_btn_5mao),
        .O(i_btn_5mao_IBUF));
  OBUF o_refund_OBUF_inst
       (.I(o_refund_OBUF),
        .O(o_refund));
  OBUF \o_seg8_OBUF[0]_inst 
       (.I(o_seg8_OBUF[0]),
        .O(o_seg8[0]));
  OBUF \o_seg8_OBUF[1]_inst 
       (.I(o_seg8_OBUF[1]),
        .O(o_seg8[1]));
  OBUF \o_seg8_OBUF[2]_inst 
       (.I(o_seg8_OBUF[2]),
        .O(o_seg8[2]));
  OBUF \o_seg8_OBUF[3]_inst 
       (.I(o_seg8_OBUF[3]),
        .O(o_seg8[3]));
  OBUF \o_seg8_OBUF[4]_inst 
       (.I(o_seg8_OBUF[4]),
        .O(o_seg8[4]));
  OBUF \o_seg8_OBUF[5]_inst 
       (.I(o_seg8_OBUF[5]),
        .O(o_seg8[5]));
  OBUF \o_seg8_OBUF[6]_inst 
       (.I(o_seg8_OBUF[6]),
        .O(o_seg8[6]));
  OBUF \o_seg8_OBUF[7]_inst 
       (.I(o_seg8_OBUF[7]),
        .O(o_seg8[7]));
  OBUF \o_sel4_OBUF[0]_inst 
       (.I(o_sel4_OBUF[0]),
        .O(o_sel4[0]));
  OBUF \o_sel4_OBUF[1]_inst 
       (.I(o_sel4_OBUF[1]),
        .O(o_sel4[1]));
  OBUF \o_sel4_OBUF[2]_inst 
       (.I(o_sel4_OBUF[2]),
        .O(o_sel4[2]));
  OBUF \o_sel4_OBUF[3]_inst 
       (.I(o_sel4_OBUF[3]),
        .O(o_sel4[3]));
  OBUF o_sell_OBUF_inst
       (.I(o_sell_OBUF),
        .O(o_sell));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
