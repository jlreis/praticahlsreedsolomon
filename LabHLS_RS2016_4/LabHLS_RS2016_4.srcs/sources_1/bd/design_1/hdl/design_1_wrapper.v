//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Mon Apr 16 17:21:36 2018
//Host        : DESKTOP-00180EF running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ap_clk_0,
    ap_done_0,
    ap_idle_0,
    ap_ready_0,
    ap_rst_0,
    ap_start_0,
    c_0,
    c_0_ap_vld_0,
    c_1,
    c_1_ap_vld_0,
    c_2,
    c_2_ap_vld_0,
    c_3,
    c_3_ap_vld_0,
    codeidx_0,
    codeidx_ap_vld_0,
    d_0_0,
    d_10_0,
    d_11_0,
    d_1_0,
    d_2_0,
    d_3_0,
    d_4_0,
    d_5_0,
    d_6_0,
    d_7_0,
    d_8_0,
    d_9_0,
    survival_pattern_0);
  input ap_clk_0;
  output ap_done_0;
  output ap_idle_0;
  output ap_ready_0;
  input ap_rst_0;
  input ap_start_0;
  output [7:0]c_0;
  output c_0_ap_vld_0;
  output [7:0]c_1;
  output c_1_ap_vld_0;
  output [7:0]c_2;
  output c_2_ap_vld_0;
  output [7:0]c_3;
  output c_3_ap_vld_0;
  input [7:0]codeidx_0;
  input codeidx_ap_vld_0;
  input [7:0]d_0_0;
  input [7:0]d_10_0;
  input [7:0]d_11_0;
  input [7:0]d_1_0;
  input [7:0]d_2_0;
  input [7:0]d_3_0;
  input [7:0]d_4_0;
  input [7:0]d_5_0;
  input [7:0]d_6_0;
  input [7:0]d_7_0;
  input [7:0]d_8_0;
  input [7:0]d_9_0;
  input [15:0]survival_pattern_0;

  wire ap_clk_0;
  wire ap_done_0;
  wire ap_idle_0;
  wire ap_ready_0;
  wire ap_rst_0;
  wire ap_start_0;
  wire [7:0]c_0;
  wire c_0_ap_vld_0;
  wire [7:0]c_1;
  wire c_1_ap_vld_0;
  wire [7:0]c_2;
  wire c_2_ap_vld_0;
  wire [7:0]c_3;
  wire c_3_ap_vld_0;
  wire [7:0]codeidx_0;
  wire codeidx_ap_vld_0;
  wire [7:0]d_0_0;
  wire [7:0]d_10_0;
  wire [7:0]d_11_0;
  wire [7:0]d_1_0;
  wire [7:0]d_2_0;
  wire [7:0]d_3_0;
  wire [7:0]d_4_0;
  wire [7:0]d_5_0;
  wire [7:0]d_6_0;
  wire [7:0]d_7_0;
  wire [7:0]d_8_0;
  wire [7:0]d_9_0;
  wire [15:0]survival_pattern_0;

  design_1 design_1_i
       (.ap_clk_0(ap_clk_0),
        .ap_done_0(ap_done_0),
        .ap_idle_0(ap_idle_0),
        .ap_ready_0(ap_ready_0),
        .ap_rst_0(ap_rst_0),
        .ap_start_0(ap_start_0),
        .c_0(c_0),
        .c_0_ap_vld_0(c_0_ap_vld_0),
        .c_1(c_1),
        .c_1_ap_vld_0(c_1_ap_vld_0),
        .c_2(c_2),
        .c_2_ap_vld_0(c_2_ap_vld_0),
        .c_3(c_3),
        .c_3_ap_vld_0(c_3_ap_vld_0),
        .codeidx_0(codeidx_0),
        .codeidx_ap_vld_0(codeidx_ap_vld_0),
        .d_0_0(d_0_0),
        .d_10_0(d_10_0),
        .d_11_0(d_11_0),
        .d_1_0(d_1_0),
        .d_2_0(d_2_0),
        .d_3_0(d_3_0),
        .d_4_0(d_4_0),
        .d_5_0(d_5_0),
        .d_6_0(d_6_0),
        .d_7_0(d_7_0),
        .d_8_0(d_8_0),
        .d_9_0(d_9_0),
        .survival_pattern_0(survival_pattern_0));
endmodule
