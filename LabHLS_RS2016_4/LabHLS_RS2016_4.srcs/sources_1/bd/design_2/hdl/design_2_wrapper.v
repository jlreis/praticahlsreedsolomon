//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Apr 27 14:55:46 2018
//Host        : DESKTOP-00180EF running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (ap_clk,
    ap_done,
    ap_idle,
    ap_ready,
    ap_rst,
    ap_start,
    c_0,
    c_0_ap_vld,
    c_1,
    c_1_ap_vld,
    c_2,
    c_2_ap_vld,
    c_3,
    c_3_ap_vld,
    codeidx,
    codeidx_ap_vld,
    d_0,
    d_1,
    d_10,
    d_11,
    d_2,
    d_3,
    d_4,
    d_5,
    d_6,
    d_7,
    d_8,
    d_9,
    survival_pattern);
  input ap_clk;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input ap_rst;
  input ap_start;
  output [7:0]c_0;
  output c_0_ap_vld;
  output [7:0]c_1;
  output c_1_ap_vld;
  output [7:0]c_2;
  output c_2_ap_vld;
  output [7:0]c_3;
  output c_3_ap_vld;
  input [7:0]codeidx;
  input codeidx_ap_vld;
  input [7:0]d_0;
  input [7:0]d_1;
  input [7:0]d_10;
  input [7:0]d_11;
  input [7:0]d_2;
  input [7:0]d_3;
  input [7:0]d_4;
  input [7:0]d_5;
  input [7:0]d_6;
  input [7:0]d_7;
  input [7:0]d_8;
  input [7:0]d_9;
  input [15:0]survival_pattern;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]c_0;
  wire c_0_ap_vld;
  wire [7:0]c_1;
  wire c_1_ap_vld;
  wire [7:0]c_2;
  wire c_2_ap_vld;
  wire [7:0]c_3;
  wire c_3_ap_vld;
  wire [7:0]codeidx;
  wire codeidx_ap_vld;
  wire [7:0]d_0;
  wire [7:0]d_1;
  wire [7:0]d_10;
  wire [7:0]d_11;
  wire [7:0]d_2;
  wire [7:0]d_3;
  wire [7:0]d_4;
  wire [7:0]d_5;
  wire [7:0]d_6;
  wire [7:0]d_7;
  wire [7:0]d_8;
  wire [7:0]d_9;
  wire [15:0]survival_pattern;

  design_2 design_2_i
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .c_0(c_0),
        .c_0_ap_vld(c_0_ap_vld),
        .c_1(c_1),
        .c_1_ap_vld(c_1_ap_vld),
        .c_2(c_2),
        .c_2_ap_vld(c_2_ap_vld),
        .c_3(c_3),
        .c_3_ap_vld(c_3_ap_vld),
        .codeidx(codeidx),
        .codeidx_ap_vld(codeidx_ap_vld),
        .d_0(d_0),
        .d_1(d_1),
        .d_10(d_10),
        .d_11(d_11),
        .d_2(d_2),
        .d_3(d_3),
        .d_4(d_4),
        .d_5(d_5),
        .d_6(d_6),
        .d_7(d_7),
        .d_8(d_8),
        .d_9(d_9),
        .survival_pattern(survival_pattern));
endmodule
